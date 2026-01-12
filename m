Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F435310762
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 08:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768208034; cv=none; b=EvVnjRaX1Qfv1gmpreq39X0BnIGTGn+4ew8xTH1oAMt1HbFyBRNMZHhzbR05fBPz1ois6/U+KxnRsZ6YpErZGRhPkXc2hbL6DjDJfrRBh7z/MRJP4GnGpT3OucF0+UvruIkDsm30jlFaWiPCB+8PKLzhecAVD8VAfrv/Eu1elxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768208034; c=relaxed/simple;
	bh=wdezG+0x83Gmz5QF5XavwcpSUwnXauppk8tgBtkD4Og=;
	h=To:Subject:From:Message-Id:Date; b=LoiLrTUd5an65Rpds6eseAwBDWDU6KBItPqGyMKuJjSYCUx9dvGNpiSj9sXGOuRJvwcua2omhGTIuRxqOcyJGHlqAXLVRFhADV0av2i2X1OXOMZn5JfbgvL+sXK3FrQNA++yfnISvIbuFUvZ0Z1TO0JNDJPIRo3Sjf1tDgBFQH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fyjGkfmb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fyjGkfmb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E9A2C116D0
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 08:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768208033;
	bh=wdezG+0x83Gmz5QF5XavwcpSUwnXauppk8tgBtkD4Og=;
	h=To:Subject:From:Date:From;
	b=fyjGkfmbgHEkegDkwlnw4YSTqbb2XAtYQmnkIFkVTeiM9s6xmMzWhqhWAfCtpbWH9
	 UH1Mi4WY20U1N8jIAVHpxJnbEqsqkVHYkj+PF7hPb01UDA6k8iR9ZHXBt12d20uEzi
	 BcI8te6fHE5radxNH6B2z7Pkhbsvdm16Pl9jNOJxMgkQ2wpbSjmQQ2Ox05SR9Lfg6V
	 xH+glWwpYZ54EJjRSEDbW4jGapqsG1xh3DvMNlCub7xuDeJlGhFaHlYV+Bh4byN4Xd
	 U80E+NfnOo9GLIFzCG5nasW4zJgKNZ4PPNXiKoGYugzCm5ENXMDHDUsO7Y3T0+PtOL
	 d+4hA7Nf9YHOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBA3D25050
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 08:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176820803358.8373.11320489765788886931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c5ee0c4fd8082fbe7afe598904e46aa82bc212ff0b48f4b8b3cf30375f6a2a9
Date: Mon, 12 Jan 2026 08:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768208033
