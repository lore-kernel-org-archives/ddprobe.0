Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D37F375AAB
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 22:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780438474; cv=none; b=cthg4D2j9fyfCDzgZewMpjeT2HNiz2Xr5O8W8wCUfyoj0aWhjoWXWjAyfDfGs1SPy18BhCJFh5OzZ0A3Zlk1UJdcL7xN1/uvGFBzKEfNSXpuP0TO/kklWKiUuP7dIciq3cdi1t4y+/JQyJNzJ2/rjIKr9YTMQQxA+Y34cIv23/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780438474; c=relaxed/simple;
	bh=vAQw0feuWA3g6aQhM0uJJoeC23UooFKOiCpQaw2v6yY=;
	h=To:Subject:From:Message-Id:Date; b=q89/nMb+spGhGiKflejh2T2CSFV2bLCbxBECsBn5BDLVste2ufGMY1fgzrKSYcYq5ngDN6fdocxMXWLyEb4t2O6SJ26BP9Ql+2fyueLhY9Av6O6D0P44CXQRVNVJNQt0pW6SXFbk5mpJmJZldZ/rWoqzEE+k62cXqpRAJbKiyqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t3Vszg03; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t3Vszg03"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA72DC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 22:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780438473;
	bh=vAQw0feuWA3g6aQhM0uJJoeC23UooFKOiCpQaw2v6yY=;
	h=To:Subject:From:Date:From;
	b=t3Vszg03pVf06P2VZFfap/gdt6JC1IiNjZwo4AigZO73Jl0azu47DhBZsrMGEdALK
	 VH1S3MUhOlumfViOvACIjseM7gg47YmKoWnxMqjj3qurEK4Iq8ZOdG9mzgyXOKdRRK
	 lIb8WFX48vHL96aTU0442HVcfRwgrzd3XKG1+UND198yv1OAeRmevWVT7Ag1JdvDeW
	 G80wSCAz/fWJTv437TENPqzCyILTRRix3EWXFqXHsZreUrm/gQLZOy1LH8TuSDDgst
	 B6Ahfp5S+cnmu4/XCxs+lsjzJw1xRMEe6ErFDID2iqWrR33Sh1OhmCe6TqQaMFBs9x
	 /gQA3pcfpiihw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD9DCD6E5D
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 22:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178043847368.1106.13279877649497058300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcd098f2d6decd786d6230110b6845446fcfb1916e72506996daae551dbb103d
Date: Tue, 02 Jun 2026 22:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780438473
