Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3713C18872F
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732467354; cv=none; b=NkVpojOod5vSaT63HMiexLjbiiltiq++qC31zQd/wu/NMTQm3/cYFn3hnl5yqzqR2BW87zuW58LFFohdUmG2i/csqdXZAwAFrceMTAqyeNT6G9ySPN7C92XEqLjt6IRUD74QcrpuDEwS4i7QmcIRVVT7EF1LFn6Vq8CPRrpIyeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732467354; c=relaxed/simple;
	bh=BgM2OSQbKthrt8K2gSffeBfzovcbk/s0gtKt++l9iSY=;
	h=To:Subject:From:Message-Id:Date; b=sypYf9xkpLHFS1eW2nnWg56c8E7q8SRpbXXZhOc/2cXPSTH795/2oBqSc6BfrE2Hb+p/Nz8i03/n9vaoJz0fFUnRlSZH3HFXumav1zpv/QP/9S+uTv/SXlxW8ThmgauNxC/onWASHlCxeK9jX96hEju61L9CfgR1hCEf1xfwwdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bqmpw0FW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bqmpw0FW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD681C4CECC
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732467353;
	bh=BgM2OSQbKthrt8K2gSffeBfzovcbk/s0gtKt++l9iSY=;
	h=To:Subject:From:Date:From;
	b=Bqmpw0FWPpdg4vDBH4FP93Qxa6K/23h0dg2PexeZaMVK97JDGcEG01azy3Si4s/lT
	 +3mLrZIlZ1LeMf1zDm6i1ojusVxQ0zBSrrGvrwzdShKHYlLRrSij7OGRFqYJCJC6IW
	 QGgDHmt66+giCrOcZ76uMb5oPYX4/vcGxeZYv1nY4RGdlXCRioR9UOcrwmfsywe4+P
	 UOjaMN27YakU/rZV+BTg1Qqa1QDeWF1nXcB/yRk3cVH/CXAUhTME/O3jQ+Bb99eb8G
	 VUPjqTFB0h2qOWiIqw/eJu+OcE6UiSkkbBUIVQu7kzwHp56v82a/LQLorqms0JOByL
	 VnpC4FTtkdEUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C3C3E668BC
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173246735362.32720.3961804604065431212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3e474af1e421899a092e94feea737ebba061c4372ccad79548a714086a735c8
Date: Sun, 24 Nov 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732467353
