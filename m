Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EA81472789
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 11:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784633315; cv=none; b=IhvjWIdUJpDikiJqMFogOF5+YwVeFsWcRfD2HICdkx13YlW+xOTlys0mO3TDUDbA0yvS4fIbb8Tm0qSMWtVm65dn1SlzO9lZiSsAuQpICHu46Vwj7o4Js63bIFz4NjV8QndsJ04Mzay7Kcnah6VU/VI14VIlfSMjBzZJif8J/Hg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784633315; c=relaxed/simple;
	bh=qN55ij0fQXY+H4PD2b9oZpd5kPGYFzsoNei4dB2H7Vg=;
	h=To:Subject:From:Message-Id:Date; b=omCnBeK+qGRr7iEdCRiJKaBdOqq/BKEiyi8kUxkh35R+SDL8dbX/3U2S428lBAJwjm99M8tRsBawa6K7QTy4YE0qy2xUJ8BWr3KBmw9WKcUdi4bFUeg0B5AyUi0zzAeSk+sWogSLU7RgHoBPUmMZADV9WWdtrRflsXc5YmVoPAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AkA3Skup; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AkA3Skup"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD17BC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 11:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784633313;
	bh=qN55ij0fQXY+H4PD2b9oZpd5kPGYFzsoNei4dB2H7Vg=;
	h=To:Subject:From:Date:From;
	b=AkA3SkupVEPpsSNBM+Fx09DfdKUej3DPA5fM6FGUJmHcejVmtzjwvj3CQkca7qqXD
	 s9uLVXVOjza2z87oU7QjcztUWq1QRKm8GXJvvYpPDTDOrKqSBoqIWjA6moteNMQxxY
	 TH8r7lgYVCuGrik9kXWYJn4iDKrevOQUuZxnjJdOCdrfb/z7s2PsV7LvDoBv1GRr2K
	 /lFDERpMGMynloHQ3JdZvdwJxClZSyu3Uuv3UAYX15X7IjUDX7H1kjhtIPMnW6QKP4
	 I6/pM/U985ttl/gGpLTzQ/OUjX82/R0+wGp7NU8kG9WFcAM91RrJPgALrh06b3k2iz
	 R5U+ScyZgsy/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6168C44529
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 11:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178463331368.16313.14937887031620151975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e1c4884aaec217ce0cb35d6e0d75def6c01281c20f97a76425c32823b6eb1f7
Date: Tue, 21 Jul 2026 11:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784633313
