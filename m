Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CC061E8320
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 07:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773299094; cv=none; b=iKMQPzvUccHkb/j5IFmqGPjNldaIspkJA5PvWnxKIokx2sEDtv3lWuNR484DZUVAjU8945aD7bm5vvNFmpLM2J6WFC9IpY5Gf/lkKlWw1Hrb0qe6GZ2VNHnoUwjOMzl7wXE067HZDkICjvunALzfAuL7XD1V7vOWCDWwQYltawk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773299094; c=relaxed/simple;
	bh=ijv801AdC6CWg/IgqP0FDd1zZPuCcLq0Ay3G6a5hCFU=;
	h=To:Subject:From:Message-Id:Date; b=UvcZCNTClovJ5cS2NBWNMttxHnLSTMEJC/tffkEBkJsyGkefCDDt+LtIkLX2Ycb/AAwwOkCsVvc8DUS0jew9LDrlXfJB7qyJeM9RsABKYv+zDxh2mQxz2jh8/KQxERQJ4ia3uLSIHW9URsmuRaytNnygdyJl5TtQii16fDtaHy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KMCNMSBd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KMCNMSBd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A340DC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 07:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773299093;
	bh=ijv801AdC6CWg/IgqP0FDd1zZPuCcLq0Ay3G6a5hCFU=;
	h=To:Subject:From:Date:From;
	b=KMCNMSBd1aWgpQlbcRF/k8NDBr6dWG/te4cHF1SzWtGdIM+dDS6TtrD7pw6Q8ORrK
	 5VQy4Pks4H5YRJ/HnMRXUMlrx5MiMoKsT0AasT0dKjpRjGHQm+qQYT8J+O3Nv2gEpa
	 ipFnmm07p8B25yYFKLbirSEBOU3cZUAPEq/YxZjtSJoPuLEj9hS8Gl0HbGK0n/tlP1
	 1FAPfBJgYqBvVM3JmcCQ8cHJHyVEPX9SepaDAnPLNTKLnu4LiFBE8Cnwlq26NhRXFn
	 BmSBRcdXH6MzaB8OCjfgJ28lY8krsd8crytm60BaXhDvwr0+qm2U2DaLrGJ2HGwOc4
	 6d8k2wU6h7mxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90186FED2D1
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 07:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177329909358.30782.14024264954651879543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bf7e880ec24ea9b3640847bc6f0bca0e41f109bfb06672f93bc6261c688e5fe
Date: Thu, 12 Mar 2026 07:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773299093
