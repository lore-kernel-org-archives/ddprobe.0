Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 484DA2F7F07
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 00:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784939434; cv=none; b=aMtuqX7bm9Rlvm6Hj2+R4ePTPRjruolJM0FWZL0VurVJiXP91P3mn17H1KzGqtxXe+HD8iqKn259xMso3QgmGcqqHeTS5yHjeNgY1LZTYpMpmeAQhhdARzwotLijcyXyQFEzsZzk22xvUHkYZZjrNL9yG9p2SUoGjiAdrJLiqik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784939434; c=relaxed/simple;
	bh=pd2EAu/HQTR4pvAm/4r+PGUMmhZ6IDZRa/FexJKp2I8=;
	h=To:Subject:From:Message-Id:Date; b=NVs+EXwILeXegesfmnTaAVhwHnRhh01zWbueVFXlm9hghh2lMz6E+QZ59xFK7QQ/EuG7B37NbL8DJqc7xHyQmi7ShmcnIADbctK60kHhLT4VjoZW5lf9pU5u8vB67DrMWLnXj7PzoBfTe0SO3LKDD9GPh8jESa4eiBXpNW2BftI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tch5hmCK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tch5hmCK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6284C19425
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784939433;
	bh=pd2EAu/HQTR4pvAm/4r+PGUMmhZ6IDZRa/FexJKp2I8=;
	h=To:Subject:From:Date:From;
	b=tch5hmCKPjhC/NkcQ5Zu6JDk9FbNApf09EOsRRsPze4P1QeQFpFxmznYNQ7dN5P3S
	 ICuAI4jNtAeKMbq3dz+E8SyergaTINvYQzIsdBhW9+evAJvOwez8iaD8v+576nhFhI
	 ph6bQgg1XQIud5hS0siOO8RG05rgFntXpX0kNbzjfS3x5VhjYp7UvZJPtRFfd1woJh
	 6M1ZFMP1zzN7wFFY1WhrClRMrBV3BMiZ8wcuRfnX1OhtX5Fj7mevrXR2jgAD0YVTZ7
	 boXHgM5jZ1uj2My1+EkrjSCY/WAhuH3YLbHe/p17MaV67MQ8s3QOm9/EaNWvh3DcZt
	 zd02Fw4OEgT9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEAABC531C9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178493943368.10488.2938215453213281258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cc25530edfb1a0a41955ca8c4f6144ea440b00b2b1f3d298b2ea3781351b0ce
Date: Sat, 25 Jul 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784939433
