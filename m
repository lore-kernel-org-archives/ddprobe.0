Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64ACB44C9D
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 05:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715060543; cv=none; b=QLIyhp1sC8XUTSUTIzG9pmFd2xdwcXK1wbL9up+UDgarJF8rDT01FJ8suBkmUJINVqsOUusDLWBbd7Cw4d2J9Ey3hrbaskcNr5zcH3Dy3kMtSjxOaj9SwPaJIIG60VlcQGgmoKIvYyFmRhgM6bojEUJNi3PtAgyeIt06OuEvLzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715060543; c=relaxed/simple;
	bh=CS6h+eZHj/KExtf+peN0AGnPRxO3HK/PxxhHq7MIikY=;
	h=To:Subject:From:Message-Id:Date; b=jrK1ClOJ2ASwTInZqp52Q/hEkVykQHd5nKcHyYILkHIggQ3banw1CiOsYpPtiQnRORoimso37WYGXZUU0/6OYG0Qy7MfEI4q50Bk+RKEuKL/OwNi0e5S/I3tjyt3wzBRhjh9zt3N42jljqCVotmgaWR3qWRxSGHi2lEW91jx91c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A94uyfQF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A94uyfQF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D50C3C2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 05:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715060542;
	bh=CS6h+eZHj/KExtf+peN0AGnPRxO3HK/PxxhHq7MIikY=;
	h=To:Subject:From:Date:From;
	b=A94uyfQFsLEwUHeYDRZVemnfaaDqQE+Xieaoz0QOPRkU8GHfPDMa0eONaU2ypk+Jm
	 u7niW8prEl4Y+aU0mH53SSM87ubJuBioPTNGQaBAu6MMf0WotrTYn/DoEEQQxQGp3o
	 kjSGeiUA8kRHy04stNW1OpPSEmsGqfkhuDLWBuO5+C3uwxQw4h5WfjhDi8jm2MZ9XP
	 YcFhWS62+5H4qV/AkvlVO1FZ+V3ihEl65dYETXSjehGcoyA5gfXr48uRUrESONg2QZ
	 otaYGI4fA6tyBg0dJQUewyaiBPNWTyNyAiyiVegl0SqEn8LJc7vVHsuszgRGksCY/G
	 lBzBv+Z34oq2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF15DC10F1A
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 05:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171506054277.28281.1102308390711504221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91755f67cd65d1943115088be8885fdd76ef4a3da44caa60fbfd6ffb965f0694
Date: Tue, 07 May 2024 05:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715060542
