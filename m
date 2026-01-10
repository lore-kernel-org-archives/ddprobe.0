Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 150D81C3C08
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 02:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768013034; cv=none; b=F1D49k4j0TszYnagr+EE6tWdeuLpKzwsfonZaV2jyoSZ/I3G1L+049etCTjyr66gdKIQuv3Ew6tA2wj5vc4lOvJmsdhNzmf5E2E3Z2K3j7fik7TI5YcHXvErI7PsduiG5FGrLeI5jtEBytIkLuh4YHCQik1RzWNp2Ut6ZFBFbE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768013034; c=relaxed/simple;
	bh=J6+vBm+oCgZn6Nps/DS0stZ1KO09c2AFmgZL4z7tm9k=;
	h=To:Subject:From:Message-Id:Date; b=eVWPPgysBL1sBFYTjdP1En1FNCnNvjEVjjZziymo0HGLSnii57GPMRH0vLzndx4noLDMNbwjNSDB8HLGwxpDfQIlU0sCHS+1jE9EbNRgYVuZMjvreLqv0WI0W44smTfq3dHJSdRpBu5zWpGctf++DVqsj/M07mJfijHlEUfhZIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rtiRTUyR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rtiRTUyR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66F2C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 02:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768013033;
	bh=J6+vBm+oCgZn6Nps/DS0stZ1KO09c2AFmgZL4z7tm9k=;
	h=To:Subject:From:Date:From;
	b=rtiRTUyRYZYBzFX7zPmkIDfH57XXGEhvwmtZ29kA7jRTkkr34o66qIqKHbO1h2pKQ
	 a1pzsI0BBBcfbdDpHOI8W69juI4WM+EHaJ7kurkBj8u0A7Wp2DSZdVYeLkh0hX8Yo3
	 WpMwE65WVeKciay2DUNYMkKmCfl8CVCwNeoymObmDdOmDu/GgLk1XqdFhj5X1Emejo
	 9uoKJ2wLRJfT+AVJbx6eUHu1we3ANC0otjBy38WqPZovrCwwmrMWECDeJ2n8QGyqe8
	 ihmJYQ1kE3WV4bvPssOZxHSB8dElh+ffvXzZcqF4XdmHJg9xUYRG8S0y3uXc2XK82y
	 Ii6q+ssgGMDxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95941D277C1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 02:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176801303358.25295.16386673829270334802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6823119e5f09772d9ab3fff7ee1f0d39b11caf95d941d57446890a74e96e7cd
Date: Sat, 10 Jan 2026 02:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768013033
