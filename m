Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25F4F8286A
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721344554; cv=none; b=LTNmEJF3fVRFmoDDHoft2PgXVjFFXIJ+UkSbLVNmE+qXT3kFdi5hynOQjZHOpLgm0DHmJdTbLa2URtJRq000b+nCxJUOVju9HtQ1jvF0UeBUCJW5nS8PjRb8wVwiEGH9ZPzOWoy78efvgYK/Yzyurunfxb9Y6bf0acXluwGxSgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721344554; c=relaxed/simple;
	bh=V68S5s6oV0Ya9gHLJkCkiK9Ak+1NV70xqJViFXyG48U=;
	h=To:Subject:From:Message-Id:Date; b=GDUzXpAhO8LXAlzNGCIiuWBrd07o7tteQIcBmvWxSDHhAh4R1zshcd9oiJ7hJTOeXOkaMawthlCc9fJEViRNiGv2XLeAuAj0Ia3D9NHGP1Hjyd3gJ/bCICmoOnMWm/vf03ThHPdg1XWdOnyafaxcYG4eJoFK8vBL2gP1yHn4bpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QEdVRq8c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QEdVRq8c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A96F4C116B1
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721344553;
	bh=V68S5s6oV0Ya9gHLJkCkiK9Ak+1NV70xqJViFXyG48U=;
	h=To:Subject:From:Date:From;
	b=QEdVRq8cOOEu1SLMaybj32cCkbs4dloO0p/OXSq9sPzz9dCpz5U4HFSBOBPiWcqdk
	 YpYDXWPomdXT2z4GJg74Rswsg6eEf4hcKUDr2C9/1ndU52bZJGUxuVhJwaj1y8hISs
	 MqZqDRmK5hBJ7MY1/5tEX6ZhcDNzdfsdLeS7Hcuj8q81yecV3Nw6NZjkEub/5FWHO7
	 xlPHvtvifOvPtXKI8RlzTYzGE1US9DZA+1kzDqS/YjXVYExcHFH1LPngS4xMycmj51
	 JjFCrc7eU6YjCVENmyIyeXS6A4DhDDlygvDEsIFNU0y4VsPLS2ZRNOY84k2p+0KnjI
	 rHCNiOvs+n1tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 993E1C3DA61
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172134455361.30049.17225789037859265654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95625d34071e58c83e09e078d8497abb169f3158ae602bdeab0c50564f182fc6
Date: Thu, 18 Jul 2024 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721344553
