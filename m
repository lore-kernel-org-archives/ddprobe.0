Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33D14299937
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754760595; cv=none; b=he0YAQ4Hbq1oL5tx+0wctjoX8GCd9g02em+4kP4xfRLyG0g4wDyIcv8Qu4SVqVK7QyblnIzTa9MFrVXtgggvd1hklqJzRmHiBkRcm3CCTfPO2A1xmMGMxDS41cfHc5sEzKNP1Kg2KxXXay72jYQgGmJ/1CqdjWdxfcfPQic/j+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754760595; c=relaxed/simple;
	bh=7oTZMk5oZRZvp0Fh2MIGvyc6D2oL2LQWLc2nLgFXpks=;
	h=To:Subject:From:Message-Id:Date; b=gPAD8wWulnEMA/B2vEO8TRT/o12c6/DxB2nWahVU0JmTbSUZwTdRA+jLwYt+JupyO9akxsF/iTyE3Ezz7EDg6RYPFmeEy8jT/cI3hpg/2A/7UYgavMzjwtVoYYcWY2DySipR+o1mQU8vZH+rtKcWC0YpBaQ+nZ9Q3qiwIsrdjG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XzoEhZiO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XzoEhZiO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3453C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754760593;
	bh=7oTZMk5oZRZvp0Fh2MIGvyc6D2oL2LQWLc2nLgFXpks=;
	h=To:Subject:From:Date:From;
	b=XzoEhZiOGgE9cc4CBgs+WGB/lXBJKU+R5RpCrB99xp8HthEzdcykGrhCGXENCKEyC
	 CfPXcSF9goATudY7VhP7KwdEvDWQZcbDzlDDzTfaVeXcfRzxugEbwc6HnaY50ne6ow
	 GkZCkHAjm8tedgSJSZiBmxTTFMwLWTRQ4dGJaX2IaET7p6FdO/BqSFoQdI4oYaBlpv
	 AWrW59dFLbhQ5gdwQLEvfTUjlngpY/Iz7XbxKYV8oy8UPbjCcQwd36DmzvU/+c0x/F
	 J2VO6fT5tbLVhuq2pHnrEGnaL300gdn1qEOUwKK1ux4xxRriJFTarmgg8Whc5cg7Hw
	 9S7iLAopbefGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928FEC87FCF
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175476059358.23049.6629139422173722297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 594e36f5df05ea2f9a97b7883701889c19ccb0381f0376a6e861bf38363ac92c
Date: Sat, 09 Aug 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754760593
