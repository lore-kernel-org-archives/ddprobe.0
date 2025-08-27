Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1502128E7
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756274994; cv=none; b=IhsIRx0lo2UJwjq4MOXI9ndbWGwPOBnSxHfrqttgMIUUnwXnf5CNnn/nJQeNDN4zQeNcDgyj+bs7IgsozX3igTept3FA02Lawy/0H/jCRdXs7MZ69W+lhhJh0TDbkmxvwunC2wZ3Gq2q2AXmJidVdQSxG/PW1q354E2Du1TIuAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756274994; c=relaxed/simple;
	bh=TbxE3DPX7qXuKozBhKS1zxCTRwa7LSe25rUSQ/cAEAU=;
	h=To:Subject:From:Message-Id:Date; b=i83cqkGDbiOsnX7qh7a4RvSO5kXH5tqebmy+YLXGMNL/nHD1XwWaCIkGDAA6HKycTsZvAp8EPKtMj9cndXN87/96EWmn0yN9YAuv1YYsBR9we2vLrvmCXRbwZkakAJ7bXULFq6LtkZt5S+pxSHYI9B/E94orfCqgjDX/Aj+uIrg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZvrTVWDB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZvrTVWDB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A65CFC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756274993;
	bh=TbxE3DPX7qXuKozBhKS1zxCTRwa7LSe25rUSQ/cAEAU=;
	h=To:Subject:From:Date:From;
	b=ZvrTVWDBCacA/12F4aHoESQ8eeW7fAqP30cGlIXtKh5/WCAP3nNNqi/yJXPw1HbwB
	 oWT31KBZMO324hIwdyTeeLvN59kkONarV6bOR7kpmdUZ6Y+S9otIqcVNT8U66A2YHq
	 xbe7jupS6zkuO0RvqwA13Uj2kv8uc45jzp/x5j9z/+JDcNoNphNJpuaq/QcocpfzA7
	 MyTT+m15fEbX1FP6U2vjxqCCGy8rjVb3Cel9DE4hLKPtAbLQKWyxLHGdoaXku2AbKg
	 T94G8sYVW2Ag43JmBZK7eQqE7BrIlWzp4sbdfWZScuF3jsmWxG+JLEUWvhUzM+DGaL
	 UtTYTnKixPpVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FE4C8303F
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175627499359.4363.3465502344250890962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab0af222b4e9a6d2bfc35e8c47a7ebce63b968430fd76dec8dcb0e38b622d762
Date: Wed, 27 Aug 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756274993
