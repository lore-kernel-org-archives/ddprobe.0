Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41B2D335C7
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734306354; cv=none; b=SgyWTb9SSxW/Tty7Mwpa2Nw9RTjGurssTn1rOzyuGMr4pwc3ND8zjXIhmyL8Z5dzjGvi/EZImvAunAnBrp142APxlanWe3mVYyARpBARu60IlGVayuKjNSVZE4VmgvINYk1H2eywVzq2epdaorrJ8vOE8/Ly15ZNbnfF8lgubFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734306354; c=relaxed/simple;
	bh=8jMKDLDZkk2SJa++v6cPuPREm8Arf18YOiX66OTxVWQ=;
	h=To:Subject:From:Message-Id:Date; b=JjilQEnk6oHACTRWx/UzkCDtPNCQsAiz0fWaNqKMDpFJ+z5cOiUFrkQijj5720U8JXTLjU2Qt4QepemtMjTJZgNk1RarJ++UZmw7xpCezbSWrs+Pv3/oxdWCcXDLKkFNbagv6nnK77Ff4+FOxmxMNJwMNziFUedf9CMg90/ZW24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pw9yNu3X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pw9yNu3X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1FB2C4CECE
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734306353;
	bh=8jMKDLDZkk2SJa++v6cPuPREm8Arf18YOiX66OTxVWQ=;
	h=To:Subject:From:Date:From;
	b=pw9yNu3XTltkm84g9gXLMwcrE5LjL7kiasNpAbMLDn3+MK9jKCx1TXNgc1OgoPkkN
	 2guk0qoTYC07BYu5XqXL7PfGE85zoKCJjfS24+akJb5K9CvqHegUps7ArAMK/RDGbB
	 GHpTJ+PR5oYubPKlasiwASjFvcIZGrEOFbaQ+xY0GIDfTHncO3eO8DIgGFuW+V7QIm
	 nZjGDUsrSivPjqk8mmUOKkoNwh4LGzg21c80NnXIIc7c7vAmTPeko1VcMv1tZ+3WOx
	 1jqQHPdX0EpM6LliUrNUC8Wt60Q9UDxpmk9RjXTIxwM/fwZN8fuVoG2mt4DVufRhMa
	 XOUE8nQP2HPaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B788E7716A
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173430635360.5894.592992172099929253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4edabf109edbd8f41a8f334d16062dfd35290fc420f514425f0fc1b6a77a8b20
Date: Sun, 15 Dec 2024 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734306353
