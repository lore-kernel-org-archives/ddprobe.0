Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66FCD37EFF9
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 07:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780385674; cv=none; b=MaMmdOae89y90vgl9oqLjkDaUiJORwKWAtdxYoFjguU5Qprj7ajZh5QMQZb/DdYVIrpWNKYYNOSOWAfkiP9XfuI9eomHpJazgQkzgo5Rx0eBQHyIdhL8U3n2xp6WQbiee9x7FjYbYxfQpPuqvj9bkS+dg1slO8KBkYRyb493vmY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780385674; c=relaxed/simple;
	bh=+F9h1LtbweDPNLpXw44k1+mvsZ35nGM7XDwIoI1xCYQ=;
	h=To:Subject:From:Message-Id:Date; b=PRfsO0rR/JUmp3HFL1hkl+bwgrjTDRSz4M3CSV+hXC5wKSnsuQs2sSFFgUDmAuoYsnwqL68FnWzptcsvxVu8DSRKPOHxoch7q0LTgFczT4MM1yk4lk3UUpgr83aYmVV1z9X92o5oVBJjnPpsF3b2YCp7n7KnU0rLyrqWKdPIers=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iz/XLvAT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iz/XLvAT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1857C2BCC9
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 07:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780385673;
	bh=+F9h1LtbweDPNLpXw44k1+mvsZ35nGM7XDwIoI1xCYQ=;
	h=To:Subject:From:Date:From;
	b=iz/XLvATaUZShEgwmUG/gGBqxKgvjqluWRxkGheeR6g+ge8SBuAW58+797YJpgHZh
	 OkrPeE0h8+yDSK87x0STr8o19m+oO8i7ophAoyKHN2HJRCQqaDPjo8XlTGp5eLfpur
	 x4oKQWJBSIApIsr/htx7rRG3dAMISIfMfTYhxSOnqvb72i1rkMMX4MwpN7NI1IZgoi
	 B2P/4jcfklGAKbTTvpeIq4RTSWc/AGLGzKAMailNLDNrRzT50yIjBcSVas4n0ogELY
	 inR1YhrUSJ+e8Gm8J6+Hj6F30SkO0JVL2mKoUb0Cx+AnC4YFzTxBHdaHb9c7pc2UfD
	 VhZss3VtGJvzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA902CD6E4A
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 07:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178038567368.19354.16887082609740062149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f082905b7e4ef5b7f25ce49bb991f90f4953b5308d1b102b41aad5c74c1afc1
Date: Tue, 02 Jun 2026 07:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780385673
