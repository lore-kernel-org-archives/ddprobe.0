Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 318D04418CB
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 16:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775061934; cv=none; b=A9Q/Wvktf5RKmjq2ACvinrKoM9VO833NiCoqzxkJzcQqmxL3QIsJCWLdYLi0RMJAc4seziBCWe/fZ65AmK+5FCnubWBj3dMv9CuKrs3x2fna7BMzBug+3gOHDAOFhIHYYTc0TztXbdPlN3+e7qkgfv9gjSsLql3JSinZyxx7eVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775061934; c=relaxed/simple;
	bh=HdJV8N1BZ8h3Y10ssbnzCPYxrvHKdsCXbXF1Y+ul64o=;
	h=To:Subject:From:Message-Id:Date; b=OOdECZ0X894CLjugT8dSoW37UTlYfV4Ld8igCTquap4MsX+QQW63Zn/fV+4fDNoK39ZPk43uUexYLzCHotD6F9RjVrfIcH/GY247FtizSz2f0Fgse9NogVUqPBlPMyHsOswJ+Gf5eSAtcdgwY6FV5YKiRiwoaCgSj5d+hBSgyVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bTe2MEhQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bTe2MEhQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9754C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 16:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775061933;
	bh=HdJV8N1BZ8h3Y10ssbnzCPYxrvHKdsCXbXF1Y+ul64o=;
	h=To:Subject:From:Date:From;
	b=bTe2MEhQFoNkqIHMRLVqDsY3Q4GIdUvjsFW/45Qqe+qZ5er1zV+SkxYjtUX3sV2aU
	 ExwD7iSvW7g+D+mZZ76LYuQLGLKp85U7AboaOJBQ0AvkvTlSwhtZ4mYt61UdYJUx2N
	 FF8oxV4/DYN8VJeedOg0+qapCwSv50XbRmLGrx7vExd3Nwvfx3zGGEAQi9XOUxtsXy
	 nKA4YvFUq8WD9HsAFsv4kVWTmgDVQkzSrM9JF/OXds6CyM66kxw08EFQxVShQxTiZ7
	 huNB2Jr2lYrJqY5cMz85uFUSn/aiyFm99WpddUVd2G/r9DNq05A8bt0aomJ7voeYPu
	 vhHV7rA+gW+Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA9510F6FD9
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 16:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177506193369.30714.9182490576555694370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cefc140d21ea67267ce71e6bacf7085027daa6b01f950d69ee0e25c9b23e5549
Date: Wed, 01 Apr 2026 16:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775061933
