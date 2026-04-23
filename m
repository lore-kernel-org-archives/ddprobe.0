Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 200AE3DEAEA
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 08:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776934654; cv=none; b=Mr1Ps5fXZ4c5jd5IPaGlIe/cQ/NzRqJUi93+lMKkGZK6V3MAG20na5us4QIlhnFAmB35oVi1gzXoNF2//6Gfy5R2ToLSHZPo4PTC+eMFclOdv/MAdHeT2jqvA/P9l9KsfRWdOloJqi9830pBzUEAQCXzu7dzAvBinPm1paHgTY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776934654; c=relaxed/simple;
	bh=XwkEFdO3Yigag9m11f3CZqofCJo5g3Pni4+RA35S2xs=;
	h=To:Subject:From:Message-Id:Date; b=ugLMuddRCMx/IuTIH7NodWEvDxtolI+0awqD2ecxLVapogvuulKhkQyjNI9iW9MOXJDrDBWEp478kpUz+Slc8hfXTDPCKBfRKLIa7HW3oLxTRRXb2qczUoOHp3+GXLpSyy3SEnIEe8X0Lf+CF1IBMp32sWebByE8Ou5rZT6OdC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qsb6XsPi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qsb6XsPi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B843EC2BCB2
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 08:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776934653;
	bh=XwkEFdO3Yigag9m11f3CZqofCJo5g3Pni4+RA35S2xs=;
	h=To:Subject:From:Date:From;
	b=Qsb6XsPiUFiLqlLU2+L4QM04KhT5kSNY8SeA/x1uWIK/B9NLSz9ukt4wsKqk64rth
	 kNAAhiZ/0QExXvZvrKLZOndTwry6sKBQvhCZO6+71Bhn6PYCyVQd1CfekZsNjITmOa
	 5E1nqquWNGu8+IK46LY/UBH/vIWu0nMlfvrO16A9dg7mdfvMrWZ3P9e4Ta68p4o5d4
	 MzAi07pk4we5e5y5xl3widCpqhV3aIy/fVB1Y1MaotDRkf+7wAKE/szxapQpRyrKIm
	 c53QWt8caFmz98k8thTmEu/BmSLt8ZSWrIKHz6FCFTLzaaMLeynDQGNlbBxnjHbBN1
	 D81vLQGxToVgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A998EF99344
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 08:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177693465368.9855.16468571821650304172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3991bd440d27eab67e4fe0742e4479b2f3bb8a2e26ff5eeae8e13bb4d6fe972
Date: Thu, 23 Apr 2026 08:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776934653
