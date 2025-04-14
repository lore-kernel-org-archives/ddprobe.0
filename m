Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E7C25D738
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744601394; cv=none; b=OeWAnJ81pu2npJ8InGma3yD4Z0x8Y0PVp7a7hpaJGrjASJLmU+L2jzAx4iyM6PlnqjrlPtVV7DloRUxCKf/l4BrTDEzDXka6QRtc22GsrOROXZhdJajcRDjeSMQFu+DCimb1cf1YH2xwXxNlLGYIZjFioH9/wive7dr25DvFM9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744601394; c=relaxed/simple;
	bh=DnE0hfM3ZWVVKsqsQp72cxKoprKur/Je3Job9qLY0jA=;
	h=To:Subject:From:Message-Id:Date; b=LSNRmMnuauqktFiyPNN+DXb5fp0buI4iRjhUu4Kf3VIgqc3Ea4FGUazJJDB8bOEz1WSdp8P8rPgL6eKqgQxwrvG5QNZtC4z3Nr1UyvZi/WNrz0w3GBfnmseEwyCS8bNGibhq7gSGd4rz3J3Soy1cfPBsKcuK0jvwEyBY+TMLXH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZffZdA36; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZffZdA36"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB332C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744601393;
	bh=DnE0hfM3ZWVVKsqsQp72cxKoprKur/Je3Job9qLY0jA=;
	h=To:Subject:From:Date:From;
	b=ZffZdA36BQd9qVDckIwJVHgk3kdZkBQ7MP/+LP2z8i5p+XTbqEOc6nZHy4UUXEZka
	 /JVdkuG8egQxiG/koNIHyLOcZ7iMxHbv3dOQvKXSgxqQPshDdRGmjtJmP12Kk44Vcw
	 Q2qUZXDwBuodA7SFR87+Ee4uEY0wXbvBss+gkwir53NM4Gzrtkxr7D44XbRW+Of/aY
	 UlmGPm+c/1xuLLuiGrZ2cXwVZlvjICGrLJ9tH9ovioOnZ9U7ht+E0LFPMpvDcgAxWr
	 K8qiPqplYM49BLMRJUTzIBkia4bC4D/L44S9REsSlkpuj5QuxE7dCCbYVb8OBGGsD0
	 bHrdObcO+xVzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951F6C3601E
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174460139360.3355.4388242734371153502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be5a7c3e70d08f9e67dbd93b38145e33c5feb82ae715c766e277ca5e8623951a
Date: Mon, 14 Apr 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744601393
