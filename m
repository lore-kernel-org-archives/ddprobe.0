Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51EBE1BC3F
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 03:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737602754; cv=none; b=peytI1mNIm6z1A8budFWDjPCnmDHf3Yd2mDScnx3+QFr8fTTB+JObr2ZWwHUIfKoTQ0Qi2tJ3pjZQpivLqQC1b/7gEZg4hdAUOYE61TCaKd+08y5K+mYbICyIywibmHnBLSqnx+QrnD+QDafi/2/fqv6SOGAYiXkn3ne2QM8iy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737602754; c=relaxed/simple;
	bh=nUi//ykl6zHvfu1GkB/YVKAYA1ewrPf7JL0VzkAx+qg=;
	h=To:Subject:From:Message-Id:Date; b=op/W74MZRCn14/KIRcBb6eCHIXLPMSLxLmsBlTTBvw+YXRR7jkArV5YoyGp+US1EZfPLW6cQtFcZAwu1wsLFTEUVspDETD+GUlc26zsC/XXsvM8X7pgpxLxO8qSaNjaLo59GXNyrK1rjkWBAl2xNT12rQ3XTAiU7kkGAnG8UTzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aT14IaPD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aT14IaPD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C2DC4CED2
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 03:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737602753;
	bh=nUi//ykl6zHvfu1GkB/YVKAYA1ewrPf7JL0VzkAx+qg=;
	h=To:Subject:From:Date:From;
	b=aT14IaPD8uxezAxpyZw6OJ4QjdhT/mOqV0H1n/qujCo0PePs+EFP+ib1w+GdTGHVW
	 E37FkNjqOtktOIzt5HGjQaUBOiNwdb6EKNbrq96iF3Hpmzn2eZmal8ZpKweZjmV8Yc
	 Vue0H4hwOK6kbis4+1d+9TGmtGMDWDIFj6C9UZ95XlAsFKUPMgupFZphnjwylkeOz2
	 OVas11BIYiFaZdsg452kpl4WOSte7rjoMnJHryGjySi49PR3HReSplrsolTW4MNWoI
	 ncEk8UYsTGRd+j94LdEmQedNXmw6R3ItLtXJi6bAHE4u+lcNDMtQJh9MpQsYs7rWSR
	 BhdTgmCRT0pdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97694C02182
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 03:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173760275358.14637.18016135477872245023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e78d10915355a3c0eb9034060eb385f6cb95b87745fcbf0db880d167210947d9
Date: Thu, 23 Jan 2025 03:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737602753
