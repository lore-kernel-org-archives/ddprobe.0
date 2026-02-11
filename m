Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2136A352C5F
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 18:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770836094; cv=none; b=S7PtBjka+USeMBADCQ3jFMwVEsv+1L7b+iDzaYBPGfZ9nQzOUKcESGdbhn3Bf6966U3qSYvr+o1brTOnZrjd3sAH03QD+YrnHoapcLGjc9NAA9AM1ttC8bTX4PvwGAIKiQeBiVYnPFJ5wtKk1611R3yiVKEg60yLxqmeYXN+iwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770836094; c=relaxed/simple;
	bh=bAUUaLPtI82IHs4+l615SkohfEpl65+4RZHALECAchM=;
	h=To:Subject:From:Message-Id:Date; b=h6nx3Ql8FEU1+S4aANjSmQV5cIxijyRU77UtxDPmJs70YJPFDocVB9L4Cb5/nh4X6YCz06bDfAODbpSPsYW8fBTyFDQ47Ldg89U7vdXQTC6druWWEwPBvX28GqWOsLu0dZJUq0mf9Nl/3LkTpgkiBbi3zxnHWAN12nJXHQAYNWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O7l4WIAz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O7l4WIAz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B103FC19423
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 18:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770836093;
	bh=bAUUaLPtI82IHs4+l615SkohfEpl65+4RZHALECAchM=;
	h=To:Subject:From:Date:From;
	b=O7l4WIAz+x/cHowyKbSDkthG3DCiOotrhRgtEll/p8HZK2mve09qc32UpD9b3yg1I
	 Bh42msJ4SkCkcecKJ31TZAKdMwCKt2p98Af93Q53qCTNx/qW+dmajk2XcYnJSBbvhx
	 h6ivLhxlC4L43sjaI6vCOUYsrgFv7e8hRl/j5tHOw8IdqH3EWV/tfhWZV0Kb6ayAeL
	 u57/1Lv0oT37LiaVEL0JDMd91KlIGE/wgNl98iw7Y8GvZPQDKYDZb2ojgH92nD4MZD
	 W8FB0bCGH9Xsap8eQV9IUvu3g8Hmw9IcJAid70taj46TCHsky+PAJ4GlPHR6puhR9c
	 RN02xxDjxwBOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A58DECD6E3
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 18:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177083609362.2227.14210886549140740914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2379c53907b52a04b9b1c18a5063f7a02f1e52bf4f29b04e23b1824c030fa0f3
Date: Wed, 11 Feb 2026 18:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770836093
