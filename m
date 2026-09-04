Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AB703B95F9
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 12:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788523834; cv=none; b=pn9ZGtwNolO0Id43iF/E+L52BHzafBFvlI0UDrEnKsNqMYxSSON1otr8oBUfojLt9HeTDeVthwN2iQJVaxgkOFi2+DibfQQGS7GCb3o16qwScL88g4LqCJeBIbMCxTLwf8ZhIcgnRmsEF76LHqPhQApf2+hiYz71dlWX9FRYzjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788523834; c=relaxed/simple;
	bh=KSDPX41zDaZIEWhcUzuu6HN3lz+p4yn707ZlvzDSmMk=;
	h=To:Subject:From:Message-Id:Date; b=I5u4FlFS+9d4WBkeqESIZer1NQYuMJnjSVLg7VJdhVB6QIqVDH9t9VQeIFt9TLtn526sJhtim1yMXdR60kOWawk+p3z9E8m3ciqfo51H2L35MNpoMnAy2DR2G2BNdc27DyLWSQJZvC+vVg4A3ygcG2E2yEE2Gw6l9p+eZBE4JNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TaSqLjbe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TaSqLjbe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD5EAC2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788523833;
	bh=KSDPX41zDaZIEWhcUzuu6HN3lz+p4yn707ZlvzDSmMk=;
	h=To:Subject:From:Date:From;
	b=TaSqLjbeGqkV0xqxs52KoXv50GASDguIY0ykSvp0g9cB8C138kMNsSf4sedt357Xm
	 vjzqi0qs5ZVFYqwY9XxVLyXX1wgZMsXF5eIxnNU+tltPZStBgmnxcb04qsKTZGNerK
	 MwQEfGIAMYetNl/fGvCmu6SbvSEL56zcHz1aJwliik/hAdoFTAoJF5jojk4iWHxG1O
	 R2vOo3YHYU8KMiJDT0VLW6GY92M1Xwvyev4Ckz6MM58SAWqQX4GrwBn/C+xHkKr6EZ
	 xJXLe9i928qz7nM7MrnKiHnP7wQJY1rIiEzc9vUBniOQkHVilwvxathZRWl8QR/IbV
	 bYvoI0Mb3EGMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1060C624D3
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178852383371.19632.434454809615961516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c15db29f89f2cd8eb2e71f360cd128257ebf03ca244627ae52aaf364caffbcb1
Date: Fri, 04 Sep 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788523833
