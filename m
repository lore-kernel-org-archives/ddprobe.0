Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A081318BBB
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 11:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770722634; cv=none; b=tc1uFL9rjAOXH+LnylbMYkrnLqhaii+/TyrBQWDWX3nF6Cf+/m5ofDPh1FxGGQJW6RO6gvopx/xPliejCcw/5vTJpyv8LD+5M+IpZENXjFcfkonyEWTEKCmtBI5lAJTDp2L4P0GiZTZLPqw41RppmrUcvTXaggyXh25bUkJtMlQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770722634; c=relaxed/simple;
	bh=Nv+uSSYICSuVI9ApgQ2plXIx1OagbJu6PAI2xvrkjsA=;
	h=To:Subject:From:Message-Id:Date; b=ID7VAmPQ3GGTo/KN0QVPqImnqXPMspnciNIvKFQpyXGVrHKz89ppzOenLE6nq9JdU1rqE1F9/NdTiiEQY8/sfiCn15X9LrEKBN4iQlq6gv85O6kOaaZP9IbEOLx9UdL4UsKhH+i1XYPLTWbl7tJE9farOzNfuPSIS2so8slbO+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oz434G0j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oz434G0j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A80A5C116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 11:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770722633;
	bh=Nv+uSSYICSuVI9ApgQ2plXIx1OagbJu6PAI2xvrkjsA=;
	h=To:Subject:From:Date:From;
	b=Oz434G0jD+pLoxU7LPg64+QVn05Ar8gYf/uWV8yuJUovIYQ68W6qK+1cKtB39QAqk
	 m0pSGGtZ9mgVcL7znbwybE2I9kaPpXKgT9nCm2Hgg0e7Qds3u0hGNdc7X1wQfCjChW
	 V0osB1Phm2dB5beo9Z4YMW1syv6IdglPmzUgp6AzgxAYtmBdOdCfR+E1fPL0o5nwnO
	 RrpqwV0FMhAiBHg/hJBSfyIyb3SAeGdIMgiNrtEcCwjl8qAuvYjoDw9BeGIVwNtWun
	 oJxuKaNL52bySKR+DShdwGC+Vc9RCTydxVjrRP1gQdaGNLVPF0hJQ3PjSCirsfPbLr
	 pthwZ2sKUYoeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941AEE7E0DB
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 11:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177072263359.881.14444661465909665263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a8e5d834918b9e6ab59caed8436d0154e9c45c8290cb0034dd198ca13099021
Date: Tue, 10 Feb 2026 11:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770722633
