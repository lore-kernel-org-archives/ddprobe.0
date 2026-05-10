Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 368702628D
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 06:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778394634; cv=none; b=U/ImGkWonnAj6GZpBOdwwikYFoXRsQyp2apBligC9JXn6ZzttqnSFv206h/X347/jyhOmUEFyr173uqL0aUXI/OK7F2eHgDSGRbmP/hP2IuFT7P9kSHv4p5FnjZQeYRgtlofuh8eNvE8ok1f6LEBUxjST/slkvbdGdbnrbio3Ws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778394634; c=relaxed/simple;
	bh=I02Lu6+GQo23rvnpHB3YiLqcI/xLLlf25ue6cEQN4GQ=;
	h=To:Subject:From:Message-Id:Date; b=Bw+gefRfu20n4kL3S41ZvagrX5Vgf+pBY/wPFt5JLolEtGWwZ8NieqKlGCpdha5SIyzppR6AKwuv2xgtf+38GGxihMkFVmZfxKJNyREmrIo7cIs65aeyapW80odKw3huxSrVOzBUC+RNwr1xRDwvcl/JJeVLpKTEzY16yb7R8X0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WrjJZQm3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WrjJZQm3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3D0AC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778394633;
	bh=I02Lu6+GQo23rvnpHB3YiLqcI/xLLlf25ue6cEQN4GQ=;
	h=To:Subject:From:Date:From;
	b=WrjJZQm3P1Uwnxg8Ua/d+07MLA9JpXqDn2szFNxPNX+1yeDT3aOaHYz0ZAHSTGddG
	 DAPKDTKqXvabPdNKeaGsv/Z/SpqLSqXDHKfRNv0bB8Gu4fWKwbISueN5UNS3bwLQjP
	 oSs/dXjE2bHvbGaHOlTwPcULmoJuzZ5sWMX7EpgKv+465hp00rQr0KpWcaucykEfnr
	 MNOw6NBdxgnsJi72f0GRrhm2mH2U42MqrrIjMfwjKDDbXxF2MHPTIkjQDYCWGAF5fs
	 GyTRiQ2ms24dgxCei7RjL58xr3bfA1SHcHMrdtPhByerOW/R3/X/3HXJz1ORVJpiIM
	 awhNIkx2/n5HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2713CD37AF
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177839463369.5891.8966248314974763834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b46c483431faffdb847f744e01cda2e6adfc5bef53a688d0fc971d5eb442524
Date: Sun, 10 May 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778394633
