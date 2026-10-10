Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAAAD1F94F
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 01:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791595234; cv=none; b=jUPQUAnDKRixSFkuqkiinqE7itnaLJOCd3ZLWH8MY93OGaq43lHPdKDI18hZTH9lHVmX4YGmSSFagLNZyDEbTknnbtJirCzHgtWvMl7oTcHw3AdJhvFRTgINwoJwZt+NvGLu9x3g+S7Mse9O++1xmk2j2+lAm+qlISkzp8VElNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791595234; c=relaxed/simple;
	bh=rOAquGrCoNIC6APU73nu5fnx9Jk0LYOMaHTZNikCR00=;
	h=To:Subject:From:Message-Id:Date; b=VdgBXo6Yw2t5N7lrZvagF1sB/kI1jOAOeWC6//2+emzBT1G/mYez2ygDevGmw6njsJaOGpS7FIAYTHGTW8GG1E9KUsZGdZVDS3kF1Gud9Ob843voeIKxsAWnB8N9XzWE2qLw9fGe7WhQOP6kBFBfq8s0TBS9K7VFbcFNK/jJ9Wk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s820YGih; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s820YGih"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D44ECC2BCF4
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791595233;
	bh=rOAquGrCoNIC6APU73nu5fnx9Jk0LYOMaHTZNikCR00=;
	h=To:Subject:From:Date:From;
	b=s820YGih0kEtq0b/nmKIoc3vRvVLG7PjbXNHU7naNujS1yVgGovjHClK7nl+ugtvQ
	 J6tady3sacDPma005HaeyqeaQPHFs8nzM/APQZgKrdqH+/VrUMvMeEAU4NE2R6DaRQ
	 6qBZ+IOvJom3euD9rljwd2sxN0eEMT84Agvu7gM4By2cikZ8bKS1ffQCd+Tkhluj/J
	 mJzG76lmi+aNcFOmqL5pULmmRLuon9r8tetmojdeZ26VSoCjPmWPnapLyMWS8y9+kF
	 mc6keSVnnAckWAdzx5uR3S4mhrpZcdN3USaV52SmfhOSBhEObaaqOLK++VCKOIX0fq
	 L7KjTNe4RurhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0BF5CA9EBB
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179159523368.18026.9442774099066453572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f351147bc2133a9d976d3a793deb3d83d312065a2fe1df2190fd57699682e7f6
Date: Sat, 10 Oct 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791595233
