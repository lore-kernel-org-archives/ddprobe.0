Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1334E32BF48
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761323394; cv=none; b=josD8YJ0XL+LxAnrWUlgCDyPh8gl40pH9t58KasAu7blucEyIqxI8yu1v2JayMReAy0k80706k22Dwdd810efimRswHm0iIPoHs8HwL1R6QC2OVIgqr/bRIwi9nraBXXxmZnK/rn+tzl0RaSZD+pXRJSxn8bxtosMyFP9/xXP0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761323394; c=relaxed/simple;
	bh=pPBA6o5y+wKl5N4zbILEVMK+xKhOSS4r0S6NY8SJorw=;
	h=To:Subject:From:Message-Id:Date; b=DxDr30mJHGcyVms3AhTfmOb58xWBVSdoj6E3VwwqqfR8ocswBa+/xmQPSlKdryAWEcPYwj2acI7MgxxcKoF7tdRE3xEJHAhXkIOD0lBpM+AbTyR2KkFLN0heXpn6ifJ8CfxyNMvSHATtsVOOs1PnZCU4w/fxItFzhD08KPaWAjY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uFNtIZHd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uFNtIZHd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F53DC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761323393;
	bh=pPBA6o5y+wKl5N4zbILEVMK+xKhOSS4r0S6NY8SJorw=;
	h=To:Subject:From:Date:From;
	b=uFNtIZHdTVwQnx2EIIb+qayls6DoYGWgyTQl6cUFPsWllF7Vvcj47+ktX0hYGUAy8
	 AFjNb7rfkpn8KAZdeJ3DfXarJ4x5qwPL8Zj0cZFSO2NqcSMd4YpnmbaTDwMRL1+r/k
	 gUXQ+KJejWLPcQ2in7dZzsHv35um0P/KDGwkBXoUvZPpTSx0PG41Buab3G93q9Wrla
	 KXIidPKldcWvgW2qN4HqQ/9cTPb8YLki9d6X3Tnz/gdVTiH3lqnJkMUozqROIHqumv
	 h8pU4FTUIaMQCYuObojkd4A8IgRorKJ81hTUutpi8mFUlknxIp4m700p6N4dvmXzt0
	 x2f7K+fWqcTCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90908CCF9E0
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176132339358.31292.10848862398920630622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28f65bb3eee41c875f9bd6e071c5eed35b6ab9a5d7d6d0fe4ef2c5693fc5d897
Date: Fri, 24 Oct 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761323393
