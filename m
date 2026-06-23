Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCF5F34AB01
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 02:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782183393; cv=none; b=VlS7kF3pdvHesn1vOQ2gGVc+tCPsDuHB/4fH1fgT8o/bCJmLgUsIDHU0yQpPVXObjODD9w+Skfg/ABhzk26Hvn9Jd2Fzr/Z435wCWohdi8RXdnpynjI0R9igl91IWPn6EqHWMImz9GPWLnnaQmDWJLH2vMKULrRXMPmtsOKKbDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782183393; c=relaxed/simple;
	bh=SjTcb/vdMhJ4HiBCgcEMggOHjd0OtwZJksuwRWla3kE=;
	h=To:Subject:From:Message-Id:Date; b=YSDJcYvhi+xI/xmlO6Brwbx83SB6VYSjykV7+edOP+iHiyJ+qd6H3xiDNOJ6FZop2ICxBmkr/1AFughcqUC/SAcQbPv6NH6SUwOAfBtU1pFduH80g6OYoM1tBq5MgR1My27bvFUpeoqtEYxlYdbY8outtMIaxqCynBzxZ/piwfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=htsjPLN+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="htsjPLN+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFFD6C2BCB4
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 02:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782183393;
	bh=SjTcb/vdMhJ4HiBCgcEMggOHjd0OtwZJksuwRWla3kE=;
	h=To:Subject:From:Date:From;
	b=htsjPLN+g3Fc77aMWEuAuUQaHrncBUIvlI4ub6wDr+FzecGauoYiqVunEAaasqpii
	 lDZ48FJa8WRH8oYXpZl0pq4Uq5y+tUvTC8HD4P+AisNT/ROUBAcVR17EyBY/E3BJZc
	 S/ax7X1Pf2agvDMB8l71SK1n+B+E7JvO8KD03NRLH5qkjefHZwiiJqBlZyFTAWLODw
	 voB97Js/BlwgDrzo6Ev68APxC58rfj2pZiLZwWaw7m9gSld113vR5Ve1peSd00Fy0F
	 zUt2meFxHBuxigrlzmjI14bVT6NK4McuSsbO2oEE3Rh58nhDoQmH3+262gSWH+yit4
	 gzdSRGF+Rf4Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8FE4CDB46B
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 02:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178218339368.21081.10169420333328330559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbeef074bc845748f1ba8e0661f0f7c5a47148026b0760d2fefa7dd623bf94ca
Date: Tue, 23 Jun 2026 02:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782183393
