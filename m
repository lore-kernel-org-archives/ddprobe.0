Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DCBC1E5B91
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751982594; cv=none; b=c0GwGBQW6M8pBzs0Wbin+IpCgFrAW8n22Dl8sFeP2D98e57gxaxqHIkMc2xbeCEBdGFyRs0SNHhvdqffamx6Y6dks+P341dtn6l03HFvqRFNlB2dtVs4b20W3XDbH5tjJGkfjobnF4NdI8rjxKmjN2rk6NfOOjXcuteb3ZwTG10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751982594; c=relaxed/simple;
	bh=0wVj3dZNVDsuDsENUNvKeku8wOf8deC4SW7DHuMfkb4=;
	h=To:Subject:From:Message-Id:Date; b=SrWnwEhovDE5qyON0uS0y2FteoJa6r3ofm4f4Tx74kCymnyerES+OwD0NAN6poVsB59mvLAzTrdYez/6FpGh5q5UZ+/pQ+mu6gMTdZZ+yCgmbP+NtKC5wMZcnfYy48cIrYQ0Q9/o652t/ORKCpGop8aHS2l1NAl636FcbTarqW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qokdREyk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qokdREyk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C13C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751982593;
	bh=0wVj3dZNVDsuDsENUNvKeku8wOf8deC4SW7DHuMfkb4=;
	h=To:Subject:From:Date:From;
	b=qokdREykTnfKUIRkEHJmS8yMRgerC91TPgvX059oDp2WVUoTKxkSq5AiZ1DbCImVe
	 D7DeXC+B2QIHWa/I2PXn3/vxvvmDOviFm4OkqNqZvs77qdCPPRGbhNJwOILbHlQmak
	 x9NYDaHdY9NB9d0y6w2XFwGsCgMXo82fcrWBlYhRXtVGqZaxUjg9lYc89N5tsbdnzA
	 V7MGNaeWogQbuB4CBZXoZGomea9EtQ5XJOsU9dV7rsafRgfBDyERGun3mOgc1ClVNA
	 OQ8TWUjrAvSs0wTTXUMXb/dmFysMZ/c9ygjxtfRu+vjyHPfOe7rJm8qBMYrp0Vk6UO
	 5FTRB3sVPj+XQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5A6C83F09
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175198259357.29115.16640380012935934624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a8d23338da47f1731f92931b308184085afb2afe105b5fa50bba9790b873df1
Date: Tue, 08 Jul 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751982593
