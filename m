Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CE181F4634
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 13:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775309134; cv=none; b=M6g7k+8KfHOLb2u3JE2MhsKMWGRcEQt6bZzXtlathD6TzSmU9GmRYKn8bezgSOTTS3U7Nxez/0YM6vWCV9YSR97ycKwbQFJMAHKGzpA8MB3SV14NbnCH//TWKbxhkoP0yp0izTWEolFUBf+cie7XO0tAHWemIbRD29FtXWWgJso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775309134; c=relaxed/simple;
	bh=F55MKRKbxpWFru6YQWbEdu/Ra2xKrsH4U/C2vEpkyzo=;
	h=To:Subject:From:Message-Id:Date; b=c0fEokQePxf9L3PNDrTEp7BBQjxdUgrUlu53BYUDIc7tGlfvgvR/pBwv+N8Ry/wnRo3nma2V6yebtGAisqnffKEvzfVdmbPFOblNX4seKy1o0nrv9au1AFdH3CKmtkd1porrf/Z+lEd1FFwQzJKhms5ySXGguDCGncD5pIeld6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ccgHY/e+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ccgHY/e+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCBF7C19421
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 13:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775309133;
	bh=F55MKRKbxpWFru6YQWbEdu/Ra2xKrsH4U/C2vEpkyzo=;
	h=To:Subject:From:Date:From;
	b=ccgHY/e+gaXPSUoRONXfwiXG4VfmJn21woBLBzOPToC8CR935LMRLMDv290eWYHSw
	 NQ3aBKRRW5Ry+/Xx0bi3Nb/XHiZFjyvD+Lf0cGCBVh2seO8ulkfprplUrg0bGhBKb5
	 mcTLdcJoNrGZTrQaeEb8RDl5NOoZc4kJc9drVAG+U61aQJYRTIKzv2WKMiJLoqxDU1
	 S9yf38c6BYckp0DP6XSVX5B39AYU7XPMPnH5isTozy7vbzbfnAkePRSIHZoKJDcSvU
	 HV+aLTBlAmoVhELjs7OpjRxwPl7jtRO0WZg6LzhnoVMO3p1wBPYXBQlYf5exdS+41m
	 FBDZZ0n3KPuZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAB8CE88D9A
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 13:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177530913370.15839.15156533730656261044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45a222aef01aa9ee6a0575937933e0231eaff7bf52e1516da638ea166e0e1fda
Date: Sat, 04 Apr 2026 13:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775309133
