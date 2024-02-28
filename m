Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D247915A4BA
	for <ddprobe@lists.linux.dev>; Wed, 28 Feb 2024 15:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709134696; cv=none; b=UBHyfu5tQfMVOfJpLekovklAbwuz+NWcdI9Lr5m/yaewVfTJ5xNprxOtHI2ZKB+j4ejoRHYTv865lmLgIUU0b7mi081AoqiQTOLtU3nlVhtT4yRCIrVUfi07hGFHrQaBcU2mMpqfF4oGcsOLW98CsVoDjDktuDxiFq+Fao1fg/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709134696; c=relaxed/simple;
	bh=bg9KM+OmsM2t5JtsIXjgpDdRiuYHUXe+9etHX7Ue0jE=;
	h=To:Subject:From:Message-Id:Date; b=kfi0s8hXbvnr4/Izz36apBadjm2qQwEpXRaTBaIWfCZSyZqrqvHgTMTicllD1Cj/kmbPZ9Gz6P/jnCr3vuq2h93JJYR68lYvhOhPugfOpGCbTlza8sGonENxe5/4wcWN6hOOtSyV1R94MmdrZxIkcElxRF4MnOhehEOIAYRHLGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s5ZhsVs4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s5ZhsVs4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74C5CC43390
	for <ddprobe@lists.linux.dev>; Wed, 28 Feb 2024 15:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709134696;
	bh=bg9KM+OmsM2t5JtsIXjgpDdRiuYHUXe+9etHX7Ue0jE=;
	h=To:Subject:From:Date:From;
	b=s5ZhsVs4a/xuoOFdQsBEppn/CR2y5iwVSPZcpcfBUm38sG2KXLpOkUEC0/LnTuLDy
	 y4SP/jE6nFiqg+/FnR3G6422S8k0NE/0q4ZRWFxQ5hFrypLT3pSOrB+/5aAqsMMF0i
	 RQOcBXGV03XEnTEpy8AAJuZTt23IgsACUDrOqya98rWB6N6g4ATyCfDzQQVfBcvycr
	 PeBYTKbrLNhcV6b9Nz/YtI6d67/rxcTujkXD3c7Zy3zhhAfd+RYaVA7uy7ql1qbmDz
	 7/WF2GkgK66bo4SvDv3mY1OF5KK8qeQy8GakJAy2Hg72paR3FwfE7oyt+yRW95/asU
	 +9rtT59vKzyIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E4B4C5478C
	for <ddprobe@lists.linux.dev>; Wed, 28 Feb 2024 15:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170913469636.1389.4969696137772220149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de31219d0405cb1e141f50bb6a986e4f384789d62b2db1a3a289f3ce4c217679
Date: Wed, 28 Feb 2024 15:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709134696
