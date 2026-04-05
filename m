Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 287CF29E117
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 13:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775395534; cv=none; b=UJBlPR1DUwmedu7KpKjVj3W38wdMeDh5pwboNtvFGExwLQTcKLyroqPZurlbLko6+rqG11mkQ7HWkDxSYezh4RaV2gtWsZzEfr/9B0hmfJGVB5VfEvRyNMFIMmCoOh4y6+yVDJlhkdjOtc6jD6w8os+S7kAeIWlZfyc734gXNMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775395534; c=relaxed/simple;
	bh=ZPFyVBHZOqNlkhpyNnI2k82dCB00rdCPnmUOc9jispQ=;
	h=To:Subject:From:Message-Id:Date; b=VXSBw9PBl+MpCu01guY/YjwrJ7bzF09txsw7Rg6HkFYZCVJHZEJzYeSGaS+74xwKqWGhrx65j22W4d0u8dBzI1K4rOk0CUt5f0N4nZjMHKRybeJCWNp8V8encycigNaRiaPFAqs+2XMBMA8hefLObzNhn5i0ZlTS9OsWF51Zmuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TXVICuTg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TXVICuTg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC4C6C116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 13:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775395533;
	bh=ZPFyVBHZOqNlkhpyNnI2k82dCB00rdCPnmUOc9jispQ=;
	h=To:Subject:From:Date:From;
	b=TXVICuTgiDFos9/w8JZbkNCDrt8qFhL/QPbs3LMc8oMgSmybekW8umsEDVf1TjZKX
	 U2Mshbx0QC6LdLvbKlc3PMRkSrpXy8OwzTpK4Qn2bi3BjSDMwPxPWQTVU8dcjEbrAK
	 Pu+GrtX5ugmr1ASgx7miXhTxF4d5WqmbPZSe/Uk6zdblH0cVHoTAmtrU2cyuP4cfUg
	 ab7vy4aUkon5sPoTagPtoy1oe/i+3F2jXWPww05oz2nG0eN5gg+IGeZeqjTA+7FqBq
	 gHxN5MONaBdpfXPiGpYOszxaN9gRB6ZmP4ih0D8mBnyLWA/y99Qc9x+pWd3hUF+Y0F
	 eeBXNljdE1FMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0205E6401A
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 13:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177539553369.6386.710610140480926669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf1226adb4669c00ad2ec67cd6a1925d6d21a5864957ccdf6cae7e0e4ac2ff9b
Date: Sun, 05 Apr 2026 13:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775395533
