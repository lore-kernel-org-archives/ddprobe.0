Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EE9484A3E
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 18:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741027134; cv=none; b=tDK0gdf8UolFhYE4+w3CdHJJjzU0SFejnwErA1ZUNDUW9yqu9fWUqllzWhpq2XTgVXReVp4Iby8+yYatGPVwk08HlXkGcSrFZ+PF4xyaY39fewXXtBqM37SFjK0wlCN07v71wpEz2PmmH37Wq8VCI4ffRWwxyfueUBD8WhEeUYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741027134; c=relaxed/simple;
	bh=bOTpU8PDq504c3X9rlDkNGvubYv8qI/TKDWNjA0ZZF8=;
	h=To:Subject:From:Message-Id:Date; b=lxcJJ5CDEOShqJqfoWkW2FYN6qjII3p4ANUS9PqyjqSFT+lpPYyaZpTLqL8mqp9bQ88uYvontWXGzmEbaEKoBkupW0eK17byrfifqzR29izKTJjYpwrHFcaCVunduEp+ohL+VYprgHzKw9HwM7m7/FgE6O4lFgYn5meFTOCMgw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mNrNRybm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mNrNRybm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA1C1C4CED6
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 18:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741027133;
	bh=bOTpU8PDq504c3X9rlDkNGvubYv8qI/TKDWNjA0ZZF8=;
	h=To:Subject:From:Date:From;
	b=mNrNRybmrIZgcVT/+Kstf52xOWY3vK66VPdBJfTefOMhmxLcv435Q04dB3baapSHH
	 ME90whDsypi7zGPbOCgyw2hhGyiJnN6veAQsHa7J6rd535QUbKQoyXhZ3sBnRl23rf
	 xtU7DxzPyWya6rpws3xXyxWJunTIahKlCnmVzrgw0AQWh8s2R0NvOizHJGNm8nW0s7
	 AVpcsussj1oO08MoGvfEkEZZ2PZbkV2/TJ+YThtL5WWPQRL5hRR/VQKO1MFzOcKTYQ
	 3HObqlPX/pWDIeznCDZfnUBG4CpM167qn7eJF8QXRennHZVgzh6UYcRTyQiNB8Sqd/
	 SQEfMdjUDPhxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 981A3C282C6
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 18:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174102713361.5350.11677340807124402665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea6116aac32f2a85b1d2832b04a46f630c62f15610491c4ebda62bb6e89d59b9
Date: Mon, 03 Mar 2025 18:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741027133
