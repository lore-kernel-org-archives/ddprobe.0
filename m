Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33CCB1865E2
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743614994; cv=none; b=WsUyIOAKqp+oiuzlxl4NyAkTt6M0WpupizeKowJX7wPOOUUrTNP2HKsp/knqiigh6zP8pkH9YWAY9QbSuPU9Etm/BhUBUVM0kmEuFlUNLnT7kpuQ9JO96TbPrUFHe9LDlYjtBf6hiZYp//f0WBb3MwZ7lzoiEQZZ6wb2vXcADqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743614994; c=relaxed/simple;
	bh=jhsqt2CKcBVBIGiU1kyQj0xoT3qoVoSEHa2WgTjAVI8=;
	h=To:Subject:From:Message-Id:Date; b=D7fDrnj+74QZjzTBD5VQY7abYGFBlVb62uF3oKkZFLufA588RVdQPxqKPozEn58yrhbOJOi4k1ukRROtbkEpBGu0aeePy4H14zOMTd9+XubH3wzhMXdIhyEnL9apIHWL4ClVyVST2AbCwUsgtrvGu1E26AKM0eE7IRbcJeB7vqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uH+wi0dU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uH+wi0dU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C74C4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743614993;
	bh=jhsqt2CKcBVBIGiU1kyQj0xoT3qoVoSEHa2WgTjAVI8=;
	h=To:Subject:From:Date:From;
	b=uH+wi0dUmoD4WmsrFVgPRBB2Dm0vFWIMIEYMgasZ2V7l902rkwGsdlLRmLh+wphMB
	 rEJ/kP6MCHjjyQgMDO+hEmpRiz11BK5uwiRPj0FBvXQ76UUgnRoTy7N7XNmlyPKBqp
	 4XOowL5ZFzqCIGlck3LHkNWWKPfX75Hlq2A5bMQ78iMQ8oHZLEdNkyf++OW2lEZwXQ
	 1c4PcxFRgD/0QG6hAPN17PdIKLA+nXofMTT4eOicTWDayRHkhsmgzZYi+HPfb/k/0/
	 7/uZKPX7DH1uVYU/5pwN1ATuJ79oxQ9UC3WTg81zw9grEvTf53ED7agqFDzSfE2OLR
	 l8E8rGySCe7RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED12C28B20
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174361499357.11910.13889129620642650849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98085b511812e0739be9f04f3344c5b9b55273a3b61603d7563773db06a2d160
Date: Wed, 02 Apr 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743614993
