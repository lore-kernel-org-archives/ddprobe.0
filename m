Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FA6A1CEE90
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749892794; cv=none; b=LTQabfj3mEY16Z6QgHxZOq2THg9em7tf2i88kvC2IfMzzGsrXhMXT06mhSqokHdFFL9Tu7zVR9NKMlEgU9/5s1mwGPaRxfZcXbBSeV3bJ2XavNK/1vetU6zyvKpX8mfxqYe07/77wRhIOOhM+Jxgvq953l/7+xesMpZt45mjr3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749892794; c=relaxed/simple;
	bh=Fno8ofQ+o86/49aNT4wXcDuI4zg8fVJgegHOkmNHlmo=;
	h=To:Subject:From:Message-Id:Date; b=CmHUlhw3Cfvm5dFurd6CUjV10+7HmoUD/TKT1Ek8INT+SW+RqLgO5ZtpOaqrtQ//2yJkjlsRpXwnIInSMC1sLpmN+tNjrBJMuSUcF2dAZlyltKYoJtvskjSE9ZaMkJTIOYr5tfY9gkvP6d+hovHu4RWptoou3IJMROsmVITpo8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FPLtWyZl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FPLtWyZl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E50C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749892793;
	bh=Fno8ofQ+o86/49aNT4wXcDuI4zg8fVJgegHOkmNHlmo=;
	h=To:Subject:From:Date:From;
	b=FPLtWyZl9Yw3GqsZxNb7UgMNDDu9nw+AOCBAUgK6lGQCmGZeSAqwj3KxYLpeaMGqJ
	 o3Qu4FJslEf8VZW0WdeCOpeYPCgNUhPMMXN7zoAH/HdloTHomEP472y7M7eG4FAADs
	 K8zwBiiSViO+E/9u9IRNI6xm8DtmQLfFrKkA8HIwqvsbJtx0xjZg1Y9BWoaeY+eEHn
	 q9YMmmX6oB+VkrhHFneBIQqOrLresJzg4/H8JdDsPRVLhEdIZoOhaJN3OA/NiqADls
	 eP+nV9fjOj9ZW/SHNNfVDXQVhYgpRvl0cKdiyZ6WFnFSBvBNnTupvrxqxHMhRfBplo
	 nYyRNU8U9UmxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901ABC71141
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174989279358.8243.6535217814797060952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: affa1aaba2627929295c5b6b54072f31b32a274da1351f4f0fc0015f49fdaebb
Date: Sat, 14 Jun 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749892793
