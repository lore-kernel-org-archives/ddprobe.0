Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 409702D9EC2
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 04:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769489034; cv=none; b=l0cBRuaF73U/GAbQUG0IGut556lQ/swYZaToeioPaUY8+wLf/m+QG5qNc67F/8eLhskQ7rfWrGFHnFtAFAEuGRs1mg6E7dsDXP5yROJC+8KN6XKk2mfXyMZ2a7Zg1//usASnZ07tEX/bLuQbIrMJMGHWF3srJv5GIMlWVDzVf0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769489034; c=relaxed/simple;
	bh=+kgjgqKUqGDnPAmhdMJn7gy3oB9Dvw60ElHk9qiYAHw=;
	h=To:Subject:From:Message-Id:Date; b=MWZuqjBlsIY2XriT422euDFql4+FfXZgc8wcd9pvsjP2nOefvJX7WE7RRL032CbsgomBOaR29e78ngJ931JWzRI5T5/ZSLGFdpOMZo3SwvH3BK6ntN+Cv7R0l7FhATqjRKXW9L/RFQ1/I/2FUBIrIiHCmwnUTeJ+SdrMFmNqA3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hUligQD+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hUligQD+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8069C116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 04:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769489033;
	bh=+kgjgqKUqGDnPAmhdMJn7gy3oB9Dvw60ElHk9qiYAHw=;
	h=To:Subject:From:Date:From;
	b=hUligQD+4W9PSAO+Tg3VQBehOfUhn2jarXZRnscK3iPrM2cW4qmUyH4cSYRf8ZxLs
	 3EqZ/63PKdnuKnPgiqL1SQVUmju3tfg8c/Lad/0Ln/n3H8SY30G22DK6SMpO0+39f3
	 4O1d9Rmbq8v/JFTOKc/12ONeNE0gKoMygB7rDOlvhQNr1dCz9aTJC7n4ONnT6UBKMg
	 zLL/eG3koxtI96VGo4Tw1aEG2ZB8/3kw3lUOhi88VjEmNyQk0ZsnV8ShbXKsWmGgJz
	 rBH5gzJwyMSMz9l+GKtMsar9Qtu9aGe6+vgqX1N6usUx/08me2cqcgp1dIAKBCF0rX
	 6bY4lC32bPvew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A84D25932
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 04:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176948903358.30873.14005711981750613418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c738640c4e9722fa13f9f88f061e3baff36e634e55272d422e71f4d063eb43b5
Date: Tue, 27 Jan 2026 04:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769489033
