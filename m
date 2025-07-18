Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41E9310942
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752812994; cv=none; b=PB22luJFCf70aVpxlxbMKk/HUPiUAiPCs08IVrjKQTfeW0xZ1vApAB1vy1Sj1ZTS2q3ZmhdTiuWOiNwXodv5udtqPUq/2xOefZLdmTuCCceQwXMEVtTvFeNLDLYlc+tSnt4WVdbafz+TPth6C39Ogli1AzsdZM3HV6eb/CQFLQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752812994; c=relaxed/simple;
	bh=lpGVZ3P41A2GoFMNDm/Ouq7Qa+4xnr8iOGVkL+omIzg=;
	h=To:Subject:From:Message-Id:Date; b=BoxD+b7O9oROskR+tarO3BsmUmm9hxlwmrrCLCM0nh3Xgqh9IQrHcwD9un6QYxn16DXCsIk+q3oJbHnQd8Ygm7bvo1pfX2Rmcce6kGxPVkumQBZS6rtsXGRkwJQ9w+R3iI1768lNcinrtqfnDaXgN1NV0nezOdPoT8dkar3UOdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l2d49Bsf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l2d49Bsf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A58EDC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752812993;
	bh=lpGVZ3P41A2GoFMNDm/Ouq7Qa+4xnr8iOGVkL+omIzg=;
	h=To:Subject:From:Date:From;
	b=l2d49BsfRJ9TgeP+wg0Ui/zTF9lkcroUVXy5wtSKKNbbmhwLZ9YLRYNDo2/M6cqxx
	 3MAKtjYeDABYPBurr07oG+PwDRlrsIxkz+Z4MkZcYD01f1vHd9V0aWNDEgk2Iy36fo
	 pl9882XEpLbaInEJNSSPdRi702E/j7OSS3Evcm/DSqD5ulzEYjPBZvWufODGIouK1W
	 kvnZ19AlZ6HMvKN2rncTyAHyGFyeIJHuorWYKkLGCflbXYiVXg/e4aESllqKd0CUrQ
	 IXvrKTcETOap2XJIz6Ej01dK26lKHU3s8JKClCDBLq5WH5H39/NYxu/VQtKXE2Q5i2
	 slOrjOSfaKELQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92873C83F17
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175281299358.2454.9168539753675668717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 668b197efd1822f7d7321b58739ced2c2ca3d3815313387f4f8b18c55d2b5f7f
Date: Fri, 18 Jul 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752812993
