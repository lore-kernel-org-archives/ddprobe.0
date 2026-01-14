Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B1DF26CE04
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 15:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768403034; cv=none; b=QemSAo/zsmXRPL30fG4dM2VfFyer8okZXIFOf0HG8k8rrQAhlLx+jg+2NcYF0b3xTYQazsXetZ25a7L1gh9tre8r2qIE4pbfNfDNog6VFKJ8oQdrl0k3p68OPeMyBLtppootDk22v41PoDBIyoiM8+PZqdhqEBS4/iAYUwqkAjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768403034; c=relaxed/simple;
	bh=mX5QCRmKPLhncuHnmxKRiuVHmASkJpIoKOwZKpyUJog=;
	h=To:Subject:From:Message-Id:Date; b=R0nMGkww32dIb8NE2dUIVJzt0N3lTVy4nn2Xey3OFp2U9tWo55g744gs+oUZK/K4XW7L9vSlH1QG8uxs7ICiEUwZaiDtgi+1YSJMoFbGrUHFfhUR0l+5+14z0DgvTLdpcgaBx6Qr+9nE1BXBj3LYh6Q6P+kWRcgP8+mbeYuBTz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jEPxfOZQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jEPxfOZQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F016C19422
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 15:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768403033;
	bh=mX5QCRmKPLhncuHnmxKRiuVHmASkJpIoKOwZKpyUJog=;
	h=To:Subject:From:Date:From;
	b=jEPxfOZQGR9Yh0O+hdIG5P+TieDPHLoP4fZYYL1c0YObXOqa5LIwGBhwybMkYTCZH
	 VttD+GcXWIO0h4XFJ6xfewfC3MqcRltiKPDU6fcH0HqLDAcQRx7CAzhPwbJKuUK81L
	 eIJ4z03q3LfDwVO4WqAnMTXc+4ZZCtg1JK0G1RSvINxet9Kpz0eXTA+EDTKotBLPHP
	 UrXfpQ5i2Hjvmkz4j2YOf4olAF1IF3RM44JAD78MUslbkJ6/LlaUrSMhiiR6esFNK1
	 tvHdCwvEdjib12d5w+OVPa3jucTCGqV14pHGBojuMGWaAKq5SE6+wHmhP2L82lv2bJ
	 QWoTaDh16r73A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908F2D37E3B
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 15:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176840303358.28726.8962029161395174127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e285749393f9e52b1d247d0f909949745b6f1d83db81295e62ecb5f674656ef
Date: Wed, 14 Jan 2026 15:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768403033
