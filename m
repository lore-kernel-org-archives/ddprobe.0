Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27ED0145A1F
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761281394; cv=none; b=KOESDO6qFl4sxwoeMIaW0I3fow1D4pxDYc4BdYm1bbpw0sQqqAtkg8TcBqV8mhS5Jp5bDRgIXyfpxecNspsy9Qgr9Opqs7JaHcJ8FHarpoTIW0HRlGOiURlLsAn3DNXCWCeVu/T4/V3fVdVxJCngRVPOGIn6/HBy8R0IDqaMgFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761281394; c=relaxed/simple;
	bh=LROCHNr1vIsQTGVfNWYpV118X9SueQZn7gZ9v/PSd50=;
	h=To:Subject:From:Message-Id:Date; b=KpyJpb4bsNDeL8t3urUMPCthdsZDWzIiCbYWUNM7fhMB/j9sPaXb0U8ySu6XSBiSAUMOSPO0jtW5FLgVWf/wJxZQo2UU8Owse5U2knjx0z+qHFdIhBlZUu95nHCjne0O4NC6KodIZ8kHInrgo9oEihvKDZELqcyb79hb6wBqWy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WzrTIXOz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WzrTIXOz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6BBBC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761281393;
	bh=LROCHNr1vIsQTGVfNWYpV118X9SueQZn7gZ9v/PSd50=;
	h=To:Subject:From:Date:From;
	b=WzrTIXOzySLxssjhKk77xR/5ZxIbUvCF8AhNsJnpLKJjuUgAj9WLm8J2n541Y2aYB
	 WywEv2nVL3jZM7QPHkcA7s19ASLBoxQpzrKj1bTb9e0sifZUrvePw6n1cmUOK6ORb+
	 75DMOH303x5l3Pwbce93Vth+/oL3VWdU/M5g0DFsrOrUQxlxJrct7HsrW14QLedoQ9
	 +Sz3GASTFVgf262/TowU9oV7mXgH8crvjGJcG16iD9bpTR2a/pV98/5oA0m6b3V/TN
	 s5Ffrkaoz1roBgtvDApWu92bKqNX52gJ5bezwVSi1QaJi0z/2wUgmycGw8joeJ4VxG
	 bCEhNIPdWtM/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E798CCD1AB
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176128139357.20923.11542695106958136909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71be33b254620e171bb9e99675ab139fa640aadd519e1a38d938e0dba1b566ea
Date: Fri, 24 Oct 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761281393
