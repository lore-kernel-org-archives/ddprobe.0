Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F24315687D
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750633196; cv=none; b=lsWqQdjNd/Y03eNJwlK8EFMuXFmsn09ahCUxAvytnBTOeqsx9MXve8nNFzDxHGCBoJjmtVzrSiFXsM7otFwpx3FgCIuNcAAmVFglLTrwmIZOjeBTVbaPIWT30P5/2AFat7fZNuQUskWyvop6kJaXimR2+JhFlBcyasG3wVaM83g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750633196; c=relaxed/simple;
	bh=ZSjsLHeD9EbvKRfPgnn3qmpeCasp+HDk0J2E36L1/Fk=;
	h=To:Subject:From:Message-Id:Date; b=RgWvEKCiDsK9nqdXimQ4PwCtQiFM4EPgt0qcwC8oA2BRRV3iHhAkAGqdlIDz0zVubP4N45UdTin9UlMcOYPaxIVT4jVBN1oBd6DD0JKVkHSU6LPIanvLUKmdnt+EMonVHVA2zgs/xU5RG59mZgJ02RI29KnUbg2mnGRRoFMPkhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oGNmp+a9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oGNmp+a9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A83A3C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750633193;
	bh=ZSjsLHeD9EbvKRfPgnn3qmpeCasp+HDk0J2E36L1/Fk=;
	h=To:Subject:From:Date:From;
	b=oGNmp+a91YmAFtY4PuCer9X5W94HwEHQ/t4lsVymFLfa8mMrYT0XPqrAXh+Eqv4eW
	 pEENBQg6L6b9CLWeo8f+u6ixcKH373ihOk/9UlZL1aQrMaE6BIXBL6a1NooY8TbiP2
	 uL9RmJcPiluH/TtAY4BrJQFDNQVfP1/vsufiLyhnsUwz4y+pDCIR3twgGwkUwOyrDJ
	 oG0PNzJZa+S1KDSN9xdbhkTlv8mVIGzCsynI4WqBk9tOMv+SQPU4MOQ7zKaqQWbluR
	 N+fhQjqhNynWs3KOos6i+PINrP1b9P8RcSP9bR8i8CT3s6NFO5Clk0wyGI6qSmMaXY
	 m7UXhOyPFZAKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9193FC7115A
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175063319357.22971.6587497220848536585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fda5ba4b8955408eae8bd31eeee778aba251025fce160210e7e2a5d989c8474b
Date: Sun, 22 Jun 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750633193
