Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27F723D170E
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 21:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788990036; cv=none; b=tzUBu6KEpGao34HIu8YbIxM4rxxCuNV0YN5dEpt9MD/IWBGG3/SfAtzzJgE8PSdXyH3vuaM0lltuWreLmVt7TkaGH4JNc36pozrNLHcj0BRaT/e9HW3qpSzC9tvgxUjxfbe6yzoUyP36KWJhVC9sYUcVMo8bbFWiumpZvePBM7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788990036; c=relaxed/simple;
	bh=hX5B57ESHL/F+YtfzJexjEl2ItFv8Hk+rkLOvxudskM=;
	h=To:Subject:From:Message-Id:Date; b=RGLvDIZnRPvnKT38aORxFQRQeDPKD/tp9aCsK7EFQjbow0Sz7uCNt8krNIKD3WIGIuKVV1w+lnGEao2H7/QAnW2pK5E6nx7zfWtDZZHZ1bfgdGZZJXw+Ao1q4swUQosSama+9ZudI0vPwhEkC3Uep7t3mn8AvpVqA6Za3d8xIjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tDxGeLaW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tDxGeLaW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0DC2C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788990033;
	bh=hX5B57ESHL/F+YtfzJexjEl2ItFv8Hk+rkLOvxudskM=;
	h=To:Subject:From:Date:From;
	b=tDxGeLaW8MPv0NRZkkB0LjUhhvh9N67cCJCo4J7kf7EZO8S3xypaQvm7bnCrT4Qyf
	 re/p8clORH59R0jbJ4Dool8miycUAztKQNUB00FBEdwvl83njJWVfXVnHphtXRj0hD
	 8hqMNvK6Bg93XNwg2SRGHjO+gadCI//XIpuHzPWO0pRdTkuSAmpR7wZ43UFPDLOKjv
	 zJEPQ9QqpxuNduXF2Vbt9U3pnOSLrL7K957rmVlZjL4CSitFaE0REx4E19eCCzAvzM
	 Nr1T0ikBXAZpE9tcFfrs6MkBQCXtlGE1hukqz1C1FqlnGdNBDPkzYu0nTGRDKEbjgJ
	 E0rTfN2oDNjTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC366C79FBB
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178899003369.12729.11416565924350907941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc7d12a216f15d21ba264db345f9543b09371f146f0f562c4a2a49676749bac1
Date: Wed, 09 Sep 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788990033
