Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43673315D33
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 23:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779925354; cv=none; b=X0JrTSwydRdgPVjicsSt13gMimtDRRDme/6lG00VJNmQ03xhRn4yngIOq5J7qnPt1YIDpeHU3UzatDvhvvr9/uI22yl3gzCOz1jmNilzMlHD5WyG4dXSEliELMHGZrsUGfLbsvIHO6X7GpXCCDlzL+FIbmFqeYR8Bdmht27eciw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779925354; c=relaxed/simple;
	bh=mn0BJhxqtZVgyPEFj25F1mdwG3Zxju8is4ffj0wgRQ8=;
	h=To:Subject:From:Message-Id:Date; b=qsN0Lz/pjt2/smN4bhOYPW5RFv44A5tnp9xv9pkb5r1eNqq9tRdcwYnHbO/mHmkz0whzsmykcC5bpZ2Fv+Hej78XyNI7YFXTHPzUYyw+Rb/lgUzDsH+GiyvYzAdmE0ZTYHqvbtt1uVMiHm/pS7XxmdTpvFnqyfldHGgSkupTAco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MmWo+zVJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MmWo+zVJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C713AC19425
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 23:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779925353;
	bh=mn0BJhxqtZVgyPEFj25F1mdwG3Zxju8is4ffj0wgRQ8=;
	h=To:Subject:From:Date:From;
	b=MmWo+zVJFBTSV+BStXuRLixYIREEcHKIq9m1zpQTk3uCHmwShmTBMdTnlreR1x/UF
	 WGeugIAoB/FxaXpCXyH33JuFJVgKPWmiXlvgjkdyIqiXrltrih68FycDwwxv6ESlXa
	 s/vDmtlyrF0+m909mpi//Kx7fEFfRI3aGy4vMKnY4MIAotrhTus8UUThnHSTzgC+/Q
	 cfPe5U9X4pJbq3gKTa0P3MWPY3Wvt3Q/i6PXRjBtcV0j7jQjo3Eb3ZGAWH4+ty5Vpf
	 RWF1WVFLyl8aeSvQeuJiE4MZnBxO2X2ZbPQXjk7iqRkV0ijvyQmNvGxleQAl1kCnbw
	 JdUskiIkiZ1AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADDBDCD5BC9
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 23:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177992535369.22135.8208903552690630509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39eaa70e7c9c1d18b0c4026fb0f6dcb176f26b52de72446ccdea79a8b953cba3
Date: Wed, 27 May 2026 23:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779925353
