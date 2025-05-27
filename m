Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 322A41E48A
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748359195; cv=none; b=c9nf3HlNSxBfX9+iMAJt/vZ+Zvm9iO9n3PVtS0npVbQvAfvYHXjQmS3IwtpNo58BZMyPKM4198+WTuC7mR+/vhIaVvkpeuXP3N+yhbr0GpNAi+FuX1/ErgKhhcjvvrmoO8K7/mqd81OG4exT/lF7DlUXZd2T2yEv5G8rY/fzKgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748359195; c=relaxed/simple;
	bh=cG3JYNoZybL5tEzv1xHvlzHaMvS9PMiQL56pI3T/qJg=;
	h=To:Subject:From:Message-Id:Date; b=Ah2J9PwZmPv2Z/p3634LPxVJgPlme6zvGIXI/fYiKqDCldcWk3u8GA7n2Fu8vrETKThwZt8GTbmcxa5zml8l0jO3QYmVANiLus0gY2nMA71W0SbgExGmCJ2mhiCkjW0MQtG80ksusdR9AdbZ5L7ZlHECAqei3hJqTXWw5jDUyyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mSlPXwin; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mSlPXwin"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E2A4C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748359193;
	bh=cG3JYNoZybL5tEzv1xHvlzHaMvS9PMiQL56pI3T/qJg=;
	h=To:Subject:From:Date:From;
	b=mSlPXwin2+EXfHNzcYVRGDBpRJyWY6TJHmOKee3I5X0T/9rKgibTDsHZUuYXLrbp1
	 Sh7mrje87XcRyTqj04zksTu1S3zYOzO4hGw+Lo97O6TEie7NSfeuglAmhja1fXoTJj
	 A4nnB/D8h52VZuq+fPCk5ojmMEcZgSvkUqC1ri+sAZRAKyKQchlyoInVOAebkZmmDz
	 tJaf3icn9NNb4dg9HY0v+C8dld32Nw4UFHel+xT/GZDT6Kv1ZEB7EPzEiP0Ta0tuLF
	 FZndZ60N46Mk8FQcNrN5UCgp4OLhY+S4Vj40TAqgxxuAIcHc0lBcSjNH5zE6okAf+3
	 rhgkMEh/SeU9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F652C5AD49
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174835919357.12947.4207468231709734960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78cbc04164d82fdeedec89ea88f91771345769311a3dad6040f87ac86cc27419
Date: Tue, 27 May 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748359193
