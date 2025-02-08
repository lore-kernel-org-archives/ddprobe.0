Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 482E81ADFEB
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739010354; cv=none; b=bLgjmOb4W4LAfhfC7iUqtrNP2ptWyYR4Zs/RZChXHgHHlOFfJQ9N5ZH0NM5gJvQhPdA1MKldXv/xNC1IABXobEkw0Mt2WOu+yy/y5+vN7nh6KOlOk6LeyLj+O47+lP9nD1dYSYeD8oZCYBSEvHH7NN6VT91O4bPDmpW2i3xPJLw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739010354; c=relaxed/simple;
	bh=8X0BRy2rjAXBf8VSQPJsPIZIP7mzMoDchK9/jVgnaeQ=;
	h=To:Subject:From:Message-Id:Date; b=Z63cLWrFmHkJ8pVGwQ49KfJMGZof6DrUrv0/dqjtjDAikrJLHWJAVKSLZOMVY7XZ96FQ+x/HMl95ewLesusXR6NsJSevvkb65/0cDj/JfCL8/rqul5L2/oirJ+4Rczlr2sBaGF/6y46LxiWttLQHINZbaW9A73RtsBoCryN1j7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S6fdVZcH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S6fdVZcH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE373C4CEE0
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739010353;
	bh=8X0BRy2rjAXBf8VSQPJsPIZIP7mzMoDchK9/jVgnaeQ=;
	h=To:Subject:From:Date:From;
	b=S6fdVZcHF5fvsoTYc4QPtH9FFyS+Dv8rDVTkqS0rDlr7nxlsfPZifAksHBhla2dSz
	 sMAB8m1W4XSYNVY5RgB3I3AB1YYHnFgfodS0adGETMAtgOElXZpU4JNT6fGbRkKGws
	 PrVgrw+NsC4ABiOI3qSFg2GcOTEKyAvVyrvZrkXdOpSKMJV7QwsqxPRHoN1vGzX7AT
	 kcTwStJaaCaX/fh+cGkRpt7hkGgYncNGY8z1u1VCCfQfzRkB2AOiMObqW/NbyS2kGw
	 411Ga6aTuWx6v4efW523kdhBhc5VYM/Eb0dFlH4y552+ypTRD46w35+3RQCQ8C2pQ+
	 oNdRtDecAYGqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AEC2C02198
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173901035362.17457.4377213826661889274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f9788870189e8d7435b96f317bea67983e32f6bb479f866d490e723b2a7fe15
Date: Sat, 08 Feb 2025 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739010353
