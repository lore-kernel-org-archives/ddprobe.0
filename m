Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A0F643C7A4
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 19:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790624434; cv=none; b=T7Y2Zlh8ITYTfDnusZfay3eS+ToAaa5EsG/S0NmzM7zdUaxTxW6SR2f2CC8wl2c0FVtY4VSCGdP3PfjF2epDVIfmspk+ngPAPbB1Cmj2Pzcc9Gb+Y8ypOqUp4944E2m7RK9rwXjL62IKOKJccu/MHkAH4tLs7PH8onU7dflMOMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790624434; c=relaxed/simple;
	bh=YaodOocyLwWYsXIb5JP1d36cfV/2p/m6kfBpNCoomZ0=;
	h=To:Subject:From:Message-Id:Date; b=SlQVmePy75/gd83JeBYjnsiVxY0/Ae5KjnYCLrtk4sWii2P7Y7g97ABkbAIE/n+HdNxwU2hOTy7zVh7fqNUlYNqoGTxloRWucBAqGVd46Y5FC0vpA97Mr7vD9OsajTDx1CX10TwknCRBEOrsXNVzHjiWp2uGsk9b8xUcHqu3f+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BHolN/M3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BHolN/M3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF999C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790624433;
	bh=YaodOocyLwWYsXIb5JP1d36cfV/2p/m6kfBpNCoomZ0=;
	h=To:Subject:From:Date:From;
	b=BHolN/M39FH0jsLfEyDJF0qcFkI4oIsSqay91VLKfJIEYf21cuyJ81PV2lRtepOFD
	 uB6fn2wctbjArDuY10+r9JYtrqEj/fXKszLDgrGB0sReDGRVnsiORyK76lb7qjvOSC
	 cElr86/GfOKetVMFUU/e1o9c+cGpYvywnQDLfxkslCocgih2vkdo4zFtjq9eLUoqUe
	 Tow0bwTMIqbOqqdE+F3W1eiTjmR1piPSOf/bHyYmOjhwmlKr5h2bxvrsiQ+DhAbF37
	 ohKOFfFUey0t1d9P3GfgMmr1uS1uzIEH4Go0PT/lRTt1EArGEu4QiVHo+sp+HTVdnW
	 ljUrwgGL53ujQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA270CA5FA3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179062443368.10846.2883046966554298207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fc81d1dbd637d1397fe49b12f8b0c7764818953da7b792085d9a8a6e51fae60
Date: Mon, 28 Sep 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790624433
