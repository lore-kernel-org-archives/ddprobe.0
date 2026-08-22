Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF20E1DF980
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 20:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787428834; cv=none; b=jSeE3bKid05zszolesgq3vbsZ0vjLEGG09jSH4zxonKcAZlMEDJq3/FKrl7yzqdSuZt6av8aw5T9BS3bIAa+PKclIz8Xu79s/rKjlXUD5Vfx+kBIs8BwJZijlin0V8TKsvdjP51tSM3UduydWTQAoiPMP5LsthYci61JjZ+kgrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787428834; c=relaxed/simple;
	bh=objur6NkAnmNRXuqqf8WeEZ77IVY2IyapGJUZAlGUMk=;
	h=To:Subject:From:Message-Id:Date; b=JGJN4TC9ZFsdjCraxj+ooggkhlyLuEk5ESJ7lJvLjPkGbd9VNkDCGTk70/OQwi/EBb/EKDGwJYzmRZi6sm0RjX4zJYaDDpsJ+3ynSx4sCphJYkZ68//pFjR48NKqV/H9N3f8rY2GMjppX+pHa3OPPtsRZMc/i3EVCgzxlARFzpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RNU5BREF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RNU5BREF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D79A2C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787428833;
	bh=objur6NkAnmNRXuqqf8WeEZ77IVY2IyapGJUZAlGUMk=;
	h=To:Subject:From:Date:From;
	b=RNU5BREFOfrmTKG9Q2L2CpKoMdOHP8Xk+ty84ltrNp44kqIK/s56szGvzEQX4xFyB
	 hitRrkV4y8O3WAIZdSfD3aILw0vOUd/uVpg0/SPAHK36XHxDt0//aMDC4IFPShXYZN
	 O0NOyT/1pcmu2VMphLW3PRIIGCOD8pjCtdXQstBF8VFAoRHTr3MvfwP/DCrUaegxTy
	 Q30+8KGBD9U+HpCe+fhNYt7QFu7JXqKkrStQsciWlX59sAuuw3z2tZB5Wbr0TRDizV
	 ZUu8Rqc6vmw8xp6DMt5yut0YRfziUuYU+MQ4x6B4jZjq87cW1Z2vg/G4dxge2B6UN1
	 M4e5Mjh1Wupwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB3A4C5DF97
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178742883369.27962.15994672237460096517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0212d2e294b02fdee654d237a54e5a1033544183c679a99b4df628b50f9a4688
Date: Sat, 22 Aug 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787428833
