Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3768D364E9E
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 03:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786332634; cv=none; b=seaD6b+k8hnW9qPrlCBsIz14YA9Y8UIKbeJv52TZi5RzlxZZnpUmbjexKXb2ytPIG3WJwOijusCAVtZX66e0B51R/+x/sf2OpJAlZPAos88583M+3CnNWX9DSYTONIB9p3XZPMn+5tWXrCma8z55Htywh6xfg4odIrFmXRT9Fk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786332634; c=relaxed/simple;
	bh=A95i1IayTMT+HNWAfuwNVZ8Gkqd+0vZ2ec8UIT4A0a4=;
	h=To:Subject:From:Message-Id:Date; b=h6tm0xqkbOgZGHITUpviDK2i1DOHrapJcNFYvscVNRFaGxmeguGzhcc1yYRLU7kbhI2bV6zhIc4ELBqqk+lV4IWBpXJpMTx8uAZAgzOTVx4RlxSGOkejtrTmhu8U1ozsXq2yHAg+EJxGj9VzQMdj0V/hLmkhaJxkgNCD+4s1NlU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IzSvJvUU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IzSvJvUU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0FD9C19425
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786332633;
	bh=A95i1IayTMT+HNWAfuwNVZ8Gkqd+0vZ2ec8UIT4A0a4=;
	h=To:Subject:From:Date:From;
	b=IzSvJvUU9IDazObHpepMk9ymH871VWP49NX8M6t4dRZi5DaFHTJf+a6bOsxoP3A6W
	 l9+xJWIKR8f1V5OmBFglwKzeo/PubiWqrPnekaI48buXxDKwjnY6AyiMUgzX8P1eAV
	 g1bAU5d7B6rRekaaH7lr7wd0feqcU5yVTv5iGykshe7163urNsll9fxPBam4F7tow9
	 gPhr9RpKFY3rNCHaYHZN2M9e0XjYGsjiPnGxZcydqotVo6AsGGUPGNP/uiVtGyv/YO
	 1r48Sobbaq954P6lWK9tBhdEf46qAQQtJtRGgksOs2YMMIMEkNwcjlfeTQNilTJeoh
	 Fbn9VadnNi+aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB870C5AC82
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178633263369.31794.17325514526169270664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0a70b8cffa332e3ecd2afe201dafe40e23deb19199b7785dd87c614b3a0260e
Date: Mon, 10 Aug 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786332633
