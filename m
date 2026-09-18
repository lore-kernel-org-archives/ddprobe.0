Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AB1F3C9EF3
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 06:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789712434; cv=none; b=Jreo9y+RS3H8N4JpvGAjDv4TLwATlIxdiajax1SzyBEFe4rd7Bzy6DYPGHAtk4ZjCvWRVpx6xusTl5cDdji/q35QQ0yRsZKqNPWB7j3GmAknpmeMsW9T5X61Fz9aVHgyPR6w4GU8XjTVykPUxAONCp+qt37qbsMo8um+aoHpO5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789712434; c=relaxed/simple;
	bh=44sSXCOkpsQ2yV16TH0T9wfwejavPPLxwzEk8eNxGic=;
	h=To:Subject:From:Message-Id:Date; b=S4YjM9K2rMTez4wLkOHeig0dqjyt2IVL3nt4QDQCRYUC/9ifffzeyX5sQ+MWGNTQqsPFkveCXKNIV5FkJCvBJIk5HUA5A472teQHRhScb6Ydsk7FsAlQ323Mgrcvv/b9juRA9YqvoEsntu2oqqmKZ/5x8NwjRrEB/tunkEEKLzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=avZDKHqr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="avZDKHqr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFCF0C2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789712433;
	bh=44sSXCOkpsQ2yV16TH0T9wfwejavPPLxwzEk8eNxGic=;
	h=To:Subject:From:Date:From;
	b=avZDKHqrGWFqImEi2GKFBnTl7XuMXTBfnDVcYhhqS5XRfc6dczV4u4cSZG5OVpn7h
	 jIbZp75HKgI8Dq7MZmzrJsK4JV9p5EkOpFglmLGDwGJPUxvo/UBCzcnp8NHCCuVc3s
	 WNui7c5kZWvYy0m0e7n4bsA3EcTrXmZcaXphfbcexwzxinLU97SzkDTa0L8pI03x4a
	 UL0+ABfsuMxS8WDWfbRLPlNquFOzCZs4U7hN5Kw82zlQLtnrIMR4fndtx/q4zvikNd
	 nI1C6vhWSFOIN7oTN5pFot0bt1iawfFg5vbvETWCBzbHtSv5g4n4DP2Gy7pax/dpjl
	 LTAe0pCqHrJ2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC5F2C982D2
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178971243369.8723.13068709693631311587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e21ec5ef5a8e305a4130cef91ddf0141c336b1a5d5f1f48568a4416e8ed5d8e1
Date: Fri, 18 Sep 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789712433
