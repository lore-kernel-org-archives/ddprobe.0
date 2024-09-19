Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F0E41DFF5
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 14:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726756554; cv=none; b=rmbF6WZDYI3D2duXpcoeLt/GyNBmD3fwulpR1XurKBk2ELYtWbmRLIYlSUFCSZFXj78j71VlJivX2VYcjxDWbtMKvs8vh9mE6BDGIwQ5FV/ZHh7fVn4IST2dKQPca+OVfu9OxE4palijmky228Ww5NL+C75zjNT1vNAftyY/TDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726756554; c=relaxed/simple;
	bh=jGKyIMKfs+tRqfZd7W8Uy67r6nOqGngabuEjOs7pczQ=;
	h=To:Subject:From:Message-Id:Date; b=I/xTBFl7gVkz580rHGZ26l3OGhIuhuJdR72QGYp+/ovuPRTChevS5CFQT+b5x2k0AVMHpXiyp9f1HXai3HOQlcVaVq3tRvQHwf/uaBmILDSiLqVY6aPm3mkWYzThBRnyBds04AbJY9+15fRxXhYN7bccCvaN5SziABZ1o6OFswE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lU+tL8ip; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lU+tL8ip"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA8C9C4CEC4
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726756553;
	bh=jGKyIMKfs+tRqfZd7W8Uy67r6nOqGngabuEjOs7pczQ=;
	h=To:Subject:From:Date:From;
	b=lU+tL8ipzSBJ4lz6HmgbjJegFf9aJyWkWfaPAo7m/CK6Am/quBScrCWNBGQrm7Oud
	 B58wydUd/Iul6ciQaE/viTuy6qUnvBgtwMfQnlegPDdUiVXv1lhDo226HW442P459a
	 CgYWmDWutai7zpujFgvUShvJX3XoR+Oucetf1bqSWZ16IjWC5EBvAZAu26WHrjGpfJ
	 IFvm7FhS9AeXedUeBLgEP9xrbuOW5LWlrRUFlJyXhAy10pf3Ah7hTbGVTyL9kFU1Nb
	 XN/oUxnP4kiQfqpLOueIpYwjZ0ZMzq6oTVcdrdlW0g61CDdOAUeeQ60WwxPyWMm9k+
	 I6zhzPKa1wjmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C09CF3945
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 14:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172675655359.27699.9808041818226415264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bff8e38e520df59dc065d90d90d819e75b418585b09e48293e6e7ce8a1b50e0c
Date: Thu, 19 Sep 2024 14:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726756553
