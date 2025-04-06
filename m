Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4327512B71
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743903595; cv=none; b=KituUQb2mHrwNnVyw7PndQx7O9hTsHM3EzIHrMEmM33GCibFxgnSathzO3Kjvi2hqosnBU+AKM9bBTLU9MLhiwWARJHZJNh+QzzomudZY+YSxWAoqv/Y9zHZX1nHMFNJCZGvSbFYnk4c+yPVhO1+Mf3cv5Q93VWs5XvJ8KZSuEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743903595; c=relaxed/simple;
	bh=dSjwSSj8Gs57tSG6T8SHR6D6nGtpXN55MXFy/7Bqrf4=;
	h=To:Subject:From:Message-Id:Date; b=l6ZLb1wDdkbwBzg1mXdtW56oIthT9QLDpWn4qk07W5iU8bvSfynu9Mp2VXRw2VFRVZBhs90DdWi+jS0zW66u5h60ZEvYChtrWqtbtUkEEtCx3uG+LF55uhcPle4tUORG8h1UINKSAaAIIa8KLPJXf61OQsV+XFOzG2Nav6fXdrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lcnFFG79; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lcnFFG79"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA34BC4CEE4
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743903593;
	bh=dSjwSSj8Gs57tSG6T8SHR6D6nGtpXN55MXFy/7Bqrf4=;
	h=To:Subject:From:Date:From;
	b=lcnFFG79WPMs60ZDiG2AlOyk7sGIzCMDPvEAEYYQIuJwMNNDtA/9nvTJqnDXII5lE
	 6PoL2oK6JZzzsZp/aN+vmxxtuR4dj8IdYbiyOSP6rWh9WHORN5LVs+kjvUBiH1NrzG
	 V1g8KSwwdJsjdxNvmt1R26fKyc1fNohjEWT0vfHGp3HcgubeZvuTrfmC5KSrFRhyr7
	 9B23xDXeDfVYW5q69POdM2jldOjNttbb3zlCZTl0RYaz2/J+hYZEcC0UBsM2x6CUgR
	 GC+GMeK3DxozK2hgG2g94NDsWuHYUBpyOxhOgaIZUEE/hzGWoaKgl1XEiq1S4ed59G
	 suGKFizn6QZLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947ECC36010
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174390359360.9800.14882928917523309987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bda480b9bc9a8fd29b2bb833ac0f686445f4bdc4a780c8f10eca646a3d0a8a0
Date: Sun, 06 Apr 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743903593
