Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25ECE38FB9
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750924795; cv=none; b=Ru2moESPzUv/u5QU1EJyEwD26kD1AAWQ/EDmnJnyKxveGVxp28GHU5y6UGmP/LVJtMO85mjXiwPu6snvrIKG3+GctFR/Vg1q4uIo+8UiW3buQZ+r84DnU+7mLmqOYBNAezJUzidaDDVFpwKUbd0Q6FnPUKnTvasMHCgRGT7Xxe8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750924795; c=relaxed/simple;
	bh=S6zFrVogEI3+g+gibkzsa9PycTIQc/V2koAGevtqqnc=;
	h=To:Subject:From:Message-Id:Date; b=rkwFknV4cF8jhzXt8ASnyoCb+x6HKBIGmmnXIunmEcMv9yEOBc9iZgydEViFmZmxyc56g9E3eP3+G+fRBZb1KNh6s4qoUmLL+FtdLYVhUgLuElarYnWnQnDfXBOezZ792y2VUT8OrUfCCNxynzSPeb0Kodb3xbvXxwvzuFCYFS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iTizFSCp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iTizFSCp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15B7C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750924793;
	bh=S6zFrVogEI3+g+gibkzsa9PycTIQc/V2koAGevtqqnc=;
	h=To:Subject:From:Date:From;
	b=iTizFSCpJxWKG6FPRI2iMKmmmWdK7XQKdoo22t61An/HToVlOWiy+mEaEq8FyyQDv
	 y6qyWLn3VloxpjwPeKcw+flxjeJ5kagZJ9544xCcuhwj+CTLYVW2H3hFzTYnQvHK7b
	 JGsA6O1KtSN/nQ7fNnxGIUDrReaWvKH9M0j3ufDPNSPZS43CetSXMgUaXIO3903+50
	 NUvVUu88zT/9hc4m5d39AyIgAdIUv+cFFPaO06d2hJNH/xLtk5bNIB4YRaOA57Qu4H
	 YtzKHfswF6wdkMn3KVTOhJvUrvqEtDPRbPitZR54IbCqdCArB7aB08irlEO4b/TjYU
	 YbMTA6RE2fmTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C53C7115B
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175092479358.6308.5851141152362684765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d796df642b838992f64f467537c8e1749f772082f7a61da9110b68328a79a987
Date: Thu, 26 Jun 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750924793
