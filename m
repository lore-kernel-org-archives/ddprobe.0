Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1012F1E25F2
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750518594; cv=none; b=X26gF58E5g5vQfHy1cEwRQ7YrRQgSm+Zckr0tnCpCAsxIpIoHmFCYQ9cZfysZQ8SCXkAzxBEF2MeNAFv2VPiSptWzbr0ciuG1j9Je5zRlCRZj1PL3yRwIkQ1d/wGUNdZ7EXQ3WgPbNIdJnthaJqojzQk3u4n+6Su5lCqp45ladA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750518594; c=relaxed/simple;
	bh=ZXGz/8L6uZsbX8eF3lwk7M3f5lvqPXcD2cOjqVQmj7Q=;
	h=To:Subject:From:Message-Id:Date; b=lb2BsEOsexHF5jwib+tK3EFR2P9YKt/xcGPBSJehIzGgds1YsJU9P7S9RZqV7fymnmiRX1lRQXVXndfFcBJ659K5A1wmCNlP5leb05mPwoNflGI5lrEwkOtYZuhkII+YZhHp+aWxOc5Lh9OcCQget9bKWHRNqCrcbixxb4C5fiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G2ONtXap; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G2ONtXap"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F8E2C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750518593;
	bh=ZXGz/8L6uZsbX8eF3lwk7M3f5lvqPXcD2cOjqVQmj7Q=;
	h=To:Subject:From:Date:From;
	b=G2ONtXapckAZkJrkUmHEp29lHNVLfBrkPPZV7T2BXUltSa15o118Nj9ipXsFZvkcm
	 uatmPWIkoqbCa2D6IVQ2H8+l0xK+c0l6QuGGggdmMuzQiqigvUYbo6UpdNh7Q51H2C
	 ME1BdB1+XHjG2OSiNg6PTqG2s0PzCj3uIryK8v7FIDsqkICYECnLrCivpjqZw40y7H
	 hlb4UW2gdsIMBgzD2rQeldshxQDp/iksDTBlVokZmoqLTzWbT35s/1SRZ47VWDZEr+
	 rdDaxcDh6Yx2MzTpwb1vP27ITAFkwJBornPazeYZ0F+567J02afDNgpuH13+YIsE+p
	 PI+lwQ2pbVBjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91249C71157
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175051859357.9219.9013981428312647576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 111b1e1f2278fd76819c598dc949b412ef5d9cc228957e8c8feaee3292164c6d
Date: Sat, 21 Jun 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750518593
