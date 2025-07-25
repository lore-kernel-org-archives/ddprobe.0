Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43112381C4
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753404594; cv=none; b=ET9Sw1489pEYWkgm+buvHmf7Q5fcJPaliy5tW4FaG4IhH1Qc6mISfIBC0F+XPT5reiPZgzy++I9kZrHuihTMjK62Ey9+NeZX5bEAbJ81BZM7iVVkgqGFqh49ZB2RB86ps23pWwbpy4wJnpqGGd7bsop+8NupwZDNjduUtzhpRkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753404594; c=relaxed/simple;
	bh=dTNzbjIWvpJKEDCOjO2F5FS8sfWyCXdyw3Elp06e23U=;
	h=To:Subject:From:Message-Id:Date; b=r4ZR/176TkbAEPMAvrnuLb7rXPcmo8l6ktI3mw8bElPFF3YXEUo1fZry0cFJNaBEwIeJALqY9k+3ipauHDH39tjX5sWAWtFlOJtNGY3CV0n7MztfetOl4y668xTwfpz0OcHEDzksmaOkNRFSB60Kk4MPlMSNkk1yhG8tFG5NbzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nOZybzvF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nOZybzvF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7933C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753404593;
	bh=dTNzbjIWvpJKEDCOjO2F5FS8sfWyCXdyw3Elp06e23U=;
	h=To:Subject:From:Date:From;
	b=nOZybzvFslqSf2blrBee1HLwOD3SWb4otVkoGmkkuXsouy7FnNXMKVpq10mK696vD
	 rKIGQn4cr7I6yyP2qKM76kdclvTkW52q5arbPj+e3Un7j+akIeAUb6KQITYBH//jm2
	 L0uikcWHGNUrEqioZUtNMOw0Bx6qv73EFAINhWolvdwfoDUCOy8XJt0NqyrOkM+BIx
	 hkCeTf3vFUzhFZilUqX3MCDQUV2Qxe5hj+AYorBRubeXMDHA9Nmxyq1idnKpSYmauP
	 DZ/HhvlS9ss7gEiNuQXS53WN5el8GWelvT58X7RDam5eVaoSSnmgJRVV593tM1BFFP
	 /g74zOXXmJqxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926F9C87FCC
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175340459358.20377.4869489764916758757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2236048cea219e4d02b204d58fcc73716a8ec3e08caeebd7fe3ec38480266ce9
Date: Fri, 25 Jul 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753404593
