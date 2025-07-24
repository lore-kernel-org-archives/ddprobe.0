Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C86C2EA47C
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753372194; cv=none; b=oQlwLmnvktLlVezGCogPgZVAdB9xuEGf/8qXNAc/R/1aSf6wYiFVx5GNreL/PgaVXuhiv8RoJfQ6JOuPU7pdo0abehRCgZXy7/6fZhCA2UQSI0IcWPEvsDHbZ/v5koP5s1vCf7RXfrTdGEvzW8+CZnUlw9V+G2l085YIO1UXqDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753372194; c=relaxed/simple;
	bh=8kknS6pLVy5VI70NDBHuMHZVyMcJHxYXfWW6og5JPz0=;
	h=To:Subject:From:Message-Id:Date; b=EPX3XpLMLo8QxPG3/IlWsBtxJq30iIG34aXyJvRMSkxlDUX68bAgof8l0ySdAJH9MuxFOeAWza3/W/dmKUkU4TVCyKx3gKYzOnByzCaLIfOHMsPR4UonT7auAMJJ38AVBPoqnsZNlXcp8yify6OdOnkiBt3ZZdlZV0vUaY7vIDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZmRDazJm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZmRDazJm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0697C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753372193;
	bh=8kknS6pLVy5VI70NDBHuMHZVyMcJHxYXfWW6og5JPz0=;
	h=To:Subject:From:Date:From;
	b=ZmRDazJm71Nev4E9yE4UftWNeS2z3DYfSEiwI8pMXMD+9PeijviUsrX6hytilA6BA
	 DR8fwh8pW6rAhY2+4sfPon9AXlfuzVFkC/ZcsoQFbpvgx6/sDUEbGHF++jheu4flIh
	 1MKlJ/KtqE4RXgD7PTdDIEveLzCdV1iXuCRcozut1KDJo01f0PC6YHBuwO03vOkcxt
	 6aPSijtFm7OcPt7qjzo4DBNieCIK9kMaEl6sFEaLPM/kV3Gjkb07oMrVWaqzr/FMJI
	 GF8bCVGGIa6xFRn5qpYeg6sBshiaFo+5+ELuB3Kk9u8fwJ3WcEdPbY8WmQ3EpIg5jT
	 QTkk34jooeWMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9187EC83F26
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175337219358.24693.14042510032778396604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f9e237c354ac79dd9bb35458137bda688475b7574fc0ecf28440fea73bcf4b0
Date: Thu, 24 Jul 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753372193
