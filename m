Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A8A2199EAD
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 13:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768223034; cv=none; b=lzEDUaTixkdhSU2PdYaRZ/JPLDsYIOWg1ugtIRKvAq+lajAXDSp/9VrfNprbU7fQKeLi/bfC7+tArStnxH9EcePV/6+x3lbWsml8KHAyS3Eu575NB4vRfYyo4e+35BtQyxiHCm9JMHiGD3YPWolQLwNpKbzjK1BgUxY/v2jNMvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768223034; c=relaxed/simple;
	bh=iyBMdOX0fSeifeaP1f858oTMo/DW8uOZFLD1NHVarX0=;
	h=To:Subject:From:Message-Id:Date; b=Gywz38HO58VFC6m6mxDywz7Zb5yPKCvsgWK7AjZtaXZ9Qgsj/23GmWFyFdVEw6pV76UtEhYExq4L/6dktxuakPCM4/ovdrCu166txIsjfJlIuHyIScypbTJFIK79AYe5I31K+yKcC1Qfiryp2t3XxcE4OCam0SrD+wCgQnDopq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=baMRhx4+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="baMRhx4+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F7AC16AAE
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 13:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768223033;
	bh=iyBMdOX0fSeifeaP1f858oTMo/DW8uOZFLD1NHVarX0=;
	h=To:Subject:From:Date:From;
	b=baMRhx4+xdVi0PxdW5fwQOgL6mQQr8HPn+k+zu+Kpdt7vPZyCWR3LGedDcmCL7e7F
	 ylb0ec7ND0SL3gwVUgJDeaIuMjEKUyk0cbW5Fvjt3rBPKGKGBKUuxuc/6GBR3MlbvV
	 Q5/ODXrgS8BulHD6Q76yWUz6OclJZY8DvkCThBWTpcpIsfgjc+6qjEGihwpDBcJxo1
	 BbMPJLgRDU5rYLLiOKxEycyQ/FA8ZVfbdJkaN6p8/YZT0PGPbbs8EWQIv0W4E/tO+t
	 zNrP80WiGz5oOPoj3BkyldK+QRqE+2bp5IzeiVuQqUv2RGW4dIAKvYFLBNzl3zbuyH
	 Uzk6V5QpQ8PNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902D6C9EC82
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 13:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176822303358.12478.2826854021378636940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0088a242d512617dd3e1f35df990b09be7a8897068639f5d1a79f548e2be96e3
Date: Mon, 12 Jan 2026 13:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768223033
