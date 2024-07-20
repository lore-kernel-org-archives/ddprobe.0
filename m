Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 637C01803D
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721485554; cv=none; b=pyx28il8DCCIaMWv0u5i8v6cRWZWaPynWaAG6hKv52FDN26coCibjVwh3XtZ8mhb4TRzqdIPVvGFGcu3b5HkQxd29r9R4rOS8bm1LnDg8rp6jX2G3ZYbEhXDZouwbbsitJYmYAX0pwD3IGiq+Iti8E8BaeKvhdOfffxPn4KjfmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721485554; c=relaxed/simple;
	bh=wgX8cuhRgt6dSMOmyGkmy2LOkkjooIf3Lt5pwpmVKy8=;
	h=To:Subject:From:Message-Id:Date; b=orPHb7kL5POOb7t5clTBGDQov5iTK0nxsl+iKbzN7Da9FNDSR2QcAI4i2MQHlwpWNDQnkyMmQBT/r1eNbBOXZwbnpgjzXjjoYE5AUgmXGhLs2PKsSo9j0jkoQLWQC8kQNO7ZiB2dzO49TqGbz7tKml3JBNME+gb3dJ03h0yBwuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jo88uzmV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jo88uzmV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFB5EC4AF0C
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721485553;
	bh=wgX8cuhRgt6dSMOmyGkmy2LOkkjooIf3Lt5pwpmVKy8=;
	h=To:Subject:From:Date:From;
	b=jo88uzmVg5MDW1R7fYP5nFPzwuxD3d57ami+2ev0mfagVncawhX9zvGwMtyZcTmM5
	 2VkIl6PUtNLrBrgryWlXj0ecylQo+YEs7To7xWJjGez90giFgJdjm+cFXY5oeA44KO
	 CXfsvPP2F38t92Yr62PjxBQdpaewXUGWTrO8TAl+rXuKKWTYPcxtzVduvonL4Blu8P
	 6LqxU8Sb4S69B0FC3o71xCuuwhEdSQjaKsCK1h+F7J9Qbt6gj9fAGuDL3gqoxnJjkB
	 GkDIKKjbWEcHMAVpxsK/DIwetA7rLcIB8BmzGv8pfj1inUrmv2A6KOtg6sCmuJD9HA
	 nqkIrS5JRsP+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935F2C3DA7E
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172148555359.10870.3020407750511231471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 380cd47394633b5e438f44080b893eb15b3cc6755caa77b0d7f06627237ba451
Date: Sat, 20 Jul 2024 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721485553
