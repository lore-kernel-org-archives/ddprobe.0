Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BCC2F4ED
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744495794; cv=none; b=Z4nTLVoJjSoJBGOeS4qqJeQ29wVUAJD3jEjYrHK4FYsxmPCRWbrXetqWl7btewn7QK3E2e19tgvMll+ya3y9KA/Z3tjH0CtUvDIwGd6R93p0nb5xmWDFDpx66Bg/agxcpxQ6ds5CSSRgqCOdzUTQAShhhkJokMgt4Z/9dQBmats=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744495794; c=relaxed/simple;
	bh=V512B16yQ4Q7pQUez3PpHMcHUvbR6wH2IfBbYUVY+ps=;
	h=To:Subject:From:Message-Id:Date; b=ZVzIXx6PSkZHPIKSRslWivIXf4RvS3YC1qPX1GTChFfBERzIxAbgujLnv52e3SkmqQQGo3Y3rnubMtu69Adw4r/zAFCkDHPsW94x4cNNweJFRuF7Flu4spoPXJ94VAPMJff8/rfvhXBetfH53R2wEnZBQfA8xZj00+DKOqDs/Eg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pg6oZimL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pg6oZimL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE8BBC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744495793;
	bh=V512B16yQ4Q7pQUez3PpHMcHUvbR6wH2IfBbYUVY+ps=;
	h=To:Subject:From:Date:From;
	b=Pg6oZimLANr94nKyyNzQ/7d7HoHnYynP/zXGZu6I2ptF6eKAA6FChWxcPOpnqd87d
	 xMn4+Z1Dgf/Qc3tzMyEyLjwtjYvfAyx5CGywHMxQNeuQVDzbnApW4dnkZVGZctN4OL
	 PVuZ8f2/KuE6at4FRl8jx3VEotg34fVyN+AsQvDKH6DP0dDIYuviTYtZeCcgI5YzDF
	 7WubaZHGsyy+o+t+7ryhx8e1/QaYPhsmxc6no/W/CDKqbbyZP+rMpiiqo+2BM5f2kh
	 14z/oDpxABjkV8xL91OlSbvShI+/8wVob7R83C0rXLtEYpLDi1PDb0H2qanqrWRXl6
	 ZvRq1/QbegXpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6D2EC369AB
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174449579364.2828.14842326373293902148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cb7b319a8c6754aac0cc9553fc0a054d4f76f6374395b2d719e6d971973c57d
Date: Sat, 12 Apr 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744495793
