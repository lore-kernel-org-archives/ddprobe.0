Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 319BF271A9A
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751922594; cv=none; b=LUp5HH/Fr8XXLerlP1l1hlvVewYUmvd3O5xJVg0hkxTqALFaBD6I8y5vEX/+K+xy0tXr8yUDe3mJUC/ebUhx5neekGSQzX4YuZifHfrwahgMqyDlHPjKaQTy7GK2rnj2P5Y0BuGzp2ll5kXIJBZFACqzEz75RJIlYAcQyNOP5iQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751922594; c=relaxed/simple;
	bh=UfhrDvBizlXoz/fFSK/rvMZEgEM/bTbM24doVMmKQfU=;
	h=To:Subject:From:Message-Id:Date; b=JE9mH94MGLsdo2fRSuyRiDnJfAA226aeCeY/K6r5lt5B4/sfky1eYOy+bU+K9Vmc/b5iaIq7+J2c8z0BipZcdtwasdmahZvFxuBxb9t5LoDTLZIEx/GMfVls7w9KdlLZZ139zuTF5swHNklA3qqlmOBbWWdOqhXA6xejiZwyrcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vAgaXxTs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vAgaXxTs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9152C4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751922593;
	bh=UfhrDvBizlXoz/fFSK/rvMZEgEM/bTbM24doVMmKQfU=;
	h=To:Subject:From:Date:From;
	b=vAgaXxTsWBRKtVV3pbs6737Fuw4KO+AwzN0YRqVafj66JYaLgp17vmZvWGNMlkffh
	 TE4KCvZoTuoyUE3dmjskEtEoMTR0XUyn5omBXwRxBlybM/I5rKOfVMpEdaaZcu1thh
	 wAvmnJbUl/Zk+Zv+gjIiJ20Dyky309XtB9T2bZf+O/JANJjG36NCMrm+Cvn7orLbG8
	 FE3jssy0VuBADKbczV6iT7FzbH4cPJyWN2qhywmvUNs7tdABYMqrDT2Vs11Mod7gw3
	 tbdvfVowyNXK8ImFbGWh7R+4/CTyuXj97Oh53yyTQ4v6/EbMM71f393ryGg6dXK3aP
	 I8EFWGJxK50/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A40C71130
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175192259360.4716.9789527068892611157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16dff629a602282034b96f17d147f4d586f09f42a7a92054b11cfafea7103328
Date: Mon, 07 Jul 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751922593
