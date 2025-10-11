Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F87F1EDA03
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760172594; cv=none; b=BPHJR4sxrO5Jkc9YRag5TvMTdZ7xrqVmZW4sMU6YqJqbA8mc9y3rzsErF3u8Yh1bjvhrZUhKSiMupE1elIXsu+8lySEDRbapT897sLxui9G7b6pZOsThq0q+tf+j6ZhnDgE5NMLo44hRDsmcxk+Yxy6L31qWjQ61QNxFSGzySD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760172594; c=relaxed/simple;
	bh=3d1tHzwyrTddfY4DVrYCXDygJbZhlk35bIqBo6mF5fQ=;
	h=To:Subject:From:Message-Id:Date; b=X//4chYXI65yTLQ7Nh6aMeH3x+wu2D/uGeAc5LNcF/crC8t5oKq77p8Pv/3o762WNqbIcfa+FtPgCKVLTBpDFVVEpVvOOf5lcd2dSTFElsfLmYj4NmVpf2TPNe8RhLUmW94ZiP9Mw49TQ9d60qKIsGjVl0rCOz/NVSCwdQ8Ip9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gEjnxkwk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gEjnxkwk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A88F3C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760172593;
	bh=3d1tHzwyrTddfY4DVrYCXDygJbZhlk35bIqBo6mF5fQ=;
	h=To:Subject:From:Date:From;
	b=gEjnxkwkTDeDfvfquK2NmFEjbkv2N+Vo8b89rEzcSyjenQiSHXgRVNVDWUheS4AXX
	 EprgSKCYsCHN2BbmXAbORtvuEN81v3PNJBp9xX3qBch021LYB5CKzENfJe6znrv1O2
	 6DdEG3y/O3HRFX8SCEJvi1LU2wwwAvg5NtcMwehhSkq55xE3Z7z4D48C+4/QPhGUwp
	 d4LS69pEkeNuJQMxTGdRMfNZjF+yTD7tK/hmsbdk9M2u55ar0g2WJwNxbPR/vXHhJt
	 YwTFy11BqjxeL87krXab8CMUNxoE130/eWjjOYB2F0PMHpGQJAgwhKA7avSuIt9q0k
	 j5zqlN1gwpn/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CDFCCD184
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176017259358.20164.17021144998759102405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2be2fb61e1bd1f4060517cf5f431dbcebf99ccfecf56a3f7e2ad17133f74b4d1
Date: Sat, 11 Oct 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760172593
