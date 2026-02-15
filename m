Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BBBF30BBBC
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 22:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771196094; cv=none; b=fIhji6uKFLG0zwH2QDZqi3XvIYnBbwbTQ4KARvmw4icOIred8REhc7Jzp6o27KUj1xrAS5k+EmbGS31Ffw978Tbhgs6WoxjbA+A68WlRvhlDc85jl86oiGOxBwAmG83b2VN2eTHZ2dwf+wP5llf8SfHTy1jkW05NsIy/IcQHmJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771196094; c=relaxed/simple;
	bh=77tL2jK6McVpGdrxz2Y7RWZPmlUQ4T8jkjs747B4mjU=;
	h=To:Subject:From:Message-Id:Date; b=UFDKZyoPS0ow6SOwMlY4zt8TGCO6CvtoYwqxKy7XyjOl94ALC6RYC5yLQdUlc3t++9riCNjRgJgPTYbW1TxCQYoftzI7iLQk1/XRm81ZHyJHdu/pKyJVW6WtM4AHk6I77zN2OenPnHsafxzEu5Pjy5L1Koy55fDHxrlroNkSpFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iTQ5pBgL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iTQ5pBgL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA685C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 22:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771196093;
	bh=77tL2jK6McVpGdrxz2Y7RWZPmlUQ4T8jkjs747B4mjU=;
	h=To:Subject:From:Date:From;
	b=iTQ5pBgLy7AVF7zw9RezqlQ/oMM7nR9j8Z80lagZ/L1bD2DPJpZuSrjC81fUSMDtd
	 ZnTE1bgsV81sZ6fp9yNDO5f3MyTSHg29mYV1RPsYJAxXA+Xom1/JN0UzyljHgmGaJ+
	 JYPQCJkae717N5LF7yIJ6iD9FOJttPiVeLw237eoLGRM3Ry5kQyVhRM9hfYLD8tFp4
	 slyuRZzLeHTMadFzVDpS+8RRmskTHOVJL5tVvJOSHaU/f4HZC1sGJmQ/Cv3zpYIyaB
	 9JY1wifhB/fGAwVHikUGrmYIOjTIWj2l8ThQ2a5rYmErMS9fT/sk26Th8DvgqjeE3z
	 T8qIg6eDCV5vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A347BE63F08
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 22:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177119609361.11642.15412937166784625274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 836e24d678bfde6b7ae02f0a88fb35182e78dfb225110d3a1e825906d3becac5
Date: Sun, 15 Feb 2026 22:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771196093
