Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D76435951
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736963154; cv=none; b=TZ7U9yPn7BEEBhJlGcatM6dc+EXtD1SyFaIH60o3mNmKiHgqPhXhwUmIcB1dogBVRupjkEUVX+c+FCc7SBOjP6jX8kfIlESD3bap/E6uC7NvuGA5c3xn1HShw1SbgkoWw9QtIdelWUUcpLUBIHjvO760eQh/0DoX1Zwi9XVxv2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736963154; c=relaxed/simple;
	bh=easDaXEPNVmS9I4FKkQDB+HaDKTwicRwqPqeNCisgKs=;
	h=To:Subject:From:Message-Id:Date; b=CRbYA1fnMPhR5hlWUmwOcTxD3np7fUcw6s3G5gElraeqORDB+B8KYYvRQw8CqDY0PCfuJ6st34cUCitV32MkasDswdMijJN1dOuLlySh3sDmaOciE0Jt7FQM3uEMaUh/Ha6qmWzf2qRiASU99hhyL2iYCxnG1LIpz42AqXk5Nyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OMLfxKv8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OMLfxKv8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22FBC4CED1
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736963153;
	bh=easDaXEPNVmS9I4FKkQDB+HaDKTwicRwqPqeNCisgKs=;
	h=To:Subject:From:Date:From;
	b=OMLfxKv8osUUATSPoPRrJNCUo29lUcK59LFqZfw0FRI9df5Bd4tGsQjo2C6TqRLrH
	 3VwFzaiQWBsh3U3yL/L0LrQn0xS4waPq5EpSD3JSaWmYIrHNjcF6Hdq+hhP5kkOYh+
	 NiJFuq5t3AlluGTW08tQptCxbD6RRpsPepTQxE4i3EsRe2mbLFsOBkn4H1JTKERBqz
	 a8G1yHJyNHh+otNY3mlF4uOjKL4Ik3ySKNukDQHlcMM7AyrnrRu16kbW8eEDQuIwt7
	 vu+nKqTMMr9bJk8uGq6YTl64IqmHROIe02Wdt2/Vd2st05tBWUVGyqis90eCbHwDmC
	 ZX7qeCskwWEmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913B1C02180
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173696315358.21078.8696192874648584737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2066db826a0aedb95c0523ec20dee699f15022e79c9cfeaab3f1b26ef3e19a56
Date: Wed, 15 Jan 2025 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736963153
