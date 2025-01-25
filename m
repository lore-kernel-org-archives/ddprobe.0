Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47BA8192B74
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737805554; cv=none; b=HxVjbsoBgON1tzCdHKkBw9wgfNmwrBFB5PW2A0GNemW7SrFa6wib3cQ+ngc9Y8uWgUR9nmaHJcGai5WOmw1yvgFYKt5qvBVhSIzBeiixaxwu2wRCY4TW7c4EjB2guMiyRrosCKKeamc7aHOPgwDltOIVZ3M+f07QlAvfiGzZLb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737805554; c=relaxed/simple;
	bh=GFplyBCZZNaLK7pwHRB4FcRnoZOgLxdhgASqF59584w=;
	h=To:Subject:From:Message-Id:Date; b=RIF5tHqoN4OH0z2ukh0MOjq9mteUoREIvypAL+3cXOLVM0yAYQLSfoOxBzXZ75JALgBxadWHK8PvIgwlUNFGOfN099Z2PRNgFAgkPiqNGAcao9Z2KMoyRysg2LskTwYhE7Fjeny1H+1YxKnlrqmUaE4E7UvH1W020gpr2pdgl0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rl/LwwrC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rl/LwwrC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADF43C4CED6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737805553;
	bh=GFplyBCZZNaLK7pwHRB4FcRnoZOgLxdhgASqF59584w=;
	h=To:Subject:From:Date:From;
	b=Rl/LwwrCuFo6zuDLxy7IOrZHOEdoqlEy6rKqII/pBINSBFn4NckXVFU75oNP3aIag
	 G4UALDvmoiGf2XCymBSK8bOx4EoGLg3Dg3ohiHL7Pd71tM2AzlWGX8D04IEp/gFX7S
	 gECN6bSto2eJvtR8zX3IpEmr0VESu5904NqlAgljxMZfrZ5+WD6b5N2sx8loCn7Q9N
	 R7haC63PrMge5idbhvR5/fupwppspb3XCMKK8PL4xxIwOr8xL/5khqhuHu5Pxaapdo
	 IrXVrQvo1gFmK5N12oo8DuKGAraIx8mc6jw8BQONS2Y8hM6Jd9t3fffrIcBy66wulo
	 pYy6K/5vBgxIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97FA8C0218C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173780555358.15507.876979570754621528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 020a40ae99a3f3209e06d270bea71988168437d108c0d1b306ad309726e4f30a
Date: Sat, 25 Jan 2025 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737805553
