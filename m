Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E802340260
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 03:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785469834; cv=none; b=G8N67hvAudZroN9kGFZ/JNaFolVEsOKaLEUmCesnDab0L/XO1vZKC6qEZn4+L7N4fH/VLOsKoOEC1+Auif4RmtIZ898HL2MM3qwATdyEZcGMeHQ3iPBafJsRQGqlF+4+A6Ik6R9jIhPsBPXVFxa/fKDBcgVR5UTIZQWCRl3uUb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785469834; c=relaxed/simple;
	bh=U7sRv/cDc9A58OMAjN469rfWF6VDo5G6x5Z7FgPkyE8=;
	h=To:Subject:From:Message-Id:Date; b=dMOK5uGDXtceNTigS+e3LuxAru6z1W/kzVrqYNVQaFvajIL7annwpTBlPavzb+84DExGrk28sEcnChVuzsrZIdOFooU6v1pdOJuSX4qyLCORQfERU58FqUnT/Ic+ZsbEwvZeroLw/ZUFpLJBEmiYeKVhpHRds0cZo+jrSx477Vw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EBFgqJld; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EBFgqJld"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA887C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785469833;
	bh=U7sRv/cDc9A58OMAjN469rfWF6VDo5G6x5Z7FgPkyE8=;
	h=To:Subject:From:Date:From;
	b=EBFgqJld0FB++10bMCj7JySi6izXv87SjxC6TKoiesWa3xohsPwluBySZRHmzyB3q
	 jipIoJNTZV8Ag80aPEPV1IkY1WRoeDW1vA0evuIlSiPYGYwivlu6YVvIOhZatR3oAD
	 HHRedtuZjtytlVdHGq9TRutyUDL5oQww6ozE1Lb4x+gNXPJ+9RP/f4SCSyEnYJdqGg
	 tIwo8sSXqKtcOA2ga4bxtQEXcYiicGwNhNKJSrYRGty9UetGQuvLnFe66zDFRUm58k
	 /SioMBCb4u/1qo9gPsQAYP92oY284sggSsytdLgQDOYxfPr0VOxHc9U5Xn+NtVzlcf
	 Zuf4Zct/sd2dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8FC5C55167
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178546983368.23599.14639340336643103850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df6032568d13a2b34717c4399a0bad670bb02185138c0a2206ecf13d2c64e924
Date: Fri, 31 Jul 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785469833
