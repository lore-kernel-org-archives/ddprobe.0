Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A6221FF60A
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752059994; cv=none; b=nLNUDliyDmZULHGxkirFyjkg6Tu0XD5keu8YTGRxwt9OWziNauiT6nsu7jPQYtP6tmGP/4kCphpjGvKpH3StVhkHaal+sJQtnJejUJ1Z3C9mvHiPQlYmtHeQ/dl9cOTENA2FzkrWe7X8yme1DUstntQZiWMx4O3AbWGNtMAG6Ak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752059994; c=relaxed/simple;
	bh=jGrTSz65C8RaKOV0JAtyazqQ/J+lyvqC6jTctmrULp4=;
	h=To:Subject:From:Message-Id:Date; b=fi6jT3dg9dN/yzZE7bx1/U4GGIU9xfP7wprjkKEUxIoV9iDy1tcTiVDIkTP64gl2GDOXFswknh3TCF7S4idV+b/AypID65FamrcmmUfVMi4gG4FTUVSjSVKgrnJonCoC4sab46RfUuyU4h8lF7unCAC+uDarqJgC6d8urffSFgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DexfHRu4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DexfHRu4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E21C4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752059993;
	bh=jGrTSz65C8RaKOV0JAtyazqQ/J+lyvqC6jTctmrULp4=;
	h=To:Subject:From:Date:From;
	b=DexfHRu4v/y6/Z5fEt80rTHKI2dplQQQ+sSNmlk/Uvw67puZiqI/xb32bYSVstKU5
	 Lkx6UAuQ19IMPsJAlBeaKy+rA8wzFDZomL3rcl0MtytTiOfBYbUTKtuQ6IRFx8sPZD
	 1gbFOrklU3DU9lGzSEItedTwl5COpc2HIhYt5axz63RdI/oKT33sRfNP5YQUe+N/SV
	 XtCwNit5S50N81s3GOO/ud4gURNsoo3bJs8dNn8fYelzFXeocb5t3rQjLzmiEKhKJJ
	 Vrq7fLtGuPTHuCMJ3PjRqeuUT8bo0sqzUel91GDxd4jXk7DH1wKXYFgycvymhjyZgM
	 LthWvMDE1dj6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F10DC83F03
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175205999357.13118.7659084488452147643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63d8a585e694ca09fff2485d7db8c92d5bef6eda68b2407df6133a488ca3214e
Date: Wed, 09 Jul 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752059993
