Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CE6531AAAA
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 03:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772939094; cv=none; b=e1JI1ssse/X08cHjy1jYipmv94L7+/CT6eeX30cJVLbVEwE95KEDEIXoUxrOown1v+qUPT6HIV33KWhK13sBb+DfOMHBcI3IrVSDcfvliV6kfWtuvX3xY0eDNrTLt2rIsFtfO2sob5Y+kbZxkBp2Qorrb/B4YEEDv+BrayVaXWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772939094; c=relaxed/simple;
	bh=1drIAGPJx6DwuEVWfNbUH6DkXtmQWA758GiwuA+YsOM=;
	h=To:Subject:From:Message-Id:Date; b=GEEAzrZG3Pl/EsTM5RGx4SvZVY5POlSL6d2AcNodlKqjUCCCIktzB38NR4GwEJBpSdti9BE2yyq4ymU8htRCHbNfJNdUwPXUGEF599gXVr6JX6XpHT1CVdzZq+1rti9kTDqmRVorHGygtxB1VL6gdisa5ykqCoaI914XQduKQvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P/N7L8z7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P/N7L8z7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0BB5C2BCB1
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 03:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772939093;
	bh=1drIAGPJx6DwuEVWfNbUH6DkXtmQWA758GiwuA+YsOM=;
	h=To:Subject:From:Date:From;
	b=P/N7L8z7Xq++HUfoMJXOnj3Tkzu9jsJ+kVbHNny4kcT1Jz2thMzOjIe9BBL+0JiBu
	 ebZ6ZQdpDdjr/A8aWu4APabbZFew2624TInGM8mf5xlwENoaPn81GqxgDTDc+fy0Ru
	 8TxOqGSmau0FxVByRJvXqqWNnQQk0gpZNtqKFJmLRP/VYLUujnLPkq/mDeGd8Z0Ml3
	 Yb3nK8MojKGfchrAy0p3Ux9kIQ/8G7EYeoLbhFqnF9xffJQVd4fDf+u1yL844CiXkM
	 brhA5AaaVfx1ZiJKGeLxxdbNA1haM+RtvW+DrBiZGg3GNqa6IOM88fpr0RV4ksxL2D
	 bSa/ofVLn4fcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96DC3F55106
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 03:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177293909358.26870.9869852709867989872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06129aab477128955bcd69d41139dda6797d9b6003e8353d9286fc9db845e55e
Date: Sun, 08 Mar 2026 03:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772939093
