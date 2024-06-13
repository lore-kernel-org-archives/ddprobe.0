Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 564858BF7
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 00:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718237303; cv=none; b=UAI28zK8J9ACAUc0rTeUqu1FTiKvCtSGiF1fkYnr3g2mLVLq5ep2iUByA74T3pc2yxNLoynklJ4yuy6TreWXX5oXgtSvZ9dWkP6G/7gOLNZMHJCuLqmL4558/hz7qgmVIKVEsmg+5xO3lkkxruTsRF3HBWJBNmx0vzJCvNJjIEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718237303; c=relaxed/simple;
	bh=vtwy2888f1egj0CJ1nqP+to5aTtvudW7tkVWYAGFdOA=;
	h=To:Subject:From:Message-Id:Date; b=H4RqBhAaxVXuH93gKXAiQciCZY2Pec5Zma4aO6UJVxZW5znFooJnQX0Lf+PJk/3SFfQ3s0crUmFnnWr6M5u+gvDSvg17sbbf4vtrHatX7tnNH17/WNSzSZ4Vm8aF4BRXB70u+j2ITHr4t2RH68p4L5EVoHHaVdOylHZVIxj9hnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NKPUgcHK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NKPUgcHK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E30F2C116B1
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 00:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718237302;
	bh=vtwy2888f1egj0CJ1nqP+to5aTtvudW7tkVWYAGFdOA=;
	h=To:Subject:From:Date:From;
	b=NKPUgcHKw7E1rlrxzXhxfNyAbsIKUplWkagd48K2fJ+HtEA3wT32sIW70vhjsxOkw
	 uz/LHHv2DyRq4VOE3oIu74fFCCaVGCrsjz9veDlTFDYUoVag8ddMuZfqIt6+d/LDSJ
	 KGuJ3LO8aS04PrUsjywU+fLeZSaHLc1dRoHDTUptwtQBeWRv6XjYW81Cg36zmP1c75
	 LP26/6UHZJx1tA/+4rvuM/xbu5y/REuwy+jIzINZ05LclV4kbHkMcOFE7IQtMxMiTm
	 aOT69vikQlGkvpboI0xTnn24CsB5UiVhQcNtA6iHhyzo+cSHvqPBEqSkFlbQaEaBP0
	 pj2apYQwtNsCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF82DC27C53
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 00:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171823730284.27634.18185937427518175139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e767d799eaf37df4501c02a913f1cb0aa37519c11aa0063f80cf8094b8a59bc
Date: Thu, 13 Jun 2024 00:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718237302
