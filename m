Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28AF412EBE7
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731082554; cv=none; b=uPbt0rQlbRl1YKIyR3IlyY2GcTe0Ckk+9t2xHBwRhWBOyuQq/Mt4doxHFeXD6jjMFeKbiv6Sjn/MuUAQR0WxLQt/VulTDpDAWWzoTovFi8fuMrkyold/ZAihmXbEPS39iFmxIRkMXB7H6ysnST28eWjc1m61zREQreNfMEY8h+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731082554; c=relaxed/simple;
	bh=+fQKGltb/vutAuIdopvph5Q+sSQ50ymqUs8qyI6E8g0=;
	h=To:Subject:From:Message-Id:Date; b=uxZ2NsT6fPIb2tkbuIgwx5Nwqm5eVOShYz2qcKLgr7A1PCM7r13mGHfjIV6g08FncjNqIx++X2JY6+nooKZNdVSEJIdQ/5u/O1lujrJOY3Xptw4Bz/qrhxc6nfHjX5oxLFK1jxTNsfh5uwmJe7fLGuM586r1EsSekhAbQ6Qf1Wo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=irjOl/KI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="irjOl/KI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E11C4CECD
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731082553;
	bh=+fQKGltb/vutAuIdopvph5Q+sSQ50ymqUs8qyI6E8g0=;
	h=To:Subject:From:Date:From;
	b=irjOl/KIhw8vrNxdCY9F3ZZpLHOgg8MqIr7dRdu8CVe3uzeP2L/hX1RwpNwhEqHqm
	 8t4IEJtlA4e+903P6DSBGEFLO1MXWqX4sydecod+IHo2MJ8MDGxZKVDfpNwO3ywk02
	 7vmePQe+mlB/7viDP2rPdEtB6NDJYJfCuv4xWilFU1bVvFIi6DzpsUUwkAgD6oLqN6
	 A+n9/5ob8defgm30PxLWwwCXukIbDMQ2D0HEgfm4u7Cb+ReNNwuqaS3BAUpoe6fZ7D
	 otYSQ5s+5AF8K8ILnPQC6+v1o4IM0h5Pj/LxnNIOxNRU/tilwxOIC1BA0Fy1C9Bkaq
	 NmXivDqPyXbZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 991A8D5C0FD
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173108255361.8838.16317618600110383594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03be25eb7e0f3878e23843eff280a0bba415ea41af61646e2b21201b7881960f
Date: Fri, 08 Nov 2024 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731082553
