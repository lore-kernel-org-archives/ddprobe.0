Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC0E658AC6
	for <ddprobe@lists.linux.dev>; Thu, 21 Mar 2024 12:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711022896; cv=none; b=Oi/4pU/lmGPoe/3mqVur+QzGX2D5IOM02KIlfoulQEa1zdAsVbCHUzALJilu7LwK+Rv3hdHVJhc1HlYLb/R52F6HMoAVLuPMcyyERI/e5C905BRg6h2CYaBxG44G4PufkMCE6lcTWQVcrc71PLUfB5VGasQ4l6DreX+wO+kaPJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711022896; c=relaxed/simple;
	bh=66mgauwl3/CfYBtfxVUQnuhVRfMxun73FY9LMHHtdes=;
	h=To:Subject:From:Message-Id:Date; b=bP2oUex7j6daau0YNxSVAKwbQBV7/beZYyomkOwVoxEaAQ08CjA0fUVPxiUlJqkIGFny4l8xbDdBFUXBaCtDfvbOFQVTHFAh41gkHSG5ouql6Qh0HtNzpxo98zWPgaYUQSgxMl/tKkipXXZUTBWPVtHBlFIoIwa49OuftJyYXEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dpZndVNU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dpZndVNU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69E94C433F1
	for <ddprobe@lists.linux.dev>; Thu, 21 Mar 2024 12:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711022896;
	bh=66mgauwl3/CfYBtfxVUQnuhVRfMxun73FY9LMHHtdes=;
	h=To:Subject:From:Date:From;
	b=dpZndVNUAD8EgJ4Tx1AMTrFd4gqYDMZT8IANbDD1mRTuiapkKQgPv/VQ2MEiLArgY
	 fyEZXbz173NPST6JMS17PS9+pMBzHXMJo7JkrJZBYn8LcQaUitmvLQTPp5yWtsjN1n
	 qcS9Q9g+xvGBSKrxvdVLjF7uJ8dPkkeSNA6arA+jv0p+Rx+V/ObkaHPPzizwuv1Gsq
	 VSS9mINNuUbzT6A0UORH2HZbt8m7jwBeQkRqqzTfTOJffwvmvv7vXaxWWv4lz9JgqJ
	 rQ12Q1zikT1hl0CotTBvp+IzdGAyU4cXBgh5Ix3K2HVPk+antqeL33W6zwUiy3VPWs
	 gJl7/62t9m2rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C5BEC54E68
	for <ddprobe@lists.linux.dev>; Thu, 21 Mar 2024 12:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171102289637.10036.1202329266831860741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07dfcf5860cbc702432525596159c2b739842507ab94d85c6e4f22db943f9ccf
Date: Thu, 21 Mar 2024 12:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711022896
