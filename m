Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BC181F790C
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742247594; cv=none; b=I7PToc0um5AJ6IrkB3jQvQqccTPSz4fDTOxyXsCRpWzNCAvY4gCmGADf8Jm3Qlhi+o/bXuM9hd/3GKiIRUojqKoYpl0RyY78rA/HoNHtnGnDM5gFWFXapaWMP/b7z/pJ1Hha6OebGncdgqYm53GqQJlWl6/J8gKx/XDYb7IcHi0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742247594; c=relaxed/simple;
	bh=VhOd+DDFr2VghwLQDIFKLDMbf/jffkn+0bZEw0hMG0o=;
	h=To:Subject:From:Message-Id:Date; b=bIflwnsBa+a808cEWMba2G3kEOOPFDv08QVclIAxqKp105l2WZjVuzvpVDaXDDHUDgNpnAS0ihR7/WKgVZkKrvfLks39ujuQam2R2nVLxr2Gy4Pcl/UVjGL+g5CpxxoF2JVS5B7wdK/yzkgbJMob4lCftyh6svQzScWZ3jASivI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cj2lV2zp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cj2lV2zp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB2F0C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742247593;
	bh=VhOd+DDFr2VghwLQDIFKLDMbf/jffkn+0bZEw0hMG0o=;
	h=To:Subject:From:Date:From;
	b=Cj2lV2zpxvzwt2rymdBaga70kx5e36EVc8hjAUwvQLz53LvBorJ0ZzHRglH+4e8li
	 fBn7wYW0gFT2G9ZTuumE0zsbti9DdTT8DeTnX9mCLmUtGsWW6duCFH4ZMieRylwova
	 zeI4EDIU9fj3ByxfSAzYZm677cRkil+OaZMO2ZmnwWy/NzXzMuAG4MPULpu/PKpCSd
	 TB/X/+tbeKEPmPPJ2BIweiKfVKEwdmlhemjbEH2WxSFlrHHFDJAJ0MO1rssgf7GWno
	 4EUw2f6ZXezOvi2xYsTlBMHEq7i6tFi0G8w1YOOicVULSkszGxmE8RqMz1PQgKD4ai
	 g1FpmVqO+RT0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB38AC282EC
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174224759368.317.4325110669905788267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8acba2ae1059cdcd198d444ff7a4b81ff7bd25b90e4aa719044a928052b6408
Date: Mon, 17 Mar 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742247593
