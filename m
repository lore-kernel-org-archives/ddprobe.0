Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6897B347BA0
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 12:49:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761137396; cv=none; b=HiI/bTwYVdmbDXVo88AOrhb7/Auwa2oBnYDodFjMCBTaqEv0wH54Uc6bKy+/c7KVWK/5Qvm3BK8wwiuT7HScVz7UGoZqIATAMLSpiXB9fxsBAYQL4M7TV7y/1Vk3SrfquFt+866m1/359PqfHx7ttj12or0abel5QY2j1M0LePw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761137396; c=relaxed/simple;
	bh=XAXU8VrqmYn1CfcFvvswZbfrYAFOU8UHW1f2xE+9ySE=;
	h=To:Subject:From:Message-Id:Date; b=EdYVLKUpgqfANMbRHp+EauPiWFF4tsdBBTegxqCrsbA3VdGystHKLsV8RiBLufl1WngmtO1y0pdUTiSLSMjejhKaTkldW1sbFNlRmHyhUAvjO5LGpa+JJKTUbSyQr0Ru4gYkMLhecV2DJybJQoMK8GDIp6klF8YtgWDDErCbxqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QvweuTBo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QvweuTBo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3884C16AAE
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761137393;
	bh=XAXU8VrqmYn1CfcFvvswZbfrYAFOU8UHW1f2xE+9ySE=;
	h=To:Subject:From:Date:From;
	b=QvweuTBo/RtQCc93y7s8+FPcvfwvS9eZaVSg2TtNPHlCFUneed/DaZfJV5bcloV2N
	 Nbb+8dvp0NEiSfBIkOGZSuw63J1KC/IzCBPzQfuIXOTQJ9aHcomfqBqoCSlLC18LY7
	 Z79hpxi0o7A1ZVgm/pWCAaqk3OF40kvdarNIzNoAFAY3K3S+CdyRc5MVMx8BGLGxEH
	 I8BkHOIWoC69js3YhYwIc/GEt5goVnDn0Fbqg8TFAOnhc8NgmvNlUICjBF5OKxPffe
	 b2OCpPfVvkWFQkvm7tZ7BBCFA/tgDC5ch2+35t20C8DqCS/4/tvmDfBIU9n24rzZo8
	 ixo3PcJ8+1/FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9026ACCF9E2
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176113739358.14641.587585760839051670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6551c6980dc7ee4fdfa38ba1c27d1affcf2342f27526ef71086542dc58f3fa29
Date: Wed, 22 Oct 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761137393
