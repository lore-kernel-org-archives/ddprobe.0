Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 315D88F6E
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754639394; cv=none; b=BwI3Moqffk61Z2Yi8bNWKmK5pKvSbbSLr9ZhH3zVATfpPFTt2zuuzOjL5hu6u52Vx8Z5QHnRnCrrNeazZNV0VYe6UtLj6NLxLU+A2uC69grx0rIi5GKN5zWG6LxuDAwbe7sL3T2l2mRIgzr0zeWGb1kxIBCsS2WpsgAzVp0wvmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754639394; c=relaxed/simple;
	bh=m8fP63Blwes4/TOdeVvas0sZ91rd88Q4E0/wGNqIxYQ=;
	h=To:Subject:From:Message-Id:Date; b=PoMBQPiYsa6M/1X0DPA7Uy2OLAMuldR33OVWq4NhtfDfpM7JMiFTlXmDrQuAl8zsSWfwJTSo2Rl1PVxWVq6Zd2c06ErpTMtaEVvarWTgiWFaRhb+XPos1Nqt4f9FO8XRdZP0nHOgQKBiZGKg0rQdxPl+cBbarTuib0vnWy2kGAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pIBsvixw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pIBsvixw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B76C4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754639393;
	bh=m8fP63Blwes4/TOdeVvas0sZ91rd88Q4E0/wGNqIxYQ=;
	h=To:Subject:From:Date:From;
	b=pIBsvixwdz0nG2RQE3mpzRCIZz+IE+lHUkdUEf1HVg3xB2sRZ4m2do0rqV2UMuXwu
	 +7Z1XYfxjG8jpF8OJ2gI2Xvj9zrGFPfVrcUaKh9qNvbMQPMOiOW/0HZ/ql4ksE4J3G
	 IIpcmb4lp87e8XcULJgdkeVDWrOSjSWHN7gOODw6sOzW9SNrYsJLKyjvuBT4VtU8P6
	 lofxl8vehVIQe476RsdPaTavhWrHjdhB0vcjv1RdQQ+g5oywJmHlBSqULcgLlzBXjP
	 uFN+qAMZ7jgDtKlwTXO8XLX64RhwNJ/heu3gAFdImmZ3Ni/xKa2geJgTL8KUpsoppQ
	 lJrgjUEvNHBjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0EBC87FD3
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175463939357.25414.7525273216039223368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1dcec8a382842b2cdf12b367b4b06df295d8e1be9604a10d0a7bd3233c88b7e3
Date: Fri, 08 Aug 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754639393
