Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F79423BE
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748090394; cv=none; b=exAVQAnj7wkzbOdA2dCEpGv7cwlSmmpD8DQYLACobMZXb73AtQM//HH/7Fkvx+NzUZCUsHevW4Sj2w+DOHycgzjNeZMUcKxJPbB50mQp0BRDt/Rzx5y57s7lo+KniZwmyI1obv3O0VnUgGvXYingVLUvOWUlvdDgNFFlOR/8gts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748090394; c=relaxed/simple;
	bh=ruTRRcJPg+pDrOzPgx9mp7c6CdVXwbnNHl8rW2umpbY=;
	h=To:Subject:From:Message-Id:Date; b=T2K2xYwIE19WMgRyFm1sd26OXa9VBymd6fJY0nuZpZScbYvSx3gp84slAJvI5kHcP9znzBGyhF3zrrlfLXJyFy8QkUEfEeh5xIApGb2Akj/4DpxIY63ryIB66To4WKEfHB5DHY1PmZowbJjZlmIUvmIztruMR07rFWPQcruVS78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZgJnb8WI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZgJnb8WI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E04C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748090393;
	bh=ruTRRcJPg+pDrOzPgx9mp7c6CdVXwbnNHl8rW2umpbY=;
	h=To:Subject:From:Date:From;
	b=ZgJnb8WI44UVgXEc4jCRBevaE6cY0xgwu0Y31qgFLbQdxsjDB2ht5WDR64MF8ztKL
	 7WGBXMieuWxh5YZyJfMs1HK6n8GcIECN7xbgG6ZPUJYm+Inj8ZnMPbqoO6NCKqWDNi
	 HA/Xa7lu4llBEWwtDrWwvtChA+tsRM8XSf5daazLbfiO1qwZXR1zmTxcatX8WMZl0s
	 g1LLo3CFn8wqj/LeIQgjcimabxMSBXma5+wL6iSNvWnYl6hNA1v4a7lyTOU+QMB1rd
	 KUec69SUmvSJdTyoemhVZsNhiRqQ5J0wSB8DboSUnxr18o2g8NhJe74ALQr62AW4YJ
	 YyQ3bnXynGI4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DA8C54F30
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174809039357.10749.13146810865213671741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba2a1dcc0276297a64d85d87c8a0c5bd3861a5aaba2c7dfcfc2d1e956ee525b9
Date: Sat, 24 May 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748090393
