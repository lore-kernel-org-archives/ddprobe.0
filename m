Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AE3BC132
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 13:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718373503; cv=none; b=knuVqKng6O4UARm2zG/8Lsb3iU7Isy87XMcKggBSuJ+Cs5IGGn03dlNX+FXm7/x1ALnd/xmdPyXBxqckE1dkaKHSlIHlwUm+lhw9W1BMx4nPWG6Oy4EC4UaS2js80ABRwb7ukVV+ILip98xmj6iLqFVCTCuFzHG29ojdql1wlrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718373503; c=relaxed/simple;
	bh=xyD0wrYbL87woYQhfCq6hpHDuyyFSPBwsWNBgXRse6I=;
	h=To:Subject:From:Message-Id:Date; b=EiNqZhx90rEAs1TYvLNXj/MK8b5MTYirUg1JSlkbRAlZJHUbMCxaWPFiJxkfDeDBcNfBFNHTcOgUwgWo0/nwgFXOiR/pTzVRFiWmZC2uoxi6vSwvIj5tWv8wft+CzKejo+ACnlnI7tIO2Af4XRCJf4pLAw2rEU4mTRHiKZB+dGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VQDtfB/L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VQDtfB/L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F07C8C4AF1D
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 13:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718373503;
	bh=xyD0wrYbL87woYQhfCq6hpHDuyyFSPBwsWNBgXRse6I=;
	h=To:Subject:From:Date:From;
	b=VQDtfB/L6EJtTme/KG4gEm4U6cNfU3mMSMxS5IOD31gg0qIFbTwps7SsWp/co8NN6
	 7KjEnRVbllwFFxZaxBf6DNIR4J20pIOyZ6Nkq9VqzWxWXGU3ZXkKfi5PUue/FSHsFJ
	 R5EgB+ihxWx9SzZumtECd61I7mVINGm5KyMtEaIGePYffTgWN0EWz92zxXAeau+drg
	 BjctArD/oi/v3um+uQEMBZyXvTxMsjuaGTo9TN12XJumhN5stiwh3x7RzjMuNAwMAE
	 NTAaIKmVPLmIL+OSrcX1cIeqZqlogI6b56sqtIRjafXA0RzlWjuvEgtwup1WTvb7QC
	 Sckj8CajzIqfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D892EC27C79
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 13:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171837350287.3266.9788890185496561819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67e93eaf7359241d459d3f7c41c9475484cb1050c7bbcb03876f004f43b0b33c
Date: Fri, 14 Jun 2024 13:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718373502
