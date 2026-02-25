Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D87CE29BDA2
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 01:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771983893; cv=none; b=h2cx+lNsqMObVAcR4rnJuwkVI33uYspFaSbV5c1+BA9JrQFIwFTAGvPg0rQEw1bMjpdZIbunel8yYgu7GcLV+8WM5LLhvxZzP039cV2NLcEEOFLWWyc63eb6yD1O2pijheCfAi581LOCX38DGrXBttOci2ebwhLF8lw7wd0YAh4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771983893; c=relaxed/simple;
	bh=kihmVpssdnNdmRu3ej6LA89gZje8wweYx+1wEls50bo=;
	h=To:Subject:From:Message-Id:Date; b=bJl9JFeDek4yMKz7Sh6LNkF9ddC+cbXF35IW/K53uPHWu27wGPjnxbO/TdxImDA1EB6UQ/JGP7a4pub+459JgF2O4phplVKSXolDgEf9JN4uJ4gz7sphg3pSobVnPNwxl6MddPmh18dvy6F4DaW/kD3Vv6VStUZwTRmaaC15Gxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zi2ztijO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zi2ztijO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66ECC19424
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 01:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771983893;
	bh=kihmVpssdnNdmRu3ej6LA89gZje8wweYx+1wEls50bo=;
	h=To:Subject:From:Date:From;
	b=Zi2ztijO23nTVaKCqOj+0RTCQWdzOYRZVdK7bYHizxke5sMV/jA6eMUcB6mk61yFY
	 HZCp7iahbLxmh/5KyVKF3vQB9e9fRQeAvuRYtbqKfZiirpBiM2kVxX+WN15//m/TDh
	 Fyxm4O0J7j9Iv/g1y28ctz3vt7fxiTy4pBrippshT1tr85Y0YNa8sXRxR+UxAWbWz/
	 EjwaTyoymZBTtG7pvlLDAk5lJh86qbyMbufIQiZ17TDIQP7jCqhQgEjRuqffeBanDR
	 ec/Gy+NgsSCIllQS7m5Yb4/Lhj63WTqV55jpxEFjzUBH6WUO+l3HfKANzl5GfhLaZN
	 Vs7Z22W3Kk8NQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9550FF55438
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 01:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177198389360.28328.16180646944271953869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84c0e6ff18f49a6bc0512500f5295471de59001c638f6f1bfdf3c31ee59151b9
Date: Wed, 25 Feb 2026 01:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771983893
