Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1240817D342
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 13:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718113703; cv=none; b=F1RH26j/gebKEDc31ju7Q3H7PG0UuW+Ts+iZ+14jzrgeWopSfoXX/3kYJB6tYUXrWPzOzsq2wh2UrQRIjUSl8eYwGhAWGlRlyxzxbgRRsMwsC/EFXpWyBvh/Pah47wxBcCQafj/kG3wvDyBmHk+3lzohNU/PGxxajdgfjfbEji0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718113703; c=relaxed/simple;
	bh=7EivXKPESCKVgfC22D6ce0iKidQDcRXLFldSjvYFqns=;
	h=To:Subject:From:Message-Id:Date; b=UJehsl1vPKytVJhn7sE19V6R3H8ohwLcZYznpNsyAwADmLjgQcSlJZSZU+BNPtK3qEosbzdXbBdfahtaSfB4hv7wWrg1wRFepDiRBrLWVTxzaX8JU3zVf/bYGWWs/YhSd3Mh40/+ajYazCjd/Q81tS+p2I3Q2gxqTkkFDvzmSyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qGJsQNv3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qGJsQNv3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC352C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 13:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718113702;
	bh=7EivXKPESCKVgfC22D6ce0iKidQDcRXLFldSjvYFqns=;
	h=To:Subject:From:Date:From;
	b=qGJsQNv3KEpEz1CV+Y1aN9P56nvwqlnVhV51q/Xokr+y9AilOwa3HCKvyHrex/pDC
	 37gKkPowz0zdQaMMOAb2/6OzS6Qm2SsdyHbfNpWpM+R+C2sNLJtYnI2G8y03Zzvsum
	 BIsvRwnU0CaBzoCLQzdxIpoJlLrhJySKBi6XNdTuWUeY2YI+zZPRT6FD2yM2lRYnSq
	 c3FhwFZNY4FHhcrWFmZ+lK+XCWhoBbd6BKsx0XAhXs3AS3WdRd1Y71OgNltsvnnXuH
	 q9MgSPXwR06f9q0a1GG4VkDJYTMPJgs/D0JdPmQuZ1Ys60tGc+xQMQJ1nRTVaRb16w
	 rbzhmv63SxAVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB612C25B76
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 13:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171811370282.23877.8563533328284369508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df06e8ed61bd3169ade67868c58e3628675a1d9a2e32a9590a15cc357f59545d
Date: Tue, 11 Jun 2024 13:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718113702
