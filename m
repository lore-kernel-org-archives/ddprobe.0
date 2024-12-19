Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3083225785
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734624354; cv=none; b=qo+rppUA4kbple0DSU9x0zWxsCFZv5yZEsJbiW77WIwOElSjh5rqQ/ovrvNGUla80cJ+KmH0tJ56roRYidg0D09b0dkAHgMbnaB2s11N2ebGFN+o7fbn2WpGehZJyOEYBshs7qCP+CrRXRmGJ9uXt9hN6XcKkuHqyJVCE2asP8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734624354; c=relaxed/simple;
	bh=J6V4otiK7dwT34AjiOVatKgVoXmMOEbOT34HpeqySs0=;
	h=To:Subject:From:Message-Id:Date; b=dDsm0W2SkYRfse/FQx7AhfUdBeU6m7LRsdF8O1dt6arViYR2C91fNH4UNDx+hWkvIIzL7HVmza/9jaTawXzVDzB5Krt1iM+LbVDq18ydlTVnP4QBeAANLPj/7K+8/y/AMnvQm8rip6FJMEo90wG0mbIW4xvr9/UFkld7ZNeVfSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eLrTFS7V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eLrTFS7V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 98856C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734624353;
	bh=J6V4otiK7dwT34AjiOVatKgVoXmMOEbOT34HpeqySs0=;
	h=To:Subject:From:Date:From;
	b=eLrTFS7VVjbBnCVTppFH2nvmhoCNuTD+rc00QgGS0kqcOk9GohjpOoodARPxBsKhk
	 v/XtB2h6V4/7n2ar7cKLf04we7zGR+CgOjoXKKXQFob0+6Exdp8o8PACfoDypfSt1i
	 0KcC+fVa8SIQhmEdDM1p4zka3COCuEEbcM3uXSbUCub0QT1mf1Cs5xmLikoa9+Ucld
	 yhIw1xBDfCPWBlBJRewEzq2HxHuYYog0apvKxa9VuqvLN+2Uic//PkuEER09tfaal0
	 H2QMTLtc10GZ/CWJ/Kpm4siVZXR13/fTdczika/x4Y1E/ZRKPEyn/Hw2HBsUDUSttW
	 Fb8MkJSKjeNJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9012DE7718A
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173462435358.14666.12560944159528689228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0fef5891850b95c5ec62dc81194bea6ffa4437807bf489a63c876bdd08d4351
Date: Thu, 19 Dec 2024 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734624353
