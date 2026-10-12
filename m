Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 596E413777E
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 03:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791774034; cv=none; b=jzFPEPQ5rnf515oJKpyM17Hw9HAzfsnM12AvOlSMz8/fuIwKNeacxcRMfzXdsWpEylv9hFb7agYXkfUdFDMTIBNVaM+xqiTKQwRIpQDwenqgG+yNa419QpQWdCm8snfqTPbmKlxqngjYE9owH4rBz29qXZKgqBnn7Mhui6tWi24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791774034; c=relaxed/simple;
	bh=NaAsrfMbTDeCnfV2xNdpcyMbIJlf0PVtP6WksnXzr3E=;
	h=To:Subject:From:Message-Id:Date; b=J6T90tX69rKw+hLVxC8BO4ikuT03IqmIRhsociEM2QRpet2ftInDOOfV4QgRHa18khnJJBP5c8OzrYQ/hldzQfkojcHSuMKwVG3IQZEhWfnvG6NnysEpWxeeKRwwmpv/5izsM06DhvqoQGUbUNA8hJithZUqT1bhEEEEVJvu4Ew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mw4/InHE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mw4/InHE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD927C2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791774033;
	bh=NaAsrfMbTDeCnfV2xNdpcyMbIJlf0PVtP6WksnXzr3E=;
	h=To:Subject:From:Date:From;
	b=mw4/InHEpleDj8rm6LuvIheHsq0PMtcQvABISGSIesyXdzrp9tS+X3GUGVkb3DRqF
	 Sfkytu2XT/p1u++xDfnOLUYugME2439vMeu8HM/KMaEzec/zV9m0b8R2ObdkESbBR+
	 S2RuDE+J/Nj69yGHlzzFYV2zx0o85T1HhMlcWktJAJAVRUFsYpU38J/EeNBn9/NLud
	 otSRtXkvJ887QPx8vPoMIg+5hBSgjjklHG1dZDB3Xg3fJm3bWdqQctJa/5OOqlClye
	 NmPnwQ7KNhqTPkmXZTDC/gmSDprokXb6cQNpMwuM/ovSokkbwCMZfvP+dFPxL49Wi5
	 ZBleD05aZKwPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D0DCA9EBD
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179177403368.21167.11443238776878897462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0f03b52e4d815b656549e45af5dfcddb6ddfce00d7f133edbf5fce4e5cbb117
Date: Mon, 12 Oct 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791774033
