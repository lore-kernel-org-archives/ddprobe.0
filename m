Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54DAD1FECDD
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749197994; cv=none; b=MDL7kvRbrXLBqCi5GDWnOeXjQV00jFxPP+eFLS9FW8JUjFO2/zoA95s4DP0Gnh7BPGAwn05+3DC2t6FtCzR323hEOIPVyPYdflXv+S7p3+u6RfP5bG1bNIowdHoxKDQ35CGVFW9fRWkol0DIz6NexTYXmf2hK+a+3twJRtNOBXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749197994; c=relaxed/simple;
	bh=yncry6WBrNzGtIEuDexWkwS8eYleYllU1LF42xcdeAE=;
	h=To:Subject:From:Message-Id:Date; b=mBE4XrUgUsxsNkLvZoEX7gdjn867TSEmCdtxtWNng2H76M5iqpeOUUlCcgCvEUjJz4JTeH3Q5D6jZRJS0GOKB9C5g4ka9LKybL8I0CC+z/4T7UeLB6EWDrPcXq1CENIH1AH+4i2n0N/KFNUIZsdWke/zSycCp/Qe8MLjC7n13QQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QHmV7ftq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QHmV7ftq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACD17C4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749197993;
	bh=yncry6WBrNzGtIEuDexWkwS8eYleYllU1LF42xcdeAE=;
	h=To:Subject:From:Date:From;
	b=QHmV7ftqbSQKia0BHCpO7ZPtWMMRnJyjDancczq48dSlR330Or/XzKY80st8r4ds/
	 gAyE1Afk1fXX08VLE3XbUkrMEP0ZodM25mDtd3JntHvj+f7qBm1Yjm/WGj+En1Y34m
	 rsjOk8/UhNkzx4nBmSuri2XZs6C+UpGi7TQr4pZUByzYrXWSxUZFg444kBsz3LRIn/
	 N4CqzRoNR39jCBHd/zsGKopSApnt9Hs+da0JCMLxPmfprzUYQH9znMulj168lcHKyR
	 fHAGbHOslXTKH9TB8krvcmjMQAdbyyhrIFkyZRXNwHUKMPGlgwOY990vYxWG0tqdfB
	 HYs8qJQv8cwdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C735C5B549
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174919799363.21683.10499634039850654465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2199f7c2f9bfe4eafa9fb6f4f3829e0efb75b8c16c91f9ed0485c195dfea41fe
Date: Fri, 06 Jun 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749197993
