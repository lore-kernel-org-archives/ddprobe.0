Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0137D610D
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 20:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707511097; cv=none; b=ErtaH4e2dXnlMgBwzxlB82FdyHEltAC4ZM5y21YgRnCoQwLmkGyn/5HPc3TFFmTF31VFlJlabGuItDG88Bx+z37Iz1BPVVZeg4fX8PbtibU+Wp7epH+T+IyCUKpD7Ka9UUmkILHMxRkPY4S10vWDr70DSI8Q+CWZ66subeEvKoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707511097; c=relaxed/simple;
	bh=R98UEZa2DO0Ddm5gN0rVLAFZWZa7ssGxEaEx16xbf3o=;
	h=To:Subject:From:Message-Id:Date; b=g6TYztldpDTKSM6jlGQOfTGLw9M33ernmJY/GTclHEET2NDWXxvzPBeSIACESjHJFx5QCSjCIoNlEk9H5RXeQLjzw10LE9ErRQRUjkFu1w2ZB9pXVVsgSzI2Em/kPFVQ0SSem+KM8x9TuKPFiumlWp2hDdgJYw5WEocxGBQFxno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uk+qOaKG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uk+qOaKG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79C1AC433C7
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 20:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707511096;
	bh=R98UEZa2DO0Ddm5gN0rVLAFZWZa7ssGxEaEx16xbf3o=;
	h=To:Subject:From:Date:From;
	b=uk+qOaKGUrofq14udK8lmh+Qhdd/O8eqkM6PyNUhiuj9HO+vE/ESwsRZukgAkpDSY
	 60z7FH0w2LuGrmcKHBwizy7MIfxa7vUrJWToYLU29bzGXOPnPJQzT60+F7Y5IW10Lv
	 0TCc/X7i+hXmwWYtNSfnH4Fgr/oUlw+DElvKuHgNprFY9eKfdoqPiBG/fmEtha3jfc
	 gxulB4p5CvrmMC3WZQ16am2YZW7cx24ldGnrpiX1MOsslHmZl0GzmtK0wmoXH3hpmV
	 mvkPZ1k8L8sK2RlNOBOf2VAlsp2CUyrDMj+r1/1vTScutTpQteCsaqWfhDSu0PJTHO
	 Rwc/dwL3MjFWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D646C48297
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 20:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170751109637.24030.14684877079527177567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2322d25f05b247d5f562dc6f55a2f7465c8d7f0105d743f2c050393ffac910af
Date: Fri, 09 Feb 2024 20:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707511096
