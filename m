Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 253A632D45B
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 02:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775786854; cv=none; b=TkfVif5i3+EJY4Zdub3jQzKMWMDEUVIXbRKdQWWfwP2uXXVaPST5CWSlRwOuISzzLxpwWDb0kFT0FOrnadPIJsLzkiDz7iqS39sQALWzXdzYSam2cCaWohwQO9YltblM54ZMY0d9ArsjRO4OtxEbCyK2NMYB3YAKsdg5QD5+DWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775786854; c=relaxed/simple;
	bh=kZn1/zLJ7gxf8CwZezyZDE8tWXEtSO1HA55+XpC8wLE=;
	h=To:Subject:From:Message-Id:Date; b=ehgOdz0HJYezGeJzfs6/Igwi5yJK/W5Cb409JaAVadimVXg/u6CI0luDZ/eHqf2jiVS/kepWpU0QrINyClSDw5JEDI8gyt5jR5yxAp+6FgHQC9Ls3fWEx82GUE39D8M/Ngh96FL1uwuY5p6BVGyu2SLHPjFFkhJ3y9nnh5GFZB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ryykS8bb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ryykS8bb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB84CC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 02:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775786853;
	bh=kZn1/zLJ7gxf8CwZezyZDE8tWXEtSO1HA55+XpC8wLE=;
	h=To:Subject:From:Date:From;
	b=ryykS8bbyq/Tit3okgmJbbrBlv0Pe3J0AR7aof0YzafcVIIboNjRH1O+d66K0sasN
	 nBvFX2NIRIXh9L4p2ES5fMvh1Zh4TR9dTGqDF5/SE2LGhafhG0pZjzkk5fkWgd/tyN
	 Zm8KkQsm+jTT6sjhZg2Ixatj7SzGKEdPxYFLtctxbe3sLxAhdx1OPYCSPTGy2JnAnn
	 JtIvIyuJ95JpnsOSw+EJl1/3svGFH6yKtgpQCXpchKLuxFzvWEDyxiQJT5RowuEn2h
	 t32Igy8fGsmdY/G0NIxCi/B/B+2KzS7ITOgOtkEdxiR1x65Co+X+SVrpvdf/FKBPsG
	 N+Uf4ElLuvKXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EDEF36B9A
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 02:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177578685368.30801.5738216941710143348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98e2fe217344c7642cd58f759d3490075d2c9484e2158f580bb58d3d2656e110
Date: Fri, 10 Apr 2026 02:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775786853
