Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A6A023C51D
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 20:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770236634; cv=none; b=lYQAgCO3QrXmhkwhPFLuKrVtDTjN7Y9P57E+Eray7LP8uxHbmmq9k39n4dr844aaL1WHXXUfI3s89NctG2bsKbe0Aug67H1U42kEcLxfTMPrsVnMweFB2v/oFE4YGLi0ZWJiQ4IPypR0395iJ8N6hCuoxbUI6azUX5yCUP8rOIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770236634; c=relaxed/simple;
	bh=hYzCRLlLrrghuxyU2bZL6+4qYSLaUAKObpL2yDlyQnM=;
	h=To:Subject:From:Message-Id:Date; b=bMj7uvwdML3ELXft3GhVMDIcQ1eVAlWlYnk9ve5L0NbbO3XtQZ92HL3+JGh3ZMTdLjM4CvT8GVBZEZiNOL6fOdG0PgQsLkvSRN+d+5HsTOhA7agTbcqBNDmGxRqTFg4fAT9UnW+9Wc8ZbhNwkiZ4/Hk7IszN+JeW1bZIDykvDS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fxxmMQN8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fxxmMQN8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC2EBC19422
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 20:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770236633;
	bh=hYzCRLlLrrghuxyU2bZL6+4qYSLaUAKObpL2yDlyQnM=;
	h=To:Subject:From:Date:From;
	b=fxxmMQN8e7r+R4SgIAKldclCK8DYQab89z6ty3q1vPcK07oqKmLRLy2fITcn40Vn7
	 06LCmgVcHfiRz3qkhFsLEtW9bLGPsLSbO8RofegVz9GKqbLTbLu5IbwuySm4ZxErNG
	 ZazaHk07DeaFHTjUhiZUhaVeex1RlNG1or7TDswN05gD3h3p2/Q7wHbAN5O4/FBe10
	 jLapcH3PMWwyOSJ+7CND8xKRknI7qPyu29CaxMOnhpWLndnC89v27F/+/W36oaEwQU
	 RKbEEzNYlvBaWxUONcKO1Nw6KULElh1aUtBhQHq4HW+iFIYAv2KrjPSOrTzVj9JNny
	 po1ytyMEL06vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A168DEA7943
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 20:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177023663363.5981.319792120693738459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3e0e1c3b644119d9663db3a223ee012c2de37dfb36353ecbfb2462a5ed16b31
Date: Wed, 04 Feb 2026 20:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770236633
