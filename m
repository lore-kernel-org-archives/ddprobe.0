Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FE761B960
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 20:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717016063; cv=none; b=W0DyaROR5+W/wK+sSSmVSBSULd2yKcOkaUMeYWCcdOcaoZ4i+WZKpyxjLgq7NCObflveeOLQw0JJIoexyi4muV1nenNFq8ablyuafMoESjT116NeKKpsGtmdJGk3UnLcVOuyFm5bkwndvAVba6wMIOc4oAf7kX1KizPc9awQQsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717016063; c=relaxed/simple;
	bh=awIbuTAncdV9AYiNAJ/jarrPjsxZMyIZYXQUEqO9u2g=;
	h=To:Subject:From:Message-Id:Date; b=C8vj54vR3OVQ4zHnzXTFiLe8uP7bIXCTh5/V7I7G1C5MUFeuBfqklfGjltQJXSHviiv2qDypGNrHmBG5hvPmiyAfXz61vnncFUvGI3o1rm+cWoUaQwxXvaKpY3hWyV8Yc7sQVkb8CGMM24FUIpT3i++l0C9a39pzZJjvI4zLxDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QGY4rA6B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QGY4rA6B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7F78C113CC
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 20:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717016062;
	bh=awIbuTAncdV9AYiNAJ/jarrPjsxZMyIZYXQUEqO9u2g=;
	h=To:Subject:From:Date:From;
	b=QGY4rA6B5Mer7lWF1nqMpacVUvOP0ljjy+RfneACnMDyCNLNFpvITWevag2MdbWQ9
	 8Nbyo0bKfYXTogNCEkX26AQSS8bce3roH2su87ScBIf4xLQYzFOThI+Tdc3G0BYaDk
	 O5w+qFu8fbPArkMWSiVo1pCBPiYTvBxgGhurZddtOq34+yJ2KMmwXAO/SxIPeMpc0d
	 us0jJ4QuVGmuGBh2EeFmJVMnwvcvm94VS4/z+l7jTsy97nNWTBmDVStKBwY+I8Y16I
	 wwTyAlH5Ch3NXjNeer06wl1e0y1lcKqzBtw2aCEzrMwpORtLKEUYnv4O0uCYSNz3YM
	 gAX/JWVBr3WFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C45EBC25B75
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 20:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171701606279.3259.908547696207435244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e93168abfc35ff31b4fe32fde0c3277daf005a829e03008516e2c1ea7a857918
Date: Wed, 29 May 2024 20:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717016062
