Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36C2A1A285
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 11:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766920434; cv=none; b=qKa+q4vYlx9jGFpvXvY4CMSAfAazkVIbTY54oyu+E5kIDVTKZB4QXXHSi8ayqWw8o519UYlIRclzEKNFYQynMzWbZsJ39DDrwnBtbOgnac4FMntXuKBaAm/vTQ08EYnG15qJgJkcAYcwYMfOiEpoFu6U2eZ5v4n3A2bnb73zu+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766920434; c=relaxed/simple;
	bh=ezfBtt+YPKCjTWldVphvPjNv6qL8mc9pG8kIa17snt4=;
	h=To:Subject:From:Message-Id:Date; b=Kt/RvZ8lSHnDyFafI/9aC3vRobn/Xukfq/dtZ0lPUAfcWrlen7KJqMrxhMv03/t6+sYAwXwwhvIFwgxw9CDmiSNJbq5r4vbT8wt1gUboIZWYm+cpTpmsZXQY+c9rn3HzLRNDHLlvn0n2th+9IWTn9GPLov6rox8fOcqTUGu82ao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QGmbh4dt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QGmbh4dt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D19C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 11:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766920433;
	bh=ezfBtt+YPKCjTWldVphvPjNv6qL8mc9pG8kIa17snt4=;
	h=To:Subject:From:Date:From;
	b=QGmbh4dtHj3yy/eIWLcG2HMHL06QRqqojMyqN4wn4qaMAT3nHjqSEroFPKgoQD50b
	 7CpHcXFqNKEswMPCluY9U9mRoSzdUoNy8Gkvqn3Moh4EaFi/MCz+B7Ez8fZOwIyi5+
	 jbwGTzZWGx6HlCCsYpD88IkNF6NTcyIGW77hsIP00lJmB9vYCfqGceC2NWANfgIS9h
	 Ofrfyu/xsfb88ok9NnSVSaguNHJ0tuzizLZRWaR8cMqIkUFUcOZJPPZRbOaY6CxmCF
	 KS87oQ4UMwpPvD/s0aClkJcyg2merw7yKZG1JDNF3oruufDIiqfMu8fOzhAmWufr3m
	 /gUjwgNBZnd7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C43E784BE
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 11:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176692043358.27694.15866621394605448696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8312a4ddefd423df7043ba8860a403ba879a138cf75d12aa4a6989a5a8533609
Date: Sun, 28 Dec 2025 11:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766920433
