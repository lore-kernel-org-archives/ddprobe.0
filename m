Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46483E54B
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 02:03:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780106614; cv=none; b=U1lUhf2IgwI1E5wwoIoaTS2RGIBvS7g6zWxvFbAGLt8gbhpZSw1WRsfXqBNfPbHcxTLTw0sApES2pGNVVCmDE6glUHuzmLGfHY4qGBYGmEadcbn3Qz6VBUnG0RH55jvA9C1lp77aHP9WR8pCAnQefjJuYVXGazd+fUAnbbomdjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780106614; c=relaxed/simple;
	bh=HN+8lo6Vx/y6pwTuLllkQqs+A3VZpQUEPtgHIudXTq8=;
	h=To:Subject:From:Message-Id:Date; b=PFlP6i9rSsGS6cV70yONyhYcdXKsFbigtZzRO+6wmhomUrPOKDKUm4GX3T0S3fXp+EogE/AA+bKG/8caBiYleJ+lDCpmShZQ3rq9FV7dUn9jqeeKrCZbjqPrkmVVoFwN8tKAju0TrBBMYcCbxEihKFUnR7ei0MvQm5wA6CnThsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yr488n+y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yr488n+y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5E5CC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 02:03:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780106613;
	bh=HN+8lo6Vx/y6pwTuLllkQqs+A3VZpQUEPtgHIudXTq8=;
	h=To:Subject:From:Date:From;
	b=Yr488n+yF6h2juux5QWoFbqeYl3DkX9+nmkmKAC5yPeL76cfeVBN7npsUK2Mvrzq+
	 /vWv6T/CF9Gzg8IoO8EMSBcfEPXo2K0Z8Pmc8pM27IqetMvYc83jRWTCrpa/Mai+q/
	 5veytmyFcAyj7cQRk6PjTx1dsmrkp9gj7MCLTZqjbpccBhQYtUCJ7ezxt+iLeNA1Gr
	 y0IlovT1NZ/NjRIA0PBdUN3NYzouYjVsitPLYH/mRfnnmctYy4mzP1QXG4y/SQw3oP
	 RFwVUPZut8mdWir8sgH+ARz617YOE6jJagigA63Jc0p0Mch4ZJ3IY0RpS+80Bp4Zw2
	 DWzbNHweKlBYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABDD0CD6E52
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 02:03:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178010661368.17689.17736688270197814178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3d78c632dc5b381bca9494faf948519c81d678d3955e4c3dca7bbb50cfee3af
Date: Sat, 30 May 2026 02:03:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780106613
