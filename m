Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B059305665
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 23:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784417314; cv=none; b=FMvNppLPtSdgeXyih2dI53OY6hoNuFA4kc3LV6H3yLEg6/G2bKUtdcRO1D4kAZj7mWx9qhoSFB4udELc2WKItIsAzb62/jjcput8GJleCcsW/qy1ttpeHllri0KPqkw5eU712r7nnIvA89O/TSKvqALVHG+IVgcbwk5dV4N1EGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784417314; c=relaxed/simple;
	bh=cnB2aLBBBL509064w28l2FHLmRi3bDlHk5sIto+KGQU=;
	h=To:Subject:From:Message-Id:Date; b=Inv64czXiu6UNBiOgOKKIEfkYsrPHFeRmV24jFkZihIsVXObcs7NXIfbJNrrjIhNtUeLyNmqFwHxPe73iADCY80GAbjDUGjJIMcPBZLRWx5Rq0Uypayf/vb1ImnPS6+maki+c9RJHy1dcV1wPCFiYqlfUT3kdLu7GR0y1ppYJVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n3wDgp+A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n3wDgp+A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0CA4C2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 23:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784417313;
	bh=cnB2aLBBBL509064w28l2FHLmRi3bDlHk5sIto+KGQU=;
	h=To:Subject:From:Date:From;
	b=n3wDgp+AwEuWTFmiJLxihGlscci0jU41+bjgIpcbzmaEU1UlBYBg2mwV0FC4claAP
	 j/De2Jy0oXZdpL3a6xKhk/dClU51C7+HtzvTECs5tMvP5L5yTYoWGf/ImyPtjVzGq/
	 r3e2Z0Ht/OMwGmn6VRhLjpj3chNS2r/GnPWYuq0n+3vdf2CC4eow6qzyhYpioyP5VX
	 g5n/rLZ1Pj2xGVzE4giJCP+Ki44yzCs5iI023NeAMiuo+hEiyjUNc0ymfjrlyV79oB
	 PI088C4LpJvR2GtqE3meyXNjV4paDSwp79HrJGADhLVfwa/CPfZXrRrbqyM9Re4E/n
	 vnVgrTrLJbuyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF0F6C44521
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 23:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178441731368.26546.13522567853990078445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 443ee1d233a834f9f678c58056ce9730dba4b1ca64cda2c49d340d7eb17826ac
Date: Sat, 18 Jul 2026 23:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784417313
