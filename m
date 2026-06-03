Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AA71423A63
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 16:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780505674; cv=none; b=NSEGGusIeArrNaKahiuIrgv9JkuGLj4ixO7cUjh3Iwd2xcDZX1QQdqyDuDeiN0DmhL97QXddTZ5qRQ6dX8CrDhE+OGW7AIH3AlTLC53VRNZuq74oz0ikrlS0ev66oeORIi6pxFWMijA/GqsHtCTarjXyD2WuKGq6+YQBwPEmFEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780505674; c=relaxed/simple;
	bh=Skrr5wg8uCN6l4Mw0eCCez/I4HDonSS68Tdh9CT9tyM=;
	h=To:Subject:From:Message-Id:Date; b=fdlYwHsVZao4UOiU99X7op5VMlrEl3aqKbIQBI/UBlHwbCGC6ikEMv1YLS22niL+iE8v/2JHYNLdhWTiQTxiP4fFqm5OuAYAv7eP5hnJys8NbOzM0nU8le/Hujs1/CxoF5VgwAg3E99QiMT8mDmbTpvbJxTN/J6dgGvd9aCVOvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aFPDQE+J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aFPDQE+J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C20F8C2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 16:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780505673;
	bh=Skrr5wg8uCN6l4Mw0eCCez/I4HDonSS68Tdh9CT9tyM=;
	h=To:Subject:From:Date:From;
	b=aFPDQE+JoCKRAhrCE/rUS+wfPml9JLHkGX98vlC7Vjnw3kPFNFKXbQuDXjtE8F+H1
	 M5ffUZKhetfOw6qWtWUUmNjPNxhIidpgVP1vQ6hCDfga8YUmE/WOHkygvmNvrC3Ny1
	 eaeFrQC4L4yzwed61Iw7te1pXu9YSAXfD2ZYL27+fyNNIit5VpPmPGB7ISmR3niLLY
	 Kih7LOSNNchJAMHI/o7i5vmcaaoZtm0W6c/PZFq4lAPUqu7N3QELWNZOg8wygbRuMS
	 t6lvG5DyAMl8kbXUbxGNz1woucQp/oCwYoD76A4+qV2+ByWrzVy7fm13OUX+ifInZC
	 BRRHtGXBnJYvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A91BCCD6E57
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 16:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178050567368.21995.14290496276866343456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 281b76a5d33d4eb8c83aa2965cdd150974d13b3c6e252bdf621c74b5580c9662
Date: Wed, 03 Jun 2026 16:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780505673
