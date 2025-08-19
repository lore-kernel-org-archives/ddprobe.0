Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2022731CA78
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755597594; cv=none; b=SIJ78C33tw6yLvONtVG/pBJRr1uF+awsZdTRJ/t0lUqxyrwTfxMFcV1JVLXXbUQjz7SbCrnMrFZUvADZlkxXPoNCCV149vToP6Ov7W+RKVBwvIfcCPLUT7/Nl+1+8gKsZRPQ2njXmlicT1CoBSXfnO/VmDqOCqtRhnHRoIh8BdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755597594; c=relaxed/simple;
	bh=SRJRJ1plZ13H2UeGegA6f91CCtBsnz54rASMAwa16Xg=;
	h=To:Subject:From:Message-Id:Date; b=V7RmyTA+yJKqFhzn3uePI6uiLB6HpscBoZFUk/hP669y23jmLBxRkNLsrV/WhUAP5HobKNYeIN0Ub3uhoUSo9Ai4YtS5fG49805p+h8zr/UGkBMi8S1y3JAw3Rs2v/u0XeJwI+zF+HVnEtGJz/ABsNpoN578gVAURmiNkr1Issc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UlKIiAux; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UlKIiAux"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BAC8C116C6
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755597593;
	bh=SRJRJ1plZ13H2UeGegA6f91CCtBsnz54rASMAwa16Xg=;
	h=To:Subject:From:Date:From;
	b=UlKIiAuxbk7K32bb36rrwU0cY/dOVbSv7eY0ogHHanQH4+YK1uUSaGUk1/+4Z4O9H
	 +9kNc6n3ZSt3CZvBM4ycV2mPrGkaXKbpeBHP4JBBZZuuyh0O/NOIICEqtsdptP8O5F
	 IzpLfCOA1sss0Sz0BtIwBeb5RkA+BBFI2xbobYf5eKgWU081tp+YrFujo+tC09v2C+
	 x6GHWihjTWzj159mcjEBCfDaOX1taw/HJCdrTNyT64aVy91FDyH4lXFkpj32pwxWYe
	 9ztgqPzGJLcvbPCxtdYsL8OJ0SXK64alJVbF6ftWWMq5DQ/CUcpsjha2Pr3ogmiLTN
	 GTkQ6jvBFrQiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E59ECA0EF5
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175559759357.10802.3215941013947059852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a884f8189d7adff8e6c3d4bdf1952d26e4a5a8c0c17728244c1121ca9fb10d5f
Date: Tue, 19 Aug 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755597593
