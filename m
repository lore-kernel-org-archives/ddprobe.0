Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FD6B2F1FEF
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 07:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772868894; cv=none; b=P0tdlocnUV7VumB7tEGrf5GdH2nKrX6+wsC6ScpPZurzZ0qEEU0KwG9JgEy31ahTDTzp0SxGzaViyOIH8C38gA5jmtD0f3AzNJwC2k64yNg/fIXhJ3G5XqeRuWrC8ajdTvPZwjCYx8NjdPfEOYRUVzigpfw2UlgXRjGSsO63e8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772868894; c=relaxed/simple;
	bh=GHzkr+/mnA4yyANSTg7bH2U8kWXq+i8FU1E/9qLAOgU=;
	h=To:Subject:From:Message-Id:Date; b=KZ0DF3AaU2T6JKAuMOKpLQA4T4Xc6YmEnMQzrxjg4Exjki99btLQGJWSdPV9Ry4d4R8K3uccr/FwZva4m1yev4L2n3CJYAJ5sOampDNIIZ9xI+PpjDGYZnrpasg1so+5N1im4aL6L0mpbNqNfIU7sn0AMDeTX35tSy7XECLof7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gMw+dY4C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gMw+dY4C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6F82C19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 07:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772868893;
	bh=GHzkr+/mnA4yyANSTg7bH2U8kWXq+i8FU1E/9qLAOgU=;
	h=To:Subject:From:Date:From;
	b=gMw+dY4CICFBRbBBwPjQHuwQCWoRBQHY4fMZrAaaTLrihxouX8eub2oNkg2tshXRO
	 ICkGw+y7kllXrNKNbV2QdQE+LGXwjzu9MjgEfNQ96R9ktt/OulEi62AlfTovXDaVRy
	 Lo72+bKN2CUKEdE7nMabpETkHA/AiHk+v9AbIQpPpsMYpwK2Gk3u/3aONxGQqXjGSw
	 hopNmz4dwyqDNBrbIbFRj2xBpSOyY6zRgywz8/rp5Ivmo/GsPQ6JZqDyrPq40pEh7k
	 +6oU5G4t1RKJpnLXzkwKeB7LxlL1wC+SlFVRI/F5i+L/D/rKhuzvbK9mRAmpmYkUsu
	 iPRCAcE/xiUhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7AD9FC9ED3
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 07:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177286889365.26763.10518690391392812914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fcb1a9dab4427e66ea49f01d11282fa1a94e4a7f491d2cb57d7f74c4d7a52f6
Date: Sat, 07 Mar 2026 07:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772868893
