Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AF663624BC
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 11:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770032634; cv=none; b=cIBBvljgluaja+GtEmbMD0lQxa6Vhb9A7JBoHukvTwTgnH9ymcYokki7w4FVubV8C839T4KbBS0EMij4R9LT5YG6dXxutR73ih2dUa85NsVwlfhZ2LkEGXzcIlINW7JbQOihU8egnjGMWUXDqaZDLTds3V3fwMzvcxIUJakwikg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770032634; c=relaxed/simple;
	bh=CvvD54qCPPuvxXgGg2jDVkTAwm9cAXvOIA6PvcfSOb4=;
	h=To:Subject:From:Message-Id:Date; b=ekD+RG6JvOK9M5UzYMFJ3QPU8iPkY6AeNJpx0MgWLWP10dKOsBqS767Nj+9gXmZDmWTxkWwIdxrQwN4D+ftojVER5rVOFsTWftJiTs6KK36fY3PrTprOWtsSy9DbQo+OVW6D5usC3rF4edqQC1Fs8v34icOGz51uhxoNiVT3qSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mL1oRIWZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mL1oRIWZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE867C116D0
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 11:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770032633;
	bh=CvvD54qCPPuvxXgGg2jDVkTAwm9cAXvOIA6PvcfSOb4=;
	h=To:Subject:From:Date:From;
	b=mL1oRIWZiibxentCOOysU43bAPlGiUjYbR0W7nkeBVHTv3jgjbNUE7yh3Nc8l7SDK
	 +pmFzVb1zpT78U9xIjev9IlZBTcBF5SRCEylb3w1A3XV2ds//4dPBcPKlKeTtVJ93d
	 mf7XVHIywvmTH/OlWyEztPQP6TNrLwDTarkB9SDSS4x8wGQyfl+NlDHhQvppJP6hhg
	 kL4zaBvu0QVDI4bZITjhZz5GSPuSm/vwxKommub7Qlbux3QD9yeALhnH5bTwDNs1yC
	 jzZqLRVrNjqZz9MxMnplA/ISCaoELVPRFgNTdOveex+l2K5x2ttrwLdAYTlyaY/bHq
	 10d7YftPbFghw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97758E7315A
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 11:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177003263360.14997.3796217276399234823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b00d8702dfe579288ebec250dab74408f2f420a45e5de7e4fbc4d70005ef17e1
Date: Mon, 02 Feb 2026 11:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770032633
