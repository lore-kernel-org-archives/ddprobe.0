Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22E5F4C92
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756921194; cv=none; b=eabyy03eZg+/vXKxU0iJCGEdHTQ+id0CK40nNIX42tUVwtxxrfaxzQSRvj5Ivmcp+6OObaCVzts5LaLBwTo30saz0/rntBLrn1m8b4Uf0lsckFfbAJQRdHtAb7YiaYMQdjnTlJkqI6fFtBUrKbSVn+gIInmy1fM0WpuYKJP6knw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756921194; c=relaxed/simple;
	bh=H0wSTkQVaBr53e5oieHQ5jobovC3Kwl5pNwKUc423oo=;
	h=To:Subject:From:Message-Id:Date; b=A6xmTzeT7o1KcM/7vo2vgkSxA8CgT9yptOdhFIncAAbW9r4LsGYrP1QDuvdTIUwvFADHrW1B9IUrKh1KFNGJBHRZWXl+2QvqQRIi3ceIB8bp7+fOocqca4EzmOrr9ifpAYQaJMPQrCSnq1VCVEr2p/kKfSpNQfKBWfbh+A7tT/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AG1aN0tn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AG1aN0tn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16BAC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756921193;
	bh=H0wSTkQVaBr53e5oieHQ5jobovC3Kwl5pNwKUc423oo=;
	h=To:Subject:From:Date:From;
	b=AG1aN0tn0dtQjZ5bDTit6IL9o706W/z3Cci0O9Ln4wMWKAW330m/FrBfLFblCBotd
	 xDTgr4LArR/WSWLKsRW8cfJjSNryh7z6Tx1yu5Je6fvC4zKwE0lG5BFXiD6MFF1f9h
	 LfAsyhTfvyt/5e2sNS4pNyHEGji0bfrSzCNQib4ICmx3lvRXgkrPSUp02s4GlD3p8W
	 tphGqYSGMueJVumuLCLIg2xjOUUseEmGxgJ8+LETD1O/1EtVPxQ/QG9IiIFRK1fSW2
	 EST1MLgC/x6TNoxoPBydSLb1jEoq9IfFoBh1Ff5ePVGq6V8tDl0exn/bfFKuDNTq17
	 yNKJaQlpzXDzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90138CA0FF2
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175692119358.11002.8880732165273379357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e77a3f153ff570ac06ba685cd1bed9dfe195da66c770fd584b9be74c76e590fd
Date: Wed, 03 Sep 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756921193
