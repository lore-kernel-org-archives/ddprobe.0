Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 554E04B04BF
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 00:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786062634; cv=none; b=hQnG86L0JBFJMmMF1Lh/1zo03mcZBLLLxYRAjQrCQMF2Rrqepgsre8BD1VSh3WTT4UwOI7EXresa5JJqq5Ix609tAMtk9q9/M2NF/hevou0lbDGNXBf1JW/hioi6DFzbrNUeqVay9FNWiybtmWXFVwy+FBiFe5POOHJFp8IFhz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786062634; c=relaxed/simple;
	bh=rpk8QumBAyPj+060wN/xY423O59OLfknn5uBI0CbsUI=;
	h=To:Subject:From:Message-Id:Date; b=em14DBrEeGA4w3NegN68LfjN3/OGQDZjiowVt0q43+EkxjZchYOrjOf4cvkexKIoxbAJrOwMpGf22oWIhCFB3X/bNavbJDDC68sNfI2KmwuXkZGAPutMF4iz+o4VvwhDVI/bUKin/3+DPIZ3UnETj+OtSar9xo4gQD/8MC2O13g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CPSxohYf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CPSxohYf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFCE1C2BCB9
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786062633;
	bh=rpk8QumBAyPj+060wN/xY423O59OLfknn5uBI0CbsUI=;
	h=To:Subject:From:Date:From;
	b=CPSxohYf3i50oMXNNTqEkgLpUS6UVbERxGIRzLAe1r0/GSUhbFNL1TvsJuAIscnOs
	 R59OujHH8Moo+EKIj7O2kREzNbVHon10DE8/RGff2cXvatXtGiOo3qt6pSBgU1iG25
	 s1qo00QUzFjWBH+n/eB2zW+zI9ioubgrUoNSaJFQYQXW55RIcI7yZto+8X8u3A9Y7c
	 LmpPhlvi1gKH3sthOSIdfsN5CBR24QjSbB4+HaIMSHDlpfqU1Fj7KQYU4e/01g9ris
	 ZbD+p6+AkVdpn1vbhsp9tMtpOXVmkYqATWvut2wjdcoZzyakKPr23isvOmUcoLbeDC
	 Pg7ntRMZM5/wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD25BC5AC7A
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178606263369.21361.13472948960671979132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8cc586bc9bd39ea101507113367d37f7128a64911e8d0d1f5af614f43d04285
Date: Fri, 07 Aug 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786062633
