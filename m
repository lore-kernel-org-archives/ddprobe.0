Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45034366
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737245154; cv=none; b=ApFkS61meOAu0Z8YYEht0Dem6MwlLgoU32wWeu16RsluTIU8ncI7IParnJHncN4vAL2kQ/CMEd/y5dVpjQIziarwCP3EZiAmtmXCnFAg6CI7mHSIN/ilcPStId3c/JSKl+rPDw0YWfQS6uMVDHS/K8gyW7gG5MIW1y+CPPOKzXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737245154; c=relaxed/simple;
	bh=kbZquYl8bsVLJe0+QnQUxw3TWW93FFvqvLtQBtHP3X0=;
	h=To:Subject:From:Message-Id:Date; b=IYQfrnWBNXAcyiT92aZyqObU3DVMf0otarpBR2dEswoKWf81AHIino0dflZ0NG2j3VGozIEFMkZlh0HofKBmW2/ovj2j7h5WETcBw8A2yrprskbiZ3zwnpiGncsMIGLWoYmd4dAGaWo0c3yo6+4DsXZnDDtlp3aJeEgnKTnkmGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cY+VHOnQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cY+VHOnQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A17C4CED1
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737245153;
	bh=kbZquYl8bsVLJe0+QnQUxw3TWW93FFvqvLtQBtHP3X0=;
	h=To:Subject:From:Date:From;
	b=cY+VHOnQgo4W+Yi/HRobQ2PF6D4gGJ5rZwj6q4UdtIEUwg/JeH8eW7dx9NIT8Kr6t
	 e8UOf3OTP5Ypm5oyKUIQB8LHLI78xG/CxRqWDQQYqmsV+r0R23Iz+qSwfKA4CJGrS+
	 tF0/YeBHyVl99IxvuLfoaBJlQuDCkhJeDXKMvbD0817gL2KYLDyfqyEsudHo0VpF7B
	 A31BiK7BP0NhzYoVTXSP8N6anG2Ut3qDv3qC5yN8Ya++JrWagFJSGUi5UYhVKnReBD
	 UBbv58uXAYSYBoAiqk7m99Ibo4xIl8duCflq+mKGmsvtuQkVVS8bt8diCXGWe1XjNt
	 y/WGtDuFZi/gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929D2C02185
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173724515358.10826.2470484048935333703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e2bd579f3f356eb7aa9fac660f12891c12120a46d488e6d13d1231b1c331f7c
Date: Sun, 19 Jan 2025 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737245153
