Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FC253D0BE5
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 15:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779896554; cv=none; b=lU4yDNhzGX/Ii4FIpl3MKBnvLSDsL8b+/v8tJIhg9GMgyAAQxMRpVA3KLc6nu/jwEm650YdiCmF8uPMfJz9i2QMaKLbQ/MOj+iHpN/GY9Be5K7gp5UCqO7zZdhPu2mzOqpYJ2pFR4BE3mHqGV6Nip7HN0sFTKenD8TxSqfUOiKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779896554; c=relaxed/simple;
	bh=V6ovsBE9QbeL2FXEpZ9Ezpr3jNhHrvv2wb+WHQ6i838=;
	h=To:Subject:From:Message-Id:Date; b=SDvcSroOUlaxtk4uEqsi8GfgduNej12rojNRkVOj5vBOmFvbb08iYDPG6H2Yh1aqi6UHW0jI7LPrYBQxK2NqOPVDMhShKchhPIt4vvMfV886NVZNq83IdC2pi/nUHDVM6j6AP/rpFOEh69rpNRRJ32U8qQmAn3vc8UD7XYHsc/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RC7yiC94; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RC7yiC94"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5F13C19425
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 15:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779896553;
	bh=V6ovsBE9QbeL2FXEpZ9Ezpr3jNhHrvv2wb+WHQ6i838=;
	h=To:Subject:From:Date:From;
	b=RC7yiC944VDKjLAg3YSZlqbw0+PYTrDD3lG/0YMprsRnYUlY4h3DthWPXIFscoa/s
	 X7mSnSuBnK8GSoocqNFiwIDLmrjUvJvVkuLXEYos/gtNWsxtsduSOInMEUAd/zBJX+
	 9rIxxxfzQzVwIr0Uxm9V6F2/MPX9E4UwK8DeUfLoObbJR9r64GOJcMQsk44HtMhUNM
	 Xrm8Ns3zkBG+m6gE/0uNX/1Uio7LBdVDDOVN38lhsPRA0XreRypdEicvRnyqfb+3ov
	 r9qMrv4qoIzHZ890ZA+6QrNDJbpkK4hZNa9bU1WsT0kGlfFWtyc+Vutonwk4MtE3uA
	 7mC13Itw01fOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E34CD4F54
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 15:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177989655368.18450.15337593579384355154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bf8eb6d7241f1410a3d1eae78bfe7e199b03ef7f253bc005a708f342d891efb
Date: Wed, 27 May 2026 15:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779896553
