Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 185A32441B8
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 19:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775677534; cv=none; b=d24n2tiBrj6Y8WlyM4V7uXGDJjXdt/5nWrYZvwooGMZWP+DhjaugGCmRoVV81fS+LzAcQl3cinJ8xL6esCHr0HhQ2e/6ks//z3xrN2SC8B83jH3p5IcABzIwxSWEjvWY6wtPlTFG213yB+V3qDwP63XA5d+nTqQKsRVCo6Gmayc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775677534; c=relaxed/simple;
	bh=hwMF0EvuNg+3S7DrM6077MkLj2Ri/oamzqu/wlu9W+Q=;
	h=To:Subject:From:Message-Id:Date; b=CvSbn6yV/o4R/3D09JKuJbGux+3UVxxNWUeIIt/aMlB7cY3LcUeo23tdko/XFqGSMOrd9RBQ2ZIukkTToS7kkcxwEfD/ufPEGLqAeKxHyv0TYvCXkQPwrvPGLWbv3UFpI3mHvmPZYQDBxAR7DD+5F5PS99S24y89L9xlthLyAck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nup+tnj0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nup+tnj0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8487C19421
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 19:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775677533;
	bh=hwMF0EvuNg+3S7DrM6077MkLj2Ri/oamzqu/wlu9W+Q=;
	h=To:Subject:From:Date:From;
	b=Nup+tnj0BVDEiQ+quIYLMkE2Vx80mU6ZYfxtvMY/voRF//WhThTPvKq3/8XErMg0L
	 d6XZVF7L74V8skMQilDqIaEsKQ5/3T/bFzdfEm2rLRxjogIZmmdTgZMbLDHiHHUR4x
	 r1XydFWrQXbzq5wyzoitbj7EsDQMhF09fInu7aoETOaGQ1ZJ6LXT4BfxeOsRuDpLDa
	 VquptlVHxqPp8xmdsXzKTyAQCWpoJGEFVBvNP+W0F/1g448FpmPVp6tq7Jpv4bOpkz
	 AqJlcRr96MemtYiS0X+PWbGw7LN1lu3TCv3NVjyyIMZ4PJVxgC2UUpNUEHgY8wfWzR
	 TLIiidZim0iNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAAFB10F9975
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 19:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177567753368.27459.4279141365304637220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20c8253e363882dd2a6b7a50271af1fd9fec7160c30d55c8fb7171e62b00b65e
Date: Wed, 08 Apr 2026 19:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775677533
