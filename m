Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 108B037C114
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 11:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771932294; cv=none; b=HPyYCFB+V93vQuwBw897Hckv5p4bijg07AeD+A3vnVyJR/d9ScbKi/gxkxX1kBiSAfcGEnDJgGQqlTz/qDv52pKuAFhR3vyFJ5uSD3kOYA1PbLsAklbR2fLlPXtlqBfJZ5vKrmxuzppPLFCDBvVNcHgHHT5p2jZX7z92fw0tX/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771932294; c=relaxed/simple;
	bh=HDwozGrVZfB88512GmlqYB/1p9yUA74ziV5ixVtzJ0Y=;
	h=To:Subject:From:Message-Id:Date; b=NsgtZ1Kq6ZD/RqDqvm5N3UGLiOAsCrmsKxsdNFpbV0PPnlHhBolWngWsDtjuQupZyneFiiMR/pMcbBiEgexRNkoBBDVoRBwcMaBJhVvkQFMQdzsCjrjmvWATTAUgxWHlrtELLrOx08Q4P99PnPS8VX7y3rPYJz8ACi2V2xN5cQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vOxtpYJg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vOxtpYJg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B47C2BC86
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 11:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771932293;
	bh=HDwozGrVZfB88512GmlqYB/1p9yUA74ziV5ixVtzJ0Y=;
	h=To:Subject:From:Date:From;
	b=vOxtpYJgrtwCsQS5N9dy+paLoSAZOagjaRONCOPvi8kRQZegVyUfri91FwyuP1VmK
	 /xXOWEOzOlPL0zbmfZu5Ik/wLGH7oXE3BbAS4O6Q4srIUUM/I16JC127C1s088VI8/
	 v0bv3/CPqJhgxosgID2difAKwInxfB4U0NmCl2NI8RFNZAbPMcnVA60stz1vVag0+V
	 uuxCI/3aRjuhAvzDvYyus7MNzejbtr9ZMJq/8NAEPkyQtSifYaNGLR2C7Q/dJ2G4sE
	 ucMa9+tSmTpYWY0EbKfN9xgnZ+Ihhe4EUc2pXp3USNkr+ocIm9mrV5z32j4b8ZDsdR
	 qvuLlHt/62Y0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FE9E9B24D
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 11:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177193229358.17855.15172040134354579569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2e4bcfae9f05364519b630fe773bcfda1e07ad1303bebaf577dc758dc451f91
Date: Tue, 24 Feb 2026 11:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771932293
