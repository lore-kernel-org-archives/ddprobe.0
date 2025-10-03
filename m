Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13ACD23DEB6
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759523994; cv=none; b=IQB3/XaIu3LG86AVD9yjWpa2Sk6iQibNW07jwvIqPMWoiskYVPvvfVQVpSA+At5OIRWxp9tnT+hXIIUKW9/1KA/eEkghzBtMyFboANfUGETUpQcAXKOi/K6jMUTPP127rC1b4btpeMHjhEqD0wuclCalyEBgUhivCdiaUrgjlng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759523994; c=relaxed/simple;
	bh=pvOEMWs1yy1DRh68TZDVy+YivnvJK4QJdQtf2CSX9Io=;
	h=To:Subject:From:Message-Id:Date; b=LG+3F/z8o1LMZWMjTbaJv0rh/qqvfR2iLb4ONJmvC+CNFz3bsnvGJ/Lwzvisrls4Bmc4yve0bdmHiXX7cAtkJmIwYo+gv8h/nbnvDNvSUssTrA9LSMtal54RHV4FkqvnEHL964G0NH1awGeqi77zvL4eGC8kXztZ9L2QBX8n/w0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mS95pz7Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mS95pz7Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BC7C4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759523993;
	bh=pvOEMWs1yy1DRh68TZDVy+YivnvJK4QJdQtf2CSX9Io=;
	h=To:Subject:From:Date:From;
	b=mS95pz7QBelNtLbllP+Ftvzm7+jxKj6Q7PEBEg7mT86y5k07+/48NT8alfde0H+sd
	 yyrqLMJd4sN5tzLvHn8PANo5Get7pBsqEDj7glCAZoPbVh1I8gMtfRpWYVMASdrc/M
	 +lubvKjvp40UxbjWMp0EUJszUiMYvphcDLdWN+1Q9B5R6mJg3siUuInyfyFEE9WSB+
	 TQLW4elwZ4NE9a26lqyHkugXGEJKuiYkdJ/UH9DFJSVo0UjQ+uAsDHOCLKFHPt4CZJ
	 P5xm9dpgTMWkTYl9l4G9b7jnmCsnw71N3+vdsMqYMdGNC00vKJvRRq//P7EcqacbNv
	 dLgurnoX2YvWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9163DCAC5B0
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175952399358.12122.16066432185105397668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca489bac23b6b146b050dfbb8b9f24eac7a0d88c2ef518e63816f800244d2171
Date: Fri, 03 Oct 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759523993
