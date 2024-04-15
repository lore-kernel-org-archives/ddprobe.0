Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71B2D23763
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 07:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713166763; cv=none; b=JEH9wp/LvHNhikhoBhGM/yZQs/wvJwUV+kVwyy8U2O92+hQUYaTEHbUPAgOF0H4UP7xBIgnGK3r3MabIi6fLOlYCGMHdQbysibinetzKILqMAEvrBcKL3nmDsiwKnU5qboVSvOo5q4ki3NDpSoRWsrCKYAMj83vdrBAXvFDV7JM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713166763; c=relaxed/simple;
	bh=GCAnA2PoqALESObFKALvXSqETUKykj1mGxB/4p3Eowc=;
	h=To:Subject:From:Message-Id:Date; b=puOfm8uVyzgHTIR9Zp4B9HmgleSrW9Y6viktlAys7VkvyzuVGp2excpnlZEnEH1NM67Pt6vvU24U1hnz3e5c3f+44xFJjce4528GcmsRzVOLvJCjiln+54bkMTuVyvzS7nYTqq8GrOFoUfyGRv64EAEiyTrBjI+rog4Bt9EYXAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=amVBuU3G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="amVBuU3G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 07C65C113CC
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 07:39:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713166763;
	bh=GCAnA2PoqALESObFKALvXSqETUKykj1mGxB/4p3Eowc=;
	h=To:Subject:From:Date:From;
	b=amVBuU3GudOQp65HcTiomysxmEwwJQDSUkAqwNsfSn1lNpIVEcYLxBDtx6AM1IQmS
	 LadWQCiw3ZjROPVRFlCqeiDpquzFE8PEMWpJdXDRx1b2FB0AmCuDB6r7KD0y07o5Zx
	 x6R6tyA/wtesiONmzdnrJta507tzQM/bPVmEktfmVxF0YWzhg8talSmS6KXb5/hE3o
	 o4QARWzh9F2A2otRA+ewVoZVn/EvqU40eVWS2GYCh2nF2CDxivP7R/po8SIqEa13wU
	 /GMcr53EFbYfc2v4ufqKy/4M1Draf2McG6oXYnm7ZNCzo2RRZmsgzutJHezYWl9xTy
	 f8fk4X4EaMkBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E1BA6C4345F
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 07:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171316676291.26541.3819975083511198127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5724c4d8120637903347bafc9d368e7fc18e5e43f2d9cb28177266ada294920
Date: Mon, 15 Apr 2024 07:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713166762
