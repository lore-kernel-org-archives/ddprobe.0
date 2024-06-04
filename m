Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67D20142E63
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 08:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717490723; cv=none; b=nFISxDnmj3oT6sYmVGvKrKYhwfzYPzJN4vtGfkg4W86ai4wZjv/cMeDXCi8w8Ts93M8ZGvCoCrNOnM6oWJ22Nbm736m8pzytfBdFPj3k7PfQRoO+ojPxKQrO+BXRBTmhCoq0SOOdBmefzgTONGhvspCqPLuHhobpqeu6diMHVOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717490723; c=relaxed/simple;
	bh=psW1foFix2BJ9fgHE7XWAhkbGdsRwz9QP53GKnvZ+VA=;
	h=To:Subject:From:Message-Id:Date; b=Nkqn1Dd6L1cjREXzpUgKKNS/u5L8j+bHO5iI4uNLIm2no8iXlJkrhd735KoFDK5c8kFgkMoveQpGeAVhE9La+bJgl+fmpmbX2kSBFOX2Zb/hgtGi2txRiC8ljqWHuZe7WIafNI4+0gxVPhCQWY92hnjzDf8aAC1VIYIPIt4VH2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tRWCKklP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tRWCKklP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F00AAC2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 08:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717490723;
	bh=psW1foFix2BJ9fgHE7XWAhkbGdsRwz9QP53GKnvZ+VA=;
	h=To:Subject:From:Date:From;
	b=tRWCKklPb9+u1clYrnQos+JqSBI+C1ycEeuABSKxRnG0Untelx+gDlGpJ5Vrcy2zN
	 HSm4EMfF0R+ehBQ+SjBnUiQV6110WuF7HXEjlidvCEHdAiqgNcX0BslQL6y/yvC0EI
	 ULvV1GpLIpeUztubmk5Nt7RtECYfd4bBNgLWMuK8kZKlNXUamvlKIXbYQEX2G8riGG
	 gJcwLzOt+mRo2VvC4naiG8hFaTTyfHU/INdd4E2/tQOMxG5F+blWoZX81WheUCdKlt
	 QEBKCz7RlmjkvaYHRh5j0ZDi4yFX2xT143IuRn/PD0cMWuCHNODLSB6abVHaB0bil8
	 9wXS1s5aHghKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D521DC25B7E
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 08:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171749072285.15140.9685200388647643751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be111ee36284eef236ff8a61d19bacade91d252cb65abf5022f2df8e0d452b7f
Date: Tue, 04 Jun 2024 08:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717490722
