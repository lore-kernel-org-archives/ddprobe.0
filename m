Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05BD62E3388
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751989194; cv=none; b=s8EBaVwUbn6eAMrMw1yCZtkuZr+Y0ai+8MxDZCURzay5FCOA51rbWS03cnhD/aIVU2Scf6asmh5yp+462Sw10wkrqlmMTgYrrAQCrmPXQictCPDkFzCb69aEyUblGYvjDpfdVZSPBdOdifUfEygZK4Z2ov1KmL5mV4gaToIQbd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751989194; c=relaxed/simple;
	bh=qgjcBfNWnyDN1f7N8mIGVmKkbiTs2N4gH9qy8cCeCMs=;
	h=To:Subject:From:Message-Id:Date; b=g40ke51c77gOie080wTsodLYHN7NuS9ZpOUB2MG9frzvFTLk6mMGwZ1nkqQQDp0JMrbhneh9P3OmZ4YiK7orFL40IElC9DF4BaizNHsKBlX/4Y/9a+dDjF4Xert42Yg8Au6xAgpUdg340YewK5n/nCtdpNl2v9HmV4HS7T3i7SU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sxZs54O1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sxZs54O1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF0EC4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751989193;
	bh=qgjcBfNWnyDN1f7N8mIGVmKkbiTs2N4gH9qy8cCeCMs=;
	h=To:Subject:From:Date:From;
	b=sxZs54O1KTp7EWaTgeDZxnsvsVQIcgvKJvw0QetBoBvyWseXDKSwrAqoy/TjxCuko
	 WH5kS/HFuECWZOPObUo/C6CUD+TTvhBYV0tqloGa5aRn8bZD5cYEStyn99jff/zmxy
	 +TYuNZS/vP7KkWsBt0SD3FKFIDxbzznTweAv5ZfKNpRAFOKr740valh2iB4pO76phc
	 qBthZir45SSUvQmd02x96k5TUnzad4QX+663+yu/Na1TCQi9FkZGYWEyqs/egsb7T4
	 QjxI/j6U1GfriATHqD2ogokAnBfSTE/4BcL6k19FrmakmKzSLAPU+Ost1CARNeiXVh
	 ANRZWS/vwBDtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F753C83F09
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175198919358.24074.5339503320600617953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9997aced0ea6863a4577f46253ef8207d5b236b56e6f05249abd5a4bcf102f20
Date: Tue, 08 Jul 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751989193
