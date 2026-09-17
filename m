Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 458624E3236
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 16:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789662034; cv=none; b=g4t2UlUgbpcq1/JxnBfRYud/IJYHF0dKzBimgX/gj9BlRHJAZ/xFBXd5ZH7Fsl8FVBoQvfkRNCH5K+JstK4hmMJDVb21Z0oiVxcJMeOYPIUiBsP68CfrD4W71RvSvc08XlkyE28DtWiOuvPt2X4r8N4KE/QtxuwhU0QNteI3o1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789662034; c=relaxed/simple;
	bh=CmIfWTM6rCVsb/4tggAaRaIfvL1ArUpeLj7gY7z6XVw=;
	h=To:Subject:From:Message-Id:Date; b=m0q10+Z2JJtrWnfEMas/HwgR4huaYgiTFKQugLCAvHQSMVzVSQypghj2W+aaldkQIHY/enUvIaAeKw8qnldSjz31/keqL3NhxVGwCE9tLL6iBSj3AzHuncvVPW0pIAh2UtS4/z7+zBWY+LC/pViIdbwZMCP8EhGtwZGyNVDI/qY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uUfXR4r7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uUfXR4r7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD8FBC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789662033;
	bh=CmIfWTM6rCVsb/4tggAaRaIfvL1ArUpeLj7gY7z6XVw=;
	h=To:Subject:From:Date:From;
	b=uUfXR4r7Qix2PCXx4DRyJvgLJT/BSDNK+jRi+a11BCWufuvNuCyuuJj8XySkD/gLE
	 VIUWvVI5U69tkWkAkHZ5Ih8GBYP924hEZVI/BN0EPXhnLx4uZHTT+L9IkZv7gCSU9n
	 Fg1fzBoMMEELRKoDc6qtYh0cXVjuvu5pw/b+PMXyhInTUTJ8S19gzhvE1IZEGszxZ6
	 MFYOpLATOSqJsPB7fNHLAcQwtfkuwxVg5N4lnsVghQOe88o/hO0stkPpiH0u7bHvlg
	 BjyHCrxISUJQOE2WK4oVFW059JpjlOceGk4/trp8xHv8t81ceg/MMxKuZzN1mifUXT
	 oIj8JuxB2Y12g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA62C982D6
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178966203369.19177.17399254378908700304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31998e793c3d01bf54d193e6b6a25945f8a9ed6a30a4899333e5d016b9de3405
Date: Thu, 17 Sep 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789662033
