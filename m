Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A66E1F2BB5
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 16:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740155334; cv=none; b=siVbPMAPW2mDsd/w16oYDbtXnFmR4YvgHX7LcZFQi9PwEJ6A9iA6daAP6CEUelf87AGLdRtQjlETi355OOvFPn3eZhYa165DlxPvzVq9ylZJYzu1EDlj6h/XpX3s9I0TGR4+elNnW253iPFwLNrTTDZ8L9t0Pygrm5zeLI87/zc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740155334; c=relaxed/simple;
	bh=xy7cIsvb17L8E42fi1zr5vCTV9pUsUk3wIlGX2fKUms=;
	h=To:Subject:From:Message-Id:Date; b=RxvsVn5eTnbZM4vN5/1a9AnyU3wmQCyGO2GqsAVPu47tnb1p2yvm7qe62pSxwei1EfnmTkJ2qsx3ThjqqebpBdCpdKSRcHey2705i2kM9RCcj+ZaRxc/JiTyDPHEFZkETsBcF4GeqlCrY7muIShVe1RQ2904qN55WtnR03cPkeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IMZQMAGr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IMZQMAGr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C54C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 16:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740155333;
	bh=xy7cIsvb17L8E42fi1zr5vCTV9pUsUk3wIlGX2fKUms=;
	h=To:Subject:From:Date:From;
	b=IMZQMAGrHU5/Tc/iIMXvM6H7yBs4JDwJa5axuzOsAXmbbqBFs5b/b+yKFkVt9CMJg
	 Loel0os/tyfUgx1KrOZ5ycR1zyXjGPwKJPjahY9mPcIa0pTVI8P8xNivLCbsVSXJeK
	 ECIbHORX+QzjEVFPkV3Z6xWixWXfbpeRspbs935VnGkcWU6rKRNFqcwTj6Gu98L7f1
	 Ds+FTepNpQLe/1bb0X+DR2AavRsHtEAJixUUC+rgDCdlVAw4r5GGnjmRUAk/zhpL2F
	 uV5BiTZJjNqLAf/IYnvPOBdrKWA8u/XAvvM1lhvxpXEi5rs6kEW/Qx8AL2Whpuy8Ds
	 e9afaZWtBhFCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958F1C021B3
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 16:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174015533360.16748.17407816609645286111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91218065332944047a35b28d3eed5f113d8cc4cec3e97f2b9e77ca5b2b7282fa
Date: Fri, 21 Feb 2025 16:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740155333
