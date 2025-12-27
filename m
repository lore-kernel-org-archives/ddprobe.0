Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F92232145A
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 13:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766840634; cv=none; b=PfQeofC8YQd2HUI3GFZnidXrDnjTrQ2JJh482vO+r8HIW8DmM8lTA/BPs4V+sKwDfredeYC2p9pAGjPkM8wISs9mFfA5uuO+zMUfjeu0J0dtFkWifhs3CVUDbDMzYIsVNg9vF2gGYiqK8/f32yNPMMnNGDXDfW4Mq/VsiO5T+M0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766840634; c=relaxed/simple;
	bh=rnPgIINXGuIZBb2SibjIORMMqWExWb/gMPNb6uY77I4=;
	h=To:Subject:From:Message-Id:Date; b=ahsryPt0sJr51h+nOX4vuzKW3ph3Y6IVo9l+3KAcx5eHImpeqcgABtfDU4d6VLCCO1VoxGwI0tzu449Bfk2yGosjuR/IsZFZlNii03bHbGPpP3hA2/izR99YG0rXDnuMsW4dXEpm7Q1kCI767VmyfYllzKNhG/Cdc5eZqtaJDFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VB+fyX74; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VB+fyX74"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3824C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 13:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766840633;
	bh=rnPgIINXGuIZBb2SibjIORMMqWExWb/gMPNb6uY77I4=;
	h=To:Subject:From:Date:From;
	b=VB+fyX74hYXLpVbx8kFsv7dBiIClVsLp6MWs4LIoziaRSkIp1V2jY6lqgGLodKVDH
	 GEyBUYAM6HWlGy0dARv6AUuBCC9D78joCnFgkE/B6w/VqsyZyloQ/u8p+UEhzgrLoU
	 xf5DxTUrnoqFrti6SkWbdEPRIDUlChC04sqVERMnogURrECRRTTRtwkadwiRXr8KQd
	 yGHBd80mU8+Tt3n32qPt/68cUKUqjLbr39bQFSXjf9FUg9b1whqblfseDFPLAtPBrL
	 T5fpJc5kMVWn8LuFAW+sJfMlUFYz2YCLwaS5BHV2AklDJcH718CnSJU7FwKVEncQT7
	 cfnn8SnPmkBbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 944C3E8FDD8
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 13:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176684063359.31224.11232629100165349088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 361f6c7380d332c4a1fb85cf7e87f7a77145cf68f457fcda63f93fced8990f04
Date: Sat, 27 Dec 2025 13:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766840633
