Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07CE73222
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 10:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705748297; cv=none; b=ViBNpIulvuWaE75uY/+HxOmmoiPe30QdtObd5AHsKWj5yeMi8CokcFdWFk+F6LkZ7REDALMhdhPXs6Pw2Q8DWdyNNykE8X1B71TN1D2TuwNexMbEdCRDPbPY2CuTD8oMqAYgrbS2KXslOo081/oZiBEAnB92t7Gmer8osdo5nEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705748297; c=relaxed/simple;
	bh=HUVOmrNBfr+ifpsYXgtPBXyheKpQ/Hcf0VwjyA6zo+c=;
	h=To:Subject:From:Message-Id:Date; b=UWIV4xKcJW4EWgNERqnNIly3FLwAujwlSE/6LSOc0FAWdWZX40mxDSqfkhkEtN6Ug0MrZVeWcLn04OPZB34yWxvGM5y7Zaz5UmU8IAF0XEod/Kce0S+TE6pmK5G7hu4aFcxgv4csg3lVKearEv0IRtZolr7RDdQYBPDYnuVHN/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HpoEXCDV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HpoEXCDV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73D4FC433C7
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 10:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705748296;
	bh=HUVOmrNBfr+ifpsYXgtPBXyheKpQ/Hcf0VwjyA6zo+c=;
	h=To:Subject:From:Date:From;
	b=HpoEXCDVkdiuURMLhp5AJ5yOkMEN+Nms0EFo8wconDdzU08C5cDFdK1VYHAIH3vhz
	 QhFkVqhr2fNcgC6n/66TTVIGK4BgWzs5rydKXvs/gN0EGqU4noH89IJ/LRvq8oU0ZF
	 zm1+1BvUp2PN9m10C/sS6NuDS7/p+2VxYUjyNSWx5g7pVbTZ9Yd0dOAtxCyL1fw9WX
	 KFtvQ7w/eWU2pTtE4toLHSwOsu2SKGGTR975HuGxLbffUsGz8q8Vb5BrM8Luz2LwaW
	 sD6gJfFWDV4R9YryQ3XXDObR+8RBqUT8md4033KIw+Skq+3Caqm55ohMqMtBiOzpli
	 RN79w5fY8aQ6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AD18C47258
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 10:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170574829636.14308.10948916151878335733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf3909a44f037b96fd893c36466a7ecb13eef152978096a49413a21b849876ec
Date: Sat, 20 Jan 2024 10:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705748296
