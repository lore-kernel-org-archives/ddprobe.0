Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47393390CB2
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 07:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786777834; cv=none; b=ELLr7ZqTFtg1tjSz00g8aQI7rH+sHNmKlHfq5utlRe19rNk0kreZ3w5ovWC9rfPOCzkv9byFkpclnfo5/1TyvpREkJxrwSbbITE1czC5QP1w85dtsV4Xrjra6vu2dzmGli6WHV6VA6ity2gSNxDSAKAv0cQr9PSGxy3MDqRw4Jk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786777834; c=relaxed/simple;
	bh=MBq1TmIdMEDpKdQcBjr47yCG59d2OhFz0u7lFLwy/cQ=;
	h=To:Subject:From:Message-Id:Date; b=oyATcd05hOku86xCum1oxGKQvaT/DjROQPkdOqU1QWCXe5RTOMkugq7G/Dad6EoaUXKDKZfc7+JH3f6NZEifFA9xiHKv46dr6ND2vy4DdI99FLuLjirp4Br5IzmvysAvsncaBs4iy1EqGChcJ5QyCIFKELMZnx7xfa6plJb5vPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dA4cYw3q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dA4cYw3q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5106C19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786777833;
	bh=MBq1TmIdMEDpKdQcBjr47yCG59d2OhFz0u7lFLwy/cQ=;
	h=To:Subject:From:Date:From;
	b=dA4cYw3qWfsDhcZgbYAuP4dJiX9ZWKhGH2IFVOYNJUQO4gZO5cJlCQ0JIt0KfcXUa
	 LeRMtXVy6pfQI+Z2RO2MeVR+RkZO5OsMpORPQEzPedX56fsYKKdCXpnjKGdHjcj3N8
	 DXqfoZZGhJ1Su0HKfGaKtTcu11MA30XP7Ixue7q1KUhlSNLLZ2N/r4QcQpK5g3rQ6Q
	 T6vRv4qBWQwiJ9J9OOczLKnE5yrWaYW/+5PciF5HETggeuRssr/nZnz0KtTGYI+FUQ
	 6Gh4ayDJMA/bmfQcg+3A6RtyXU/GJ1TKonWiYmlQsg8oaWg6EGVozRA9111c9g2MLz
	 0iM6Fv6Y3Q88w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B18EFC5AD5A
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178677783369.25622.1847662144636312797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 458e0bf1c5cf30f8a246b2dab46117e1f7aa39a0f6539be8ffcb00a2b0804e50
Date: Sat, 15 Aug 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786777833
