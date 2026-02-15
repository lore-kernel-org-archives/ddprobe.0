Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7046F223708
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 02:24:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771122294; cv=none; b=mDG7pocbjuXbWSZ5VI8iYH1FJr60zvjteGQLT4a+6q5JZ7KUtTrZgENY2C/vwOXpJ24SIaP4pwU05LMhYzrbngLmCyKdCFtJJOQOaMzsPuISW6EbjTyrVfMR6elEDHBxvoVw14cVJa01savG+VC93vLdDHIazSjb9pbhbHYX9HM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771122294; c=relaxed/simple;
	bh=z7wnbqsEur/gbjjR1SMujIGT5bDMeY9DaLViho7BmCY=;
	h=To:Subject:From:Message-Id:Date; b=CrSX+yDdjm5hKXkO1f6Q5G9qVYO4iX2phgITi2biAetE1N0lrToFkJ9GgW5QuTQwStR3wqKDU3N5sHgJ6GweRIttyOa9QMflCBLEz3G8MLDmbbnV7te87h/xI9aZ/TNdVv4P2eO6OUB0UiuBstDQu76knCOKvWe6LJ+MwCBs1dU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DqJnzWSF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DqJnzWSF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C25EBC16AAE
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 02:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771122293;
	bh=z7wnbqsEur/gbjjR1SMujIGT5bDMeY9DaLViho7BmCY=;
	h=To:Subject:From:Date:From;
	b=DqJnzWSFB8O+dC6667tBc9U7wCu2/gFpvixH94rnmp8xNGOgR54wURUQGSPa00rxu
	 71z0gu94i6XJ2aCK+f9yJrrwOOcDiNrh6K9mqrKDi2RPeihLq6FD7h6SZdAv1efrTl
	 LtliXf2/G+eCJSF+SO19NOmSt5wRQTRo+CHvBp6ftP8F8cae6MKocCrm3CSz7Xu5jU
	 sjPQOh0kHAJAi3D988JLx2Pw5mC2m8HhScIwbAxHssx8++UNOZDtxwMTtMCgx16E/P
	 rK7reFU/ySg64oikbAcjT4tTGuB7M2MmCgvCMya+3QlmJ3GOTY1dmaSAOnzJHv4Qib
	 jKeK23yQhYHQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA47EF585F
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 02:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177112229364.26147.2844472093721442458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2adec26fc37c33ed06f4f0e7ee81f3af4f083c6d9f3a5466fe65a975d54f598d
Date: Sun, 15 Feb 2026 02:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771122293
