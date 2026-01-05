Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB98A321F5F
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 04:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767587634; cv=none; b=XGvJsE0g8Eyxvp455FhJ6zXcIoecHl7DVmZ+FOAVhE2sxP1lPBBNCmWR71Ig0HByK/4gPZslvidFbEjaG7yMFxjrV5cr15zXoD9T52Ri/IjX+PjSzQGpO7cL3cmcypNTgiL+nz7hYUxkK36uMoQWvbdU+L1ifaTOGSjIouXOgeM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767587634; c=relaxed/simple;
	bh=zXu98phJ8ZMPjfHlZ1eI/IrBmHVCEJtad92Ehq4ngYQ=;
	h=To:Subject:From:Message-Id:Date; b=U0HmhMLURGLk1qkSy36ip8yXEimrRoTUAdKwJmMBaNb6pjPjVlZuaXL01y8FPb5Tsfso7bhguo2TrQVJIHsKoTbMRbgbIYvGhEddV80/BWj32XY7ngW2JFDq3ecQklI1lYHVQtxfYBd99scyE2+3Bhw8QIz9bJATO52UJBor63M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ps7kdhk3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ps7kdhk3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E8FC16AAE
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 04:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767587633;
	bh=zXu98phJ8ZMPjfHlZ1eI/IrBmHVCEJtad92Ehq4ngYQ=;
	h=To:Subject:From:Date:From;
	b=Ps7kdhk3a4/srNlC4St+TXAsOjTwOwgn+D4UN+arjV5/Z/R37I2lPqsLV9BEWEE9P
	 TC/dSC07RjZm5gMJQHQVQuskmIYHJiRYcNpimKU7v+gEn2TamlZ0QlFK2Zlc37Fzdu
	 V1PXMES6mBzafTFj5VzDXPCAoxP3VcoT9kqJUbSKD02+a22tNXeuPxkp9XLf1dkKLk
	 wmR2SdtDWfnPNtJLxxLGGg8Rd8lwPAS/4Tt7k3OQxQuvXb5y33/Mz3/U1Nd194b9MF
	 2RIztp81l/taidexjGHmFTGJrjeRfZLBk+blj5dd4hqqUcu5SUHPQRw25RvRGQSnvj
	 WUGqGpJqRuokw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93674C2A072
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 04:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176758763359.10511.6818249006547943643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6aa6221ed83418eaddfb8e0f94879553ee7a692e4c6215824b847fbb66eeb922
Date: Mon, 05 Jan 2026 04:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767587633
