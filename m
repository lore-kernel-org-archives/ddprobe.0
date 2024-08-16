Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A3124A06
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723769754; cv=none; b=jk2K3ANZdH93oD4CtLkPrzUgSLtUfLdJ4oQ8u+D6pOqZ2PfoEVYYW4Lbtcyk9fXbxFchfd3J+AB4h91ZAp9kJb1C3Jem/WoYazxFSRkBcUT+nrwdPQqmc5353galUz9Efr92EY8GV/DfrR1Lq/SGfBtsfozhpH9At1XP0lri+4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723769754; c=relaxed/simple;
	bh=1Ysl7CqMI5PHAabdWvAw9Nye54nFbmH4LxZ+96+Wm00=;
	h=To:Subject:From:Message-Id:Date; b=QIQNNTsjH7kR7njqu5hCNG+sHmyViDDzQSdWKo1ciGfkjnHDjo89GSToPdnLw04Yv6c6AfKUcms7T+N9eZwJwHH9FtvvZGd7Q+lEW5Y34LAc4wromTYVCXyNlil8yQJ7GIDMWJ81tt2VnU5DuggKkd8dGodlg/WR6XZztcWl7kY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J8so5TxE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J8so5TxE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9F75C32786
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723769753;
	bh=1Ysl7CqMI5PHAabdWvAw9Nye54nFbmH4LxZ+96+Wm00=;
	h=To:Subject:From:Date:From;
	b=J8so5TxERz0Dd1gx5Da8FIN0AqoAc4+SKOPLxqF+e01pNcpOuTRXnYemArDtp+Ffy
	 ASLDAc9xwrqiCEht02J3TephLo1shOZrT//kHyEIwIfmCW2ve6N6mv0g/v/iQytYTx
	 3XYAXShlw6yTWQuhbk3n57N0b1OxCnhm/b91pK9AjyUnsZcgiczRhisvNVBV8cMOL2
	 6hYDC8K0Zce46s0SNz0MZpVu3/RvcXZ3o6mHYvXNUc9EvpYTtEIfviP7LnoFZs5DtO
	 TEfWejtwo9u+CWi1m7jEVo0SbC6uQIKN5WBS3VSwU1OkXP2DeHJ9XhElQABXTFEjBN
	 jQTj6F664adBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 986E1C52D7D
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172376975360.9565.5977183392745993369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 930f35191a67ca967cc01d11fbda9f25388da1f30f7e290c00c26ff3d7332f95
Date: Fri, 16 Aug 2024 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723769753
