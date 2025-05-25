Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 372021F30A4
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748179794; cv=none; b=ojxTbtRhAJt55kwPSLso4iBKPQe9afyRnnoyHTlqtYqX0yqHUIstkcu9bD+l5rjW2mhMT+TvmvIASy36qC1sJfoR7Vcyr2z59DmCBo8sa03XUA1FaCFT/mvN4KlB6p6eovNZPC9xF7jPwYg3zYWe4FdxqlgWqeZbrABHXxhaZxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748179794; c=relaxed/simple;
	bh=CykppfAzk8qoNhXuYOeGE+aT3L19mgBUvZGG/6zKGqQ=;
	h=To:Subject:From:Message-Id:Date; b=pXLF0VCG1OUqXFWXafxR99rKCEMiv/DoD1QPazu8GYUCzPrOr8OV1QotCiJyUqXi6C4lQLM2jj6dqmkWaS7Q6teTyJ89NoNljvWRDE/VYZKxrhPrgFJp/Rr1uJsViMpdtAK8og90u/ujyFmetn0hnfkzaCiOiTyuGhjc3wjKN1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fhy3tvG7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fhy3tvG7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A398DC4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748179793;
	bh=CykppfAzk8qoNhXuYOeGE+aT3L19mgBUvZGG/6zKGqQ=;
	h=To:Subject:From:Date:From;
	b=fhy3tvG70suSnjaV4dWHh49Mp56JMHerowFhF3vBPw4xN6mFzsjIxdeQXrdrRK6n1
	 1EwQm5W1txaC33k1Lg+uUp0fs0U7EuHigrCfd1ZXpNJsHKYzCrOFfV4F7zFgqns2ez
	 5yI/2Cs5p04DN+aNVMPZiVhU4p2f7/3l1Nhsh8ALZTbEfi9hwR+Vyg1+3PEif/CAEF
	 9HP2pnUU+sY9U50/oWJPMqMbMSSLOTyENEOuA4BC+FzCEWZ45Ed59RozqaaXE+G1Wm
	 oQzBWOGRXyLMn7pi2L8+VFGthdiE0J7FTbB30t1zoF27NgKPm+XrB9ko34F1tT7Z10
	 x/3jIu7HcMsLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921AFC54E90
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174817979358.25354.927229523747784703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8325115d26d9721194720217fe5722c640441d1e190aebfecdbb2042fb49346a
Date: Sun, 25 May 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748179793
