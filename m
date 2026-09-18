Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40D7F35E1C3
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 00:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789689634; cv=none; b=u5ngWUBay7+qFkV6CrYETVeQ7RaothvF+FaNAVmXvuL/HAM+xD+12+uBW5mOE1GhGqvGFnJVyTMMMIs/RoeaHYqLCe13IMfSeMWyMm4BXwFuitQrucF2qpMZTY8JtiBE/8iRpp9jecKgr3sbtTEYNNJgPU1OeFqH9WaTZMi72Os=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789689634; c=relaxed/simple;
	bh=x6kiC+YVhDmc0mwE++LgTqGBYndgNed7J1MCZMMgUtI=;
	h=To:Subject:From:Message-Id:Date; b=uwoSbOM5tKqPkhkJ8ylay/5QVjVEzbWSQd8utudj0UTdbOwD0MIME4IfNljf/r3kmGXva5tLZqYAnRP5RzV5m+yRTrIwQWa47/+1s4bB7yJcfMGiLKitmgn9hIIYeKw4p4AGbq7QXFuMca683eiI1ENAa2WSbEUa5i1L30sRDP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m53pcmZx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m53pcmZx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1697C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789689633;
	bh=x6kiC+YVhDmc0mwE++LgTqGBYndgNed7J1MCZMMgUtI=;
	h=To:Subject:From:Date:From;
	b=m53pcmZxklo9FigGpmF5dnaRXpUaMMdC1RCVRaqccZ8ZzdMFlAkKJ5CKusiKv46CJ
	 ZMDGj1+sI3mN4CJTl32OuTpWOlW/Hgs5m8m1+97gWn4j/xo9p0iShkENHUlLrXAF58
	 zlQzO9kgvK4bJ0TatL5oWRWRSp1GC1nWIs8grglEnaNV6SL/2/E6N2otLuVmeCPgDd
	 2Tfm68Or4F6FoJhAMNv0Z/xL18zPlHgWu3z6oZAzq8f+cMGDZqhRLZdsZ+/0Ns+Fuy
	 2lPwwT/h+WmmRfQu8wHVHLx8laPUxiIRbHLlTsgfv3+3oJFib74DsLd2NhfqFrsiEF
	 79B4qv93G98oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD581C982D0
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178968963370.2625.10707923412884364359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d246c09df6489ca405e0bd495cb8aafc3522d59d24b50283898c018b85de53c3
Date: Fri, 18 Sep 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789689633
