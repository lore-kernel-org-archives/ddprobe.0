Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F75446BF
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742950794; cv=none; b=XAA9iOjvFBjVy/8g9rCdFzEWVnKxJR9mIb6zcPBgkIO2XzQDH5URAYZsNoTx6/705zbABTrkHgvmR8SF+8+D8QasImpLZQzKzfGXZxpEUTN95mKt1hpsBXUpaECjvbXBuUzYzzkYGP95a9j7xT93c4iGW41Bzaugtj7PLp/uFUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742950794; c=relaxed/simple;
	bh=Q8IFU1eFrbXYuKeMZXp9CgGErwrupE5v0whHjQoxXco=;
	h=To:Subject:From:Message-Id:Date; b=oSqSwNgXfzWbP1WvAwbmfBvWgTYPSNj/gsDD2nQcgvghr/iYOt1pQg84QkNy+RhC177huCV4WTVaiEvrWTTRbuijR8VY5ko2bJUcsb+t39jc7Vm6g0+W/wWgRJYakD3mI50AVnc3OJzYAdxo/u4Tk2O/CMpMInsnXK+EtKl2t5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W+aV/sAe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W+aV/sAe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6C75C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742950793;
	bh=Q8IFU1eFrbXYuKeMZXp9CgGErwrupE5v0whHjQoxXco=;
	h=To:Subject:From:Date:From;
	b=W+aV/sAeoj3QcQ6YrdRUgvhTHElaraUrbYVNhdVzZjYu5RxGC7Ch9kNH2r4w6iTWS
	 vzLjIqaFVUOFAG8N9VVaiFEXC4GA3OsgieE7Fdi8ulUUKVB42y863GdsCWHI06c2ob
	 y0VG4LgVmA9WxjrUiIJKGna28uNnCPoALPQIaQzfc0tQd0QEhZxu8LvxBfcMkG+35j
	 qmIyZ7D0mvNUz73tWbTqsXIpjSEEi/FfLnySD+9rhYsWp/MNa8f0cRlJoWqRTWYdmn
	 uekimQpbRU6TqUr508iZrsVux20vrmJIUZHBKAjCqZDir/G6MlDxUSzNE8y+k1mT5j
	 YH8yD81zgiaIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DD72C36005
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174295079361.28172.7792985961117280695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f11f8fd6f19f9c2fbdc70f29f54b51448d1c9b0221c6d378058d5ead2bde88f3
Date: Wed, 26 Mar 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742950793
