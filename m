Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2690D2C3252
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 06:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768978434; cv=none; b=V6CVqO/FHn15XFpVZUFLUSi0anx3WmMae0VLkXFxgbmUTdUcbDCaZuioiR7330TpkygcpoczkZF4Pea9YSUGjIKN6qbxF0HzpRTWpMxWHszRllPILkXQ6axognK425vhz+fjrORAUeAtHHggSkS6hmDfbeaYivP+e5UGAfISxgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768978434; c=relaxed/simple;
	bh=maj7xluXoXXnByNBKB9zwwV1wwExMadO5X/UF8dL2Zc=;
	h=To:Subject:From:Message-Id:Date; b=AQKKRWGqOjmp/fC8cn+zbnrJSVpeY5Sx8X21PcbJlo8PL52RWypZahgU8WvXHB76xBtzDFTq5J5D1VJjLLcMz0D74BUcuYLSmA8/2dlnMB8kayfu/oHF2jheSHTR1xntziOpEp4siMHEdOVEyKwf0rlUQVop9SqzhzVKLoNPmQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F7or/uB1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F7or/uB1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC034C116D0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 06:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768978433;
	bh=maj7xluXoXXnByNBKB9zwwV1wwExMadO5X/UF8dL2Zc=;
	h=To:Subject:From:Date:From;
	b=F7or/uB1w+QxzZSQGIIJInUwXmmzEyfF1C6iBBwz5hf1BUZAyVzWx9M2zW/6CMQli
	 cQY51/6c55FwuHdx7prpGevIYJ3Hksx8+qkarV/osG9jW15EsphdGH+Eg+RLZxIKRJ
	 LdOb7+rz5BBSfZbsC/gZNz87edant+rfp8ZA2PBK937uNSU4ZQH/S9uFxlIOHhaac+
	 dkIhwA5iA62peVw2GCEH+oUAoX4CpIwhWcbzdrDgP73ZHeGFLajZpGBg/RgFNkuOi5
	 EiQR9l/I+aPHt1ZGkCCbuGZiJMonkSuFH8WEO5HWJxgZNnSA7eM9+k7qYkNph2qw35
	 FJIaB1P6jv5Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B8D7D262B2
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 06:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176897843358.10255.1525724460121000310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 486a7006278f3733b3a802a0353a5ec08d4c4ca77fd43988241ddff748bc4ac7
Date: Wed, 21 Jan 2026 06:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768978433
