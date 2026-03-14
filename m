Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1489027E074
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 07:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773472494; cv=none; b=rQ8ByvksvTHwdO8HgYeobz0wPNHcF1OloS/e/Q0HWbnjEDQLSZpp6F11aD0nxurOHkMF2MOxwTd1C4UYqoZZw8OU9hovP7Z2zTZOAQgZnLuvR267z+J798wmxgmpaClAQODY2dfsnUBWaQTlQp/UbtQVRH0eaIRTrJJLOE+QwUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773472494; c=relaxed/simple;
	bh=p5NJHgo8473d0oV6vEBGlh7SZOug7u61CEdDc1rSOdQ=;
	h=To:Subject:From:Message-Id:Date; b=ZANU0phKZ12XvIz5Luw3+0p3GyIj6czYk9xaN5SzKnauXEaD4KDT1IdvNeB0N71VDC9IGojw/Zh9QzvJoK8TPuO5uH9B935ogijcJhAYK+AASWI0PLPy6sbaahMx0ZdP3dQC5eaEkgmEvCxwe2Y4PNL8dTpUW5cWOQi/4N5Ufwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G8HefAdR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G8HefAdR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A328CC116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 07:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773472493;
	bh=p5NJHgo8473d0oV6vEBGlh7SZOug7u61CEdDc1rSOdQ=;
	h=To:Subject:From:Date:From;
	b=G8HefAdRjUJencDqeFTTayRc7WeZKJA0Xy8FGexL2qAkEDaLgHCBwLpvqhgzoO5Pv
	 VttDx0y5gFdNIByNAbAEbryrN7BXDwBSqKciEDGai9lqaHBpUZjIEuhCaARZQZVM7y
	 FGUkMiwOsYRoNwvWwcb1ogfDv0u7Ae8qicmO4RnQFXhZtrDdzv9AQxwK5WnarZqJHq
	 SXKN4a0T48485a/LbFp1PH0XpoQlQgyu9i5jKQqKaSbhGfosJhp1rt4YGmMInhawKb
	 DDsUX49Kn4BOJlQ53h+47XrxHy8I0QFp5rlQoACV80Vlw5vrbXQPZvMTBEtI+aIeQY
	 mZ4y1qZ3Pv/WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931F6107BCF8
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 07:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177347249358.31622.671198652401133023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8238a37675734154802013bbd078bf55344e930bb6322ad5679dd64bf5bcb501
Date: Sat, 14 Mar 2026 07:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773472493
