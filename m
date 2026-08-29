Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 477BD1514F8
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 12:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788005434; cv=none; b=NlE9K2g5As3yFFYTHDsPiN6T88qb+uuZOWMLcI7DaM6iBFK6LETBvlXmff3rqFyzyzz4Sfb6GThhmsaQnL5fpJyYmCp9SbNdLuvv5DSzYMANZijN6rX1RuMTTSAjBpOAfUO2/Keh5+4X0V0sqOLDylf0vw86cyUIleBT5QpTV9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788005434; c=relaxed/simple;
	bh=OJLMlCe01O9oXMjN0uU8PuDdStarc2WSInqBuoiP+7g=;
	h=To:Subject:From:Message-Id:Date; b=J6CUUCJQw0Hv0LXw1l7yyKe4K7hEahIc0c3Yl9sCzfVHXEGB0oo9b+TTQ8DpB0H8e4o6tyD/QOKjeeQjcBXigvDFMp9hvCtQqOZ3ffm9/AwmoWAMrYcMWey65Ygn8VbtDb/Z56g1KllykV/LjEpEj3Jajgn/8zXOKMiWn62xt0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=anfA0jl0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="anfA0jl0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D38B5C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788005433;
	bh=OJLMlCe01O9oXMjN0uU8PuDdStarc2WSInqBuoiP+7g=;
	h=To:Subject:From:Date:From;
	b=anfA0jl0pUyT1wIfwtjIkL5tuCHwKL1zIpqAwDMfwgfZqPnzUcQXSKtkSvJ3u3T9d
	 vXNHK7hDWg5vdaQr38ly5QohNRdwMSl2MGftRO/gbiW50+Ja1hNpWwgnqeLzbaYl+1
	 OIUR5okWVrrXHUdhNWTNZpjMWwIR5si5j7Jf/z3dSCag/0Bg4quwvmGMwlx5eq6cBq
	 z5t5Odwy7yTJoKcZZFIiyBlKZ4u/0T1s/FzF9xyiY6Z3ECrxiKYsho3zrvpM7+TKM3
	 Uw+HACBKo+IBeLRlb/H1+e5W5+HQDWhWijAqZ27G0Sr28RR0Pnuc7XX89R0FBCgVtL
	 kgNjhc+0Ga3MQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0AF0C61DBE
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178800543368.1199.11212283835646483076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd59bea71038b26150f916fb289fa4dab164b9e14866e571f8a9b05070dd098b
Date: Sat, 29 Aug 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788005433
