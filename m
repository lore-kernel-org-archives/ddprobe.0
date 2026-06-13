Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 721D6223DEA
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 09:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781343394; cv=none; b=exRLnpafCzwuhowwpBZdPvZuJGQpvk8LEOuHnUK9MWu6qU+sNUEx94MZBt5kP3zsz6t7ifd7AxdsaGBDynKtKFp7EgGFW1KL2RH3H08yekByJjmCyReH6uOaXqsY3klOXe+Pg5KDdEi3E9T81usq+PKWMU9ei5vvszP7oetaYKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781343394; c=relaxed/simple;
	bh=StS8gejoRgdxj3plI5X3GxNjBEmki9RWxLV9UpFwzwg=;
	h=To:Subject:From:Message-Id:Date; b=lU6tOqyBSNFVxtj0UQfiHsq7PhItcDXkxJAjpezvpZ29Brqz9hwD+AGRcvIbGTeBqHJrvXZcth4QCchxpgX27Ki0mu8p1ztP/7xxSBe4KWwIS6M4IRzHAtnSUE13BaTObN9UHQ11sUiJoQ5UmxtLp8abrPMpmQ52H4SI6s1os9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C2/TsvSw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C2/TsvSw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B807BC19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 09:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781343393;
	bh=StS8gejoRgdxj3plI5X3GxNjBEmki9RWxLV9UpFwzwg=;
	h=To:Subject:From:Date:From;
	b=C2/TsvSwrJdEIwRzfs0YNrxCuBpf7/D2wMatY//sP0gJdarwzRGwcx9C68ias4Z4l
	 2wWvfV7ZN5ZC0sWF6hlTSNGRm7LQC0QPVXw6EkEah5CsKF33/YqVfQzJPCnd7/+eb4
	 cStoLIkLxLS7In5VVNXvk4ey9VsfFpM6wXiLhfTNAfgxWR9womGXM6lSuCDq3aLRr1
	 2x4lfkgx46jYbeJmoUy9lSwVmuU0OfuoXXVbJp/G5L1EeDJGz8tTSNg278TKrK9QaV
	 yavOTtl4EPi8aDr4U5i6O+AVKF2ZaiLhStktOkx9fVRyYVpsjMo79ZrhIpl2XWbUyi
	 c7OmFSAwRKUcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B36B6CD98D2
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 09:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178134339372.14509.13178799093947564366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 719a0a3984ba89b734def217a6359f66e2ce7a76b72b216bda4ff5f08fcbbf09
Date: Sat, 13 Jun 2026 09:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781343393
