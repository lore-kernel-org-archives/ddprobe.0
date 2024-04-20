Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ED366FD0
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 06:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713595823; cv=none; b=ET1JcucKmLUN5bCz+cKG5kbArUmBCIf1Eux/xHKtVeeHYR9bEcXicrZqpooCSu+6u1iq671tm0ofDsQxEBHfWiK+EQTXNP1BjcoFZ8tLH1pPYRFAUNsZ0cVgEWyyMJw26eDnYDWmz1bD6yLNHxmz9Adc8+1Axuu5c++d7Yg/kdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713595823; c=relaxed/simple;
	bh=vfewU2rPJFnvj9R3NuNzUwURWIYnqZQpe4ZHXMQBYps=;
	h=To:Subject:From:Message-Id:Date; b=sVTL4AlyHRcaUROPxPzsQlo4YqY/p2OeQZ1/t+Ngfn8sEvUFBh0BZZsngeL29WrL9hg/cigjxjUIaVNsFczcr781la1lCJiJ7laAads0K0KSrbTbVrApDr5LUoPuyZPictDUonWExT6Z7dEC3lGecOSuaW+xyRC+lc0vCD0HRk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CxMft9UQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CxMft9UQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9FA9C072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 06:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713595822;
	bh=vfewU2rPJFnvj9R3NuNzUwURWIYnqZQpe4ZHXMQBYps=;
	h=To:Subject:From:Date:From;
	b=CxMft9UQq1jEOMdTipcRkWf65DRf6tpqFIVg1HQxU52ymhSHi1BQKyZiiavR5t4DY
	 4A9fIa0VC4pPeo1vqYbTfdFkr2BQQrNJOlluC2rrUmXkvNcoOddGWEN7IkURZ96NgX
	 wUL7tZlaT/g1f0GwcsrrKtbqBsKuyA5PYARzuvKs2146coaW44V45JGoQC8xRLegTN
	 J62vfOtp63iDKGYUb+xdI5XH8qc3fGUOZgY7gUfPg0e0SIlkXEmHsO7/+EMEPKwLf0
	 fNIVZWM5CSM4QabPoIrh2I3hZaxI9L1jbQEEHdPukkNjg8NWB1+B7XSU9bKKGI3RwU
	 SmATcPlHHtjQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3E87C4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 06:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171359582276.16063.5832354761087568054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8a2c6ec8fb4a3d687a3d93fb99ed48cab9cab3d27241bb7f3f0a34e7ab0a57b
Date: Sat, 20 Apr 2024 06:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713595822
