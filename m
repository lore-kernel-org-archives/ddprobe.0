Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BDD7A20
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 12:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713616223; cv=none; b=Zg8Y+f387BxRZ8M3d4iclg/bOd2t9nW4HBxGR9oCy5xeGcosDhfbkoXkWo7CIj/NXJvjm/9teBqM15nRM4f0VouhRW/pP4N1Y6jUnLOjI2uNkZ2IDycLSV3QNRgJHSX0gTV1BrTPmkIJuAfT0Y8eFUpG3iwcrUy0fthpFNhW50c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713616223; c=relaxed/simple;
	bh=MKO7VJ+7+kQc63VutJbIF7IHkyL/JJ+UUz1Uyk7AuoM=;
	h=To:Subject:From:Message-Id:Date; b=mTahLSoDW0aUE3GMC7naQjiTvQgq+7fU3pxqXK8C5vmfJDDX7usSscxSvbk18f2Du+UAPKLOIFbCmanweraSyxC8SSVoqYY4Y2gmmzAeaVd/3DPyltGkIPP5AE9lysRidhzPvsg6S30LgR+fvnGsDtBXGDKolZjPAsFWpPzv1uU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mU4Ti+Ks; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mU4Ti+Ks"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8AEEC072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 12:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713616222;
	bh=MKO7VJ+7+kQc63VutJbIF7IHkyL/JJ+UUz1Uyk7AuoM=;
	h=To:Subject:From:Date:From;
	b=mU4Ti+KsW08EKLHtP4gXSCliwYz0KF6AyHqOnZQ4wRhi8qwZrmNCFkbgHNM9obQyP
	 2p8TC+1kkZvxCe0vA0IeygXV2ptjR/MGgeDxJ+c3MROFV/GbRN1ACUp2kHXzkXgE4u
	 iNCdqD/bbRPqBdc6TkqnSRHDiOLNI6iqjo0Uv+OUyP961ZB+Z5OUZnidE3uID7Pe6X
	 fAw2X+taowayzyNEMqxlawHIXd896SZZ0ibWBUIPeNvNH2y08xeN417ooHivDB9e1g
	 PySyi2LGhvse/u9Bb1cUs/nP4vQeMsGMBx7yULmadXpTBlrGd3PUvkxqm9YcTNuIbc
	 oFI0pCRDLZ8aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2C43C4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 12:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171361622276.19729.13059768234278136351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e2984711cfafe2b6796e4f149e7090102460ec6c00885ba8d8c042f036aa585
Date: Sat, 20 Apr 2024 12:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713616222
