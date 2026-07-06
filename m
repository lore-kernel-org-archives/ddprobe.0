Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BEE130D401
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 14:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783349314; cv=none; b=rwZHkTc+z+S2ki6/i7xzKMdH6PtaKqiyqLx+7l+GkHi5T3EqhEPGXpMvhYRkMG6pfd2IlU17ZBC0Ce9pilskd8ijlJNWgCXX6qTx+TCoCFMrhM9/SpdEK68PghKONbKeTXzJb/5Oco0LTU8OOkSsHvSmEfslgW0AFO1rK/MKgoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783349314; c=relaxed/simple;
	bh=IKqW1gw2XsImX26/hWDU7XbvxoWvBXn/VuQ1n4Ux1h0=;
	h=To:Subject:From:Message-Id:Date; b=BOzaGsXX0ZRrkFjymwS2WKGIXqIg52XCDpBxYdDZTzzBdo3g7sQTqK8RFjjNF0qYSk+yj49oIs/xbOajEDYFgvf1v1yYom9d26/gZ18UqkQmHQPPD1mREXUrITamqUDXV9A7XFdbgxFv26Z2YuRBr9wpZdEtnP1+VuWRBTJP5EA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gu5/DKUP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gu5/DKUP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9FC4C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 14:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783349313;
	bh=IKqW1gw2XsImX26/hWDU7XbvxoWvBXn/VuQ1n4Ux1h0=;
	h=To:Subject:From:Date:From;
	b=Gu5/DKUP7/Zs26el3MDA/wGBCqaYQf4dM7eVpFwzzOepYTq9N0wYTSMaQfgchEdTv
	 oee924fNaaLGp4xvLpbinRGNVZKmcB/o4w3teWtXTzy0lI8RAqEVt+4xixxa/gxNZt
	 1gQOl2Ui2TTTJhbLMIbKvf/yWKh6AqrfOneXmqQ4uOuG2iCIAuwBiJJMGiqiHnOrTk
	 lggWm6ioC6bV3ziXUPCTp8WaDZcYRPuHP9cYRJ7gX0wBzcKNGJi7sYTpDKxc1B5qq5
	 apKZ3Klg4RS98uEHFJUvqGgTJiNhLvPzb3O0fOqRVL8TOUqvQBC29K8DAH4uXD4M2S
	 g3tDHhRXSmA5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A852CC43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 14:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178334931368.7178.16908907686995227238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0238eece52b7d03b55709037a1738d0288d762de1184118d0188d9b65ceabacd
Date: Mon, 06 Jul 2026 14:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783349313
