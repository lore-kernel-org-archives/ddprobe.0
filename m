Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2E481E3DCD
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759874994; cv=none; b=Q/zvJ5jGVtiGKHVLwFotN9P3q62bvYocgDELcOSAA27RhYg4P08yut3wVd7RYrHnuZioy/ueDmUPeEXJiiSFY5ohP7kXdhcxuMHJKBtVVnv+Dn3ZR//pOIUclU26iHF2RQGv48fjIPmK8iVWNttBux3vI4lg8ilLsqcfkSZFx2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759874994; c=relaxed/simple;
	bh=YSvvcGPD+fCYObYVVGiEAOWb4kD/FikDaL+3lrizG1c=;
	h=To:Subject:From:Message-Id:Date; b=ada85vSCZw405u8tHEQfr4CcU6Y2S+pfLh2cEKV51HaLY+TjBJ09lPAazTMTLVp6F4N3jdb/YsyZjwjOpkA7w63lBfAFNPlzEIj/ocuWIIQsMqfZQ8lSnbUESOVJLEWCVGdGsCDlpSdzJHGf0ejM68fxooCqWcE8qa8ftnHOLqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tsuC+JhN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tsuC+JhN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F200C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759874993;
	bh=YSvvcGPD+fCYObYVVGiEAOWb4kD/FikDaL+3lrizG1c=;
	h=To:Subject:From:Date:From;
	b=tsuC+JhNbRMlIpyOf4S3o6PWakSNiOVVKEd1lhVagJe5YDZy2OKZaJIQC6HKM1ZqO
	 JUyNGpAhWKH3hcFCq0fYa5TDnDeGf5BQV3UZbH3ylH0ORysVervhh7SAICFrKPddig
	 ByxSLsHNb//UPkr87CU58cVUPUGRMEaB6lAjfhL1xW7fy2fWaXeGgqPMUwidDDdlBi
	 GbCGrunWPVfy8XHdRL9bikWOxZFhKbaIdgHVjINdpA4u6Q/nLrIx86O75GyG5YrOMu
	 ts+UqWWPzAmRmSxFSImGPsOkNzjxnSfv+7ODbE0gaS07tRjzGNUcZ7JYT0Vr6FCx9D
	 FqjqK79cZ09gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE4ECCA476
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175987499357.31167.14380622627634476385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fe168cdfc4f842ecc9a719072a5018f8945ba850fc22f78c5a32f0517d86ef3
Date: Tue, 07 Oct 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759874993
