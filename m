Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D2F3255F31
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759030194; cv=none; b=SqW5lqHe9t9f3zYDiT3yoQO03ToGWAVLAs/9bnzsk6T5KdnP0HLVDW5EetfSUd1h2DvuzXWmFuXPfmiSvFFFoMr5upMxGk8gCMQOIeszUlrss0M3YegCyyuCJ9I4XKt3fexxoBcO9t4M6hOg7hKKLvalZRW+2HJ6QaFDMIgsuvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759030194; c=relaxed/simple;
	bh=1rUWaTV1nYm+E7Kj/QYkViFXeoRCxbu8ZTR4DPKN/xU=;
	h=To:Subject:From:Message-Id:Date; b=DYxaYmVUDP992InWjEeLiaoB3//FN2KeQ9n7mjKmHcWP7aaE3nVi2JNnIXaHHR4Z3TOw5kohCo3vsI20BjoQcDhTAq9jKomT66kMSpSZzBYGD4YYkmu8yCCN32T8hVpxU0Z2PJiikNWH13RFAVwWO5kQZJr+KTtAoZPFV5EXOhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qUFqwixi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qUFqwixi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A97EBC113D0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759030193;
	bh=1rUWaTV1nYm+E7Kj/QYkViFXeoRCxbu8ZTR4DPKN/xU=;
	h=To:Subject:From:Date:From;
	b=qUFqwixirQn0YcTS+kUIz9Sc9T1x/CPJ/NuRZdv5v1E9souzo+fHnaC8fhTulLr/w
	 LUizHhVkgtXYN2FkZyQVeWRg+xTG7fWJbX8XfBfEyK37SbD9c0MuzVMJA/tFf6kBPm
	 3t3K5cnFue8pWeeGLt86R1E2wxdcVKyJr50gth9+DMz8upXLnyqUK4FYGaviaLumHR
	 D9Ws/jUJJajezBRs9bPkwFCCpBzlpD2e5GtFHK/el4vL2P4U1jvrGO+yOOFIxQqgsN
	 VtcKZccjb7QLhfZJ4x/mi7ZVeq8W7hpkA+FFdP5vd/6kIm73MWjhoOj0eFgOJ/ebhe
	 tYfJUD4U1Tl1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F84CAC5BB
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175903019358.25494.1106348787584761575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d82a2e76503d7ed4e202da7308a7c00316a60db2b592665f05be2f12c40de9c
Date: Sun, 28 Sep 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759030193
