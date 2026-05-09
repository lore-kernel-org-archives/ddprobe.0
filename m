Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29C5D2F8E95
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 15:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778342254; cv=none; b=ko/EZPW34osGUDwudKsnUehW1aLEQ57nXwWR99baRZLKgkLCoGlRNSO611qh+t/x2fgmoH85fmmuw3TDelCCrv02WfCfXGAOLtEZjK+Q+Yxmj4Qx+VFajBsosOsaB4nOMtu9mcDNe8GgZQKjbZ+6K7g4zpOWn1sQt46cH7BJnnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778342254; c=relaxed/simple;
	bh=p3E+yj8e3cqeU7HzCJAUlAr9kgLGMmfSRIfn70LbYyg=;
	h=To:Subject:From:Message-Id:Date; b=LylPAtYsJnmq9kzNOyt7SUzM0Qs/c6GiDKpZPFKF5IPezH6V4anj3l/Gp90KEeYmEcFwlKJ0/NZ+Cw7T2uJoXHuQ3a4FVktWYH6Xhug/cqSUeJ7xDgKAEuYySY99ExV93KEe7WRBINwTtzHGEZ4l0QDtZgi/HUlHtTJCXOkiIF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S1Yf5mAY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S1Yf5mAY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0F51FC2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 15:57:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778342254;
	bh=p3E+yj8e3cqeU7HzCJAUlAr9kgLGMmfSRIfn70LbYyg=;
	h=To:Subject:From:Date:From;
	b=S1Yf5mAY0UJZaVnztJgE9BvmLRzJjxeXzWAoImh/6sfBbRSSxZuNf3nYdMy0UR9SN
	 WKtWGjkwzrzslQ6q8TSx+lTEZY6sal31dEb1Ige5tZY4s0koNoZTWypvCRR2ldy0PG
	 cpKJy6KWTxacxCwpnlQnj/Zofu7HKo3VRc01j0EY9Bg4Ntr3gMAeA8GK0mEU7w4oAi
	 aSyyrwWbhKiFaFVrjQUnGQ78l9TiIxmHRuCUe9MJ73xAGfqN6+grNOXDMBfybWv3cj
	 Xr86etel62nTKvEE2M3ndN1B+J53ZEw9Qy61BpXM1jzo303FgGxcrk9YJPQi10y1EE
	 97RW/NLWGpumA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1B56CD3445
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 15:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177834225377.14275.10341102939112580271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fec71464f414e745be396167adbc908051b1a5bd15334e2c0eb3faf0ea28675c
Date: Sat, 09 May 2026 15:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778342253
