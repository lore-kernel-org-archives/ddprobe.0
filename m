Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22E7C4457C6
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 16:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784911234; cv=none; b=Q+DlXCd2MO/ONP8SqXJhoVxMhbCSr2+MsF3faEF394h5t802v5ZI1Z73lwiJusbnjfyoDrDe4im5jlIOpBm6+4IP2oLYwbYD341IKgCupbg9WoZtV1GesgePMBtn6faPI3Ey87SPV5XQAPPlfTEDbXtG81pm+rfGKJrTMJkWZhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784911234; c=relaxed/simple;
	bh=fPHIlKleRCIkEhFOp8gG34XVrJQNoVBqX0EKmXrJdos=;
	h=To:Subject:From:Message-Id:Date; b=dXwi0ofFm03o3s5fhNij+eLLFdfQ/EScStWZZSSmDPETPctMH4nSXjPYSpr6ea41ZFqIMxcPe5JR4B6+M+9lhxom1xz45yovvv458j/ChQ4pJnj96T5rr30QAQewA5ChZfVM2i+YflPcoLaD31WKY0Ute6huo6zIy4P9gdP6UFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MmTRsRaG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MmTRsRaG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB395C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784911233;
	bh=fPHIlKleRCIkEhFOp8gG34XVrJQNoVBqX0EKmXrJdos=;
	h=To:Subject:From:Date:From;
	b=MmTRsRaG8bDvH2jv8r1MmW7W+bzfnvgA+4repV6fixQ4Q+tz1cFciOKBM0mUS7wwr
	 gi2HfySJrtoQv0arAYLcXsnm3R4mW8XERwdh+hkC0oc/R0E1gx8jtEc9U1OI41m5v0
	 gS+NAXXfKnkxgoc7VMzdBL2UMlS4RMCpyKD1N/07oPXfnGAXT6mrhqgXOQwQuXg1He
	 7ylPcIcsL6Hz+s7okkKFRSxi3DOQsD63b/jyF/Z4+skiXDl2LUCuLOXyke4BB7hBP7
	 NgYobL4rN303Eh+jgQZ086tfNtgrQqnG6eVqS+KyOCxk4XvUMhYLKWNaaAbgFNja3b
	 nNzppif/tQ4lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9081C531C9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178491123368.24121.4547487819140232916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af38a061b4892a0f736a7a1c2ab64db9e4d21f4d7c97d386def9958aaf126200
Date: Fri, 24 Jul 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784911233
