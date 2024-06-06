Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E0FD1373
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 00:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717635443; cv=none; b=e/jTm8ep7DyYV82H9jQrlDfAbey/4aHPSxluwRYaCngm6p0END+48ZAMv4buVe5oX+2sgYhjsAurjmPe1JHcaLitSTWbYxPWvlfxxX9UjUvJRsMWUUZqi1VV7UxAmp5uJFnky5HJu/5T7FK+Zj+CDoUq4ewQwqzPDnf0RaIRAJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717635443; c=relaxed/simple;
	bh=NNYbtxZNDKX/c3MI9MHG5+7xVpgwp/mjW5fyU74NtbE=;
	h=To:Subject:From:Message-Id:Date; b=nWN+awijwcxkRYYQz6SylBG+oxswBMByxZtGNjm1wHqFX4BArBBrv6lS9GqtR5l+ntPfmC7Q0jr1fMXHgs+mpfBqVrk0W4Knbxj5eQ0pWp6bOFhczsFij6+V27w7U1Wq32ZciaW1PSZ+wigNp4e8WA4AkMg/Wzy1MT4RyhVSZQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gGQyMr9W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gGQyMr9W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8C44C2BD11
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 00:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717635442;
	bh=NNYbtxZNDKX/c3MI9MHG5+7xVpgwp/mjW5fyU74NtbE=;
	h=To:Subject:From:Date:From;
	b=gGQyMr9WECBl+w9raz7TmDRHEqdXMsCUD+j+hu2pU5FmFo4y+fFutDgjq6KLbqwbQ
	 tH5d9rD/qDtJzGiB6YHHoLAoIm9U9gzra7uyqt9zb1r06eiNpvGgf3YaObZL0KcPN1
	 Kmx1rCusWvON4lnx0Ejn9+vNGrHU7q54ehyI94TR3ucw82ikO5HMFExbgKW94G80M0
	 p7LazdzGfQv2z9sMXNUTVaSS1cs4pwhI+jiX+vFMmSzMhbcb7OvNPJQp6o6dPlVkDb
	 ji0k0kV4Ry0Ns4OKrZD2Y8AscmXBgMFT18FBQXX9L+rWuRyftyd7XBSjjh6xtTING6
	 R0n4WFd6pPV/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2C66C25B76
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 00:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171763544277.7528.13140792614524075250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7dc4b8a770c7597b22c8d4fa783344ab5b079badc66e536c8c5d81b8f0d1954
Date: Thu, 06 Jun 2024 00:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717635442
