Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 242A33C17
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 02:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764555174; cv=none; b=iAYk+Sxtn8zxa6eJ0Wo7/u4qhy7zpabvla41hUhCpemXlVLBdigjBnCxI5ibBzmmwdymR0x87cOKVK/rEE9R0HBmX/TykF6b9zhJ1RnIgaNu7ZeENBYXTUsKI1QrLhq/x6sJAZ4q0m1I4p3/qpPq8qzX+W3AtfutWbhw2mtSL/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764555174; c=relaxed/simple;
	bh=rnPjI70HhCVS1f+IpOSJc+VCLEn4RhgHR7m8L2iozvY=;
	h=To:Subject:From:Message-Id:Date; b=XNxtxwagj/4fNBa2wHHa2kTUYgZk2bs8TghEgW1YKM5Atxf5zumGHWdGD0u63JYznyV5i2csLLk84FyY3VO/6Nk172CSyI2Tkl6r0CQGHkFoRRTL0A0iEzRq6DA9Ki6F4Kqa6cKMDkDhCdEDPHjc6pM9mmQCKkQo3j7+3tDRQC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T6LbViqR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T6LbViqR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A83A1C4CEFB
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 02:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764555173;
	bh=rnPjI70HhCVS1f+IpOSJc+VCLEn4RhgHR7m8L2iozvY=;
	h=To:Subject:From:Date:From;
	b=T6LbViqR4R6I6xlZjaw1cILPyGnQKzUwGZrsqudVDqJWNzRfESIN2ne3VuV8dooup
	 iGkle6XEuHX0EqEmtw0clQ/b44fojKnY1NYL193y2R/zv10tPNtJV53+B1VXljECrL
	 krLQC78YGg7xcNY5Uu05kNLitguBYiH2C/y33bPxvo7uJqlUuu1A6+Qllyoof2IqBP
	 yMZV8z5cKOyfuEyVuAXpCumSdWUc0PkRMGqp/WIZr3H9g5ZKS1KWjZva7Ejy8xmzQ/
	 91cQhvVqJLqEj0OtB7w3f7LJpyNq6wAFrDUY1TMni2gL2vFDM0I4S2RfbvyK24lCUt
	 Dwq8vVTMT5r1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 966C1CFD376
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 02:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176455517358.28867.9910973343990656390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dabdd2a030d47ffe5e5db33d2150fc3eed0ecb360d10293e72e987f70d4e5ce
Date: Mon, 01 Dec 2025 02:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764555173
