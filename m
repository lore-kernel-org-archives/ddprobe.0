Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59BDC30F81A
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 02:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787882434; cv=none; b=Gt6AJejN2C595SYPfu00OTBH1dy4uYCv2JUDuyImcbtwYAWhOMMWCmKWfPvvMCX5yqHz06WisDgTGwfYwvGSXyYDUdcEKMUitQInFzL64goeKwC9jwEH0Okz6cQADvsFVeCD68qUgh95/IG5Na6dAVKWLEczI+0HC93KEFmQlt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787882434; c=relaxed/simple;
	bh=J6pRUDP0/quMK2i32IPmkGroh6X2SWOoFdvNsWEDQ44=;
	h=To:Subject:From:Message-Id:Date; b=JJ8chnmbB6rxUIKgACBVe8Ekz4ECop9QTMx1m4Tj2+X8SECPJMMe2C3/gd+lu0j4cIbElx2iOheipA7g6d57xStPsoBnyjLcStfrfOoX97MlksPSts6c5fqF2mjuOTKUhA95/Ad9Cu0IczJ8tqd4y6h4+HQkpmMDOtbQXs+psQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r2Wudx1X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r2Wudx1X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5EAFC2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787882433;
	bh=J6pRUDP0/quMK2i32IPmkGroh6X2SWOoFdvNsWEDQ44=;
	h=To:Subject:From:Date:From;
	b=r2Wudx1XuaQcrI/bTLyRAM4NqAbXlUCUMBWGoJKLaV19+cNwUblLANgGRewhVulDW
	 6Z+k4Eu0VkxB98SLodxMselIqDsqaSeuoqAAjEwIr8BLG0fJTbDxCzsxo11TPAaTHe
	 PxcpfUyq0iUWigJdYfWg9fDtQZ8rBxa5FrFJ31Nje9UcCvF3jUVm4SUPppgjfKfWfL
	 1LVW+H3eDGoqEnQftbqaRMBzZLucvFC4YygT8Np2QnXel3+gIN5s8OUSu1dvEc+gcb
	 3IsMmw16fk5HegPBTpIS0i3SYSaRZFod7JS0Df+Yjn4akcgdBOqv3eYTQ8ER9hXhh2
	 rsJF5L6rw3+jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0702C61DC4
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178788243370.27366.7277666069005477007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8ee8970894ab740340625feb9ba79d54a7276ee01301f2c44ea790e26dd9753
Date: Fri, 28 Aug 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787882433
