Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31C082C86D
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757836194; cv=none; b=pgbW+dnCrHGkbriFG7Zc6pbWiPGmxsbZYYKWqueQVzNWJZTiEbEboMuegIL9zGligYrCcz7Zs1O9y+Cm+DTojnoM6F/7NNxhqIBSZ7jLxXsPKjhRShPYFg0A9AgV2LEhv2CFtlB8CV0PvZbaCG5wsSupdjUL961XqxLQLFOWDr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757836194; c=relaxed/simple;
	bh=SiNJBX3y3K6UeJ84/qx12n1Qw0UEn9CS3yurKiM+sp4=;
	h=To:Subject:From:Message-Id:Date; b=X4ztRtjo6ApmVTT+5v4WgQnCjoAsdiAMOEFH+xwOGBWCqezI1UIyKbQe37z4sgkBL8/TUCozREEE7wnEyqN1wm4rgluG90GBZfoycCdxP0MgLslGiS33M16A4kvOJvmaAT+sD1/xRK5r+j5IoqRTz0Q658pS2nctna1bjuiI2lI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VZqzuT6m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VZqzuT6m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C04C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757836193;
	bh=SiNJBX3y3K6UeJ84/qx12n1Qw0UEn9CS3yurKiM+sp4=;
	h=To:Subject:From:Date:From;
	b=VZqzuT6mhtGvGbXf0qdE9wyzn0HUSEcWtt9AD4JBJvHwzIe5B/Ni5Bzr9FkNMd+nb
	 4tTKhs8R4kvXxuJMudXxVpOid3FI6dspCd1dbJ3N2KnMA+ql2mOchw2NQssrNgKrFh
	 n1aHsj3JGsovzJETtPixIufBmAZsio2KLuE0i47+r26aiFFebAijhAPJMqs+fEvRlG
	 eulEVFFByozArnxUi60xGU0idZRyODPA469G4pC9qlEWPxqqDksE0SvO9Nf2qXPo6E
	 jlgbIAXWhi1gR8dtEw/TdoofRRAZADI3qu71d2MHwyW9H9J7J0p7PVdiNvRPvWiH22
	 YcVBZQ8b8cyDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948C5CAC582
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175783619357.23015.8580673072376258292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72caf6a01cac5abcb294499b595e040839b1299c357675126bfd5829aaff6f21
Date: Sun, 14 Sep 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757836193
