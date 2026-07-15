Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 439B91A3029
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 03:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784084914; cv=none; b=ZpH5r+pbiyPy8ctcQzmGFLlheNhDpZm3/myxtT4laYWmZ4nQ80gFaA+YzH/Eg+aKZZnhFWzPY305wmikHTHqN7AcaaPTFqKXJaZjN/DuO0o6iFZD5+xD9X2mhWtAx1VVUIEftpxkrpYvB9TeIWYKeB4ch9hojW9M/Y2nlVbVt9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784084914; c=relaxed/simple;
	bh=CvwYECsNQiSTJbxP8SQtRc3e6Vq+a5x73J2Zpmm61Ow=;
	h=To:Subject:From:Message-Id:Date; b=u86BQKh5c/FL2qjd8I7tF/PmTqA+fzd/Ud2NQbQUTR0loVlNfuBwT+P8mUtK4bMFl1AUMeQRI2IsGHiD+zgJkVhu5KjJ7EUJ1Om2+b7sI+c2Z5LjYHG598lB5NWdFyfUMbY1hIb8SRmFw5eTb83s6K/0VYbPwfnzuqwAwQb4Fx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CUdIe5Nn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CUdIe5Nn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAF87C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 03:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784084913;
	bh=CvwYECsNQiSTJbxP8SQtRc3e6Vq+a5x73J2Zpmm61Ow=;
	h=To:Subject:From:Date:From;
	b=CUdIe5NnbfSrhysrVyqNjmI6X+aV4HCkGXI8+2FOunYb+NfgS3MtKtVP590Q1M2+5
	 mQ+Y+bUKdRZYVhLeWaaJWNiPq2VaVWb5MxQbnb/7cU7tG0Uh32g4WTcFoeRpalKxRW
	 AJp6liXdOg+4AGA4w1wCH//PLhk/I9wuVfUcu/BLz0/C6LsXsZ6sP4WnqSgDhxO5Zm
	 82xiLOzBeSnYVhOx3WAs0+gHa5d25k1dB0zYLbilQleS9mNViPem6ZsQA98NHqZ9MY
	 EA/mGcGr/xS4BQcuN8h6qcsj3Op/yl+vZ3nJJDn3syExMNvtvBCQBdrVTTP+yUmwep
	 hlUyEmMIRm0HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEB39C4450A
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 03:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178408491370.16429.13894719525915444678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5479caccd33a9eb57fd680221f885321d0b999e8d8e185b8734612fea2e8822d
Date: Wed, 15 Jul 2026 03:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784084913
