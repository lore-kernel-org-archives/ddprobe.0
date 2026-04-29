Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 332B63AEF5F
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 21:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777497454; cv=none; b=rsHohQ0hUXpII7Ie/GhuYY8u7NCijAK1BCmjnvakKUcY1beCoYDGZE9+Le1LTgUVG+lrjO/Otz+5mZmTJtGXaGhf3dcGCGwrCaa3LaqCg6DJfN8wK40LM8Tn7xUpEYFrK0d+w65NPUXtnO7HGa7fpw+AOngfbu1EFXeOusUdRmY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777497454; c=relaxed/simple;
	bh=+/KiNtwlKBxUPd/hnRjoATL3JWvx60itnSIinyyi3zE=;
	h=To:Subject:From:Message-Id:Date; b=A8CQ/h5oryDXEEAoZz6ZN2SNrnW3yWWzd2l9qulCviFLw2GFJ3s4zAFOYQy/hbwKKR0kxV/KHIAzmCIryJrmxwf1hc570Td5neTy7o+8xoMWfrCm21mlxYoFYPQpGsaa0AhcVKGdU4gssSL8sdWoOh7gt7XAdv4RRdYs8xeBQaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JUcDKWL0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JUcDKWL0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B91EDC19425
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 21:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777497453;
	bh=+/KiNtwlKBxUPd/hnRjoATL3JWvx60itnSIinyyi3zE=;
	h=To:Subject:From:Date:From;
	b=JUcDKWL0pumYimfyd4moGLiaWZ0o65+aVasS3JBdfh1ouqcp/QsdJZwD/nJDjcZrq
	 UtjGDlvM2j2PXd+gYrCPMqqj9n3Q/OWZjeEe45yLIPPVsc5MRUT+pGwOJJKrkLGkjt
	 iV1HYjYRoZvJ2EuKhwxuNAtf+q/2AauODRDn85o4kBDMW9V4D8LJc3M3Yvo/WzwyW6
	 /VudrXSEBOn7ShE+VkDMJXXIFy+VXrsMV4bgbS2M3Xlwmu/EBzWTAMHpk87JOjvtMq
	 jzxke2+hPb/0bsAuWvy0dP80ywgm9nmSv/wRu++3jQRMQQr56uq9J/xyjM6Ramv7L0
	 OfSMJf7LOii/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA540FF8873
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 21:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177749745368.19911.10783832042020096170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96b895edf2f543fb8633ea373766af1b9ad2c2e12a7ee47b22a3dc7ae960e60e
Date: Wed, 29 Apr 2026 21:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777497453
