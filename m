Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7C2B13D271
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 07:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712735297; cv=none; b=LEzmT0MZTkT7SY7qTae//7kjb5KDpJgRyg2Fhhb3mKe1W18iSwWXT9Vw1KBhSx1fwHMl5HIR4xs6vUGiK78CU+mMEYoBfT5M1u8/d0BAtTUHuBnsBga9goXpI+j8w9YXxvYDVWlVJZjFjCajuKSel2FEtPG6swFPFJscvZvMGGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712735297; c=relaxed/simple;
	bh=b132XweDX7I33Q6JH5nn04yKlUkK2v8P6YFPNeVtlxg=;
	h=To:Subject:From:Message-Id:Date; b=tpxGHQ202RdJCRXF9faluqLc6mj/r5Bm4z8VdZ608RQXslQHqgitzauMw46FMepUFJDP2UlC8hp5w2vWGkFywZdBGpT1AGwKORDB84rCw9+l7dJ6KvCRJ0JUliTPEEzOQBTd6OPQDfpEtz57A/bd1RwvmKdVyC/h7ny2+HU6bYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hh7XJ4M+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hh7XJ4M+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BEBAC43390
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 07:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712735296;
	bh=b132XweDX7I33Q6JH5nn04yKlUkK2v8P6YFPNeVtlxg=;
	h=To:Subject:From:Date:From;
	b=hh7XJ4M+2XVFJqmqXqpcNV3KAJ3Wo9J7+OMr0g7jZoU2MpqWYAJL6F2ihXQX7SVrQ
	 4P3u61PNk82wLhScoWF64+35HNQJVFQUi1gl0vPec/Bnp7J1DSlVjFetavsMHT+ZZC
	 nFyJMN2/HuoG4XijbO5kUfcQRsz/1ErDA1gBJlnuBP53zWeY28NMoM0tT0c8s8QAyn
	 SbVPeu3IuIg9KONVpa33g0lUw62oq42vxnB49Eah1aSO9/1XwPHsrXFgGfSygfn8IC
	 20b9flHyZVO9B41d0k/vke3YP+zk8zib4gp5a+XIBRTsu8ecvNUSiMLLozz1OGfbgA
	 W+jLuYdxo1FBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66F8ACD11C2
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 07:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171273529641.7422.1785988609364843292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68e7dd267d2106591f10ee495a44ba4b5e37b6d66a5518120d59f0d260137357
Date: Wed, 10 Apr 2024 07:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712735296
