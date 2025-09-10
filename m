Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 208FA137750
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757474395; cv=none; b=cICFbuFzeDC/yjSVuBffGgR4LQtK3Hp1ZseS5wdkPqbe52vTqoglYWKGZILg2VKCdw1ZgcQi8YQml+l+xqEBzf9LkG4nLGFa0gmlldsSb09G+zHpHwIDQ68lF8J4FHzo8HrQjjqrxJe5T6cJBNw/HKQoVq0AUjzQ394TdVkrvXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757474395; c=relaxed/simple;
	bh=WXYv4jhxs3QD0m5v+PkQDRT8TXsQ8gTtmBVDRpPm0do=;
	h=To:Subject:From:Message-Id:Date; b=seNaj56eG4nSUm4Z3xaBRs0XhL0PKzj/CvCA1RxBfz3lV07y8uj5QqJukknIcNyR/yhz/ZVdUHUYXXMJzv6YGYP+RYB+mQSGbSK1HtJyqERF9xNortE01dzNK5smuRvPiuJlhGcbkvsHloQKhTvtj0KGLLzXYO29EPuUDUOozgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cGD46JWq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cGD46JWq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A697CC4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757474393;
	bh=WXYv4jhxs3QD0m5v+PkQDRT8TXsQ8gTtmBVDRpPm0do=;
	h=To:Subject:From:Date:From;
	b=cGD46JWq3AwaC+QCSop579f5exgAVarJk72DdQ36qzdpP6Od0F4pnB32awqxU9McA
	 DTcXiMXUCAYOQ17pvghfueDZZDDO1ekOiG2Jb0EnC61ieXJQUJmY9SXV7MFxQ4MDGO
	 lNwGF0W/3Fpyb3/BIqgX9mvY2z50U+cmJ67gZZK1o4o9PeeSv9HAEWpLeLtw5FYvyp
	 vgCnN3imopsZoYQOEbCmzB/vRfy8rkTdU11/dqbo6+oy/s0QDeKLT/S39HGKmCDV0Y
	 eDpxWEcOgtd707iSYrYRcArleWId18sLJK8yY8AfKO7lUPChzhkyrARIxVfyAhCXwf
	 fKAF0HM2Cb1/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917BDCA0FED
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175747439357.18904.5919781523300096972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e6233109ab363e35870c5909ad1c3bbd3b89e685b4c6b81449d49d48b3668fa
Date: Wed, 10 Sep 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757474393
