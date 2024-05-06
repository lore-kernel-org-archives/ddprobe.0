Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72D536BFD4
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 07:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714980743; cv=none; b=GpxD4o6VG6Bw76eCQvF6OvEZBbHPSOVsNFEzrfZrvHEfg73/XR8nMUVOJtiGm2EJlhSQQBQ/Bjs/d78JBA039IszoB8JT+rhUCiiBGf4g8u20IPX7atdfdS44r9RrRLZajkH6SzUSWo83MBDPIIg1gnV9cjtjLuGo7lnrvp2yT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714980743; c=relaxed/simple;
	bh=3Baw/6ZeArtlW5mSJEgZTcbfCBhcw7OqT+u+cSY60p8=;
	h=To:Subject:From:Message-Id:Date; b=nGbfYjtZeTi6o/HzQvZ9QoQLALrXy67WLx2WKOnTEfgqfurCMpPUQCgT4zKAvm1pFmXi8rhQwAlDkbZ3OpbcmqkKx3mvzgf8Uo5+lp4dvVpBwdPmj1yt7h5i5N1XevlCslx/DNe1MllH8lWHGOQWT2qBGmrz3B/p2KiFPysm9VY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uEwcWXo8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uEwcWXo8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3286C116B1
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 07:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714980742;
	bh=3Baw/6ZeArtlW5mSJEgZTcbfCBhcw7OqT+u+cSY60p8=;
	h=To:Subject:From:Date:From;
	b=uEwcWXo8zibTZTh9b0dna/w3tdWkSCxbCPCNstG3KA0FtcCLbncc09Kjsw93zkO+U
	 UVgYGcx7DSMANtQnCAbLjBtQQAUlPLNIQ0HForY6sZTFZ7vo1NiWXzODeVFnpUJc5S
	 faWbE46WUmAtdlDZ9SCuFHvJBDfuDyzvaYRogEMdn+qPIrU3f9jVMCQEpvpZdU1/n3
	 ZrbAgz3fsGoqk8TJXLG6qqSIW8dTb1m3PBXMtXlOnhGKq65TBiypGqUjlk+sZOKT4q
	 Bxp6dRWE6eblhCIHcWjOXWuEdfDUelUOizt1MLftOyYXkL4DvaeFZsn+rPNBFOyHra
	 9lLqUUJl9uQpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6599C4345F
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 07:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171498074280.23575.5870017114300103821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a4651ebea39def69251ee6b79c1f87f9af656a8d24196112536c3b60b3f47cb
Date: Mon, 06 May 2024 07:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714980742
