Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D8281527B4
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737057954; cv=none; b=f1JiR1RJybj7g9fLxJLAA+O8DFaVu04QwctmLBJa4TS3XHM3v3LHQWgrd6LAAdKRO/mBoyHHsQclnVq90Vp5PmnpytnfGD4uIs+eVRz5sk9dSYqb0zA7sdLegNa7O/yB5DBLzwqvmeowst/qk9DQ5ZcyWqKULImZR1ZRAT9PaJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737057954; c=relaxed/simple;
	bh=Img39FoqTI4loJhRzmTpWxbMmZ7hjBpXFREdq8/1jGg=;
	h=To:Subject:From:Message-Id:Date; b=MiDXtmDujJYMUc7YclQ9P7RWa8lQm1ZizJL1EYcd9Obd/4jiBRpasb1y5E0Q/9EiQaH/Lw1NlFRKFmq0JmEZtRTy4zwrvHc2iJQmbloX4qP/r3xEj+VJ9svR2uJc9PA6dPZF+pVQXmu67Y2axqHL8TN5sJHoFBYSyCGVwjYLIFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SdajzWrX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SdajzWrX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1037C4CED6
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737057953;
	bh=Img39FoqTI4loJhRzmTpWxbMmZ7hjBpXFREdq8/1jGg=;
	h=To:Subject:From:Date:From;
	b=SdajzWrXFHHwdQe1lOg5TvxlS+bamvDzQbuaCUeF6ddJXWxPUT2RPXvSzmaemdX2n
	 UonByOd7JEqU+Yv0Y3EjNKspC2NEaQ7Pk3JvpqU7n7xZQnGLvAvE1s6voRrARyDNKM
	 9INJeTIsd0LSCyr4fNOOhK9AhcY496ZqAv38yzC08MWTEUbEBindYGGAX7ykH+wKPs
	 mOB69bFtu2rWXYKCEp06aqpezBykeTxWBJqX/kdd9sEafo7Bwsu1slOOKoF84lXLCV
	 pD6luloyE6Hfjea1ciLT3Q9mnSR9VcRrue0tkic9yhmoYhReUBSRVf531QVGfNiek8
	 sNf+i0W8Mc1Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907C5C02183
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173705795358.12568.1091955182468282471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23ad14d10f65dce5401ae20e67bb579ddcc3f71402b866d29f4815170826531f
Date: Thu, 16 Jan 2025 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737057953
