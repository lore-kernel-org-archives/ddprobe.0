Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23BF8288AD
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758424794; cv=none; b=XTeQ2TOV8rom4kKCVV/Lx/DB+7/5MV8yv9xha1y6ZzoFafoZfbSNE5MTZflbIcaKDhauiALgOwrERx5cCLLlDb4RYtEqNezp/+NINSu544cvfGNojCB9guSMbJ3GwollzjhoBaonbTlu2wgRDOmk1nl/z4etpy7Nesw3lFzDiBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758424794; c=relaxed/simple;
	bh=+hoVdECoTlUYCHxY08OgWsTI0yTRyShh21oHbwhHLIM=;
	h=To:Subject:From:Message-Id:Date; b=jQ+9dCtOj8f9va9vRzgNlkmubg2ygGDz5kYZ0KC+SRy1VB01z7RghhmmhspBoWfQm5RaSINq+sEVxqlPBsM+c2ePyUPTn1Af20P54HeEfx+nWtLdzYTs2NFfxIR8e53mYaZeStr57bRP6sn29jfmyYurnJ8kmJ7hSyuqNGyJjFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mrSiIrE8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mrSiIrE8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A850BC113D0
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758424793;
	bh=+hoVdECoTlUYCHxY08OgWsTI0yTRyShh21oHbwhHLIM=;
	h=To:Subject:From:Date:From;
	b=mrSiIrE8LHnMQERxoSAQpwwLHdbQYvlyszIg8dgClAVzwvxZHm7Ua22w8d0SbyrYL
	 ylTNMrrlymuvHa4KthnaE0+I9Syoy4ACnFJuUMPUOGIU5ts5FDPy4hK6O+zZQ/JPew
	 Jt+QesV2nhbqOKAIOyS91TEnNIVMgsC1F+7z9tjr9BB2A3P0th1uOIEkB0ruKQ0/rm
	 e5DX0PhPKLYFrPuJcvqZs/qHjYPUT1P3/CDFa91ezy98VbRhMTqu37o7D81krbOay+
	 MxCPB3gDcXCekEromt2q5+quKBHOiUNFU4J27PFE1rlhK8MsEgJqi6GwKa5qk3+JKY
	 nsHR14P0u3zvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97165CAC59A
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175842479357.7758.7919948482408694429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad85411a61b33caaa01eaa7bc6787d0f45ad2c8abcf9c5efac7df33efdd046e1
Date: Sun, 21 Sep 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758424793
