Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47B34282F0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721507754; cv=none; b=FMtt92gJljGQCwf6zUzdpzkuVr6X0SlWRpDgh9+o4pAphzOrnOqr2ri0gVvACL65MCBRN2tE03lci45Ij4mMWTkTL1jnkNdNqbAWB4xMSK/SkO7N2ECUD59kCcL042ahb92UQMZkUMOI+NrY+ocTVB/8asr0wxB85VcOQMZIiiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721507754; c=relaxed/simple;
	bh=UH5rSVjj714bViGZCn5KDBQLyzL6gC0aEpQ7wYovdmg=;
	h=To:Subject:From:Message-Id:Date; b=YahXdabVjVIyNjiM8aiS5QZOprhBaK+s87Fxm2FDL21dT19dc5GVCAAeme3O54jOU0JPR+RKVaqUQkRxfDIS2l59daCAixK6OJ5Hs4JJGCEt0eShAIyDLDmRhLGPBlM0RkT88/Y6CHU+w3JaINCUbMZ/DlscJq/cZFVbr7AxPP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JXWySbic; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JXWySbic"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C714DC2BD10
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721507753;
	bh=UH5rSVjj714bViGZCn5KDBQLyzL6gC0aEpQ7wYovdmg=;
	h=To:Subject:From:Date:From;
	b=JXWySbicTbh8VLL6Yx9TzNyluoSW2H89LG4QQ0dkFI6NOuHXROxocIwHI8ZMGspUa
	 h2Bj7C6zZvR5tbMvBJvqg4S8eB9oduKFE64ErGOlffKgJ6mor5xuqVr1AoJsYsFw3i
	 PsU97ImG8TV37wN4FCa6UbwrOKFaZ1IuUf62rPX+LL/QIZv6w7HyYcGjrnnEXHCtwn
	 Vr7BCDgeIZWyeG1tF9P7j8pJJ/v9WELsKf1DCnVkNmcurKeWMdDeLqrC5f1X8G2D/E
	 rX5GnRIyX5i1j/W5hNlwkHknr5c6ia3G/98GCfHPfV9O/I6YJfSpRwtu/uIcjlwobp
	 llJsY+gNbxMSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1343C3DA59
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172150775367.16138.14665165780301789352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5edd3d1ea188e57754f3bf61d1dd71384bdf305fedd21efc98cbf11bce825f64
Date: Sat, 20 Jul 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721507753
