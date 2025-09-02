Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35F082E090C
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756784394; cv=none; b=Hb7nOdINOjql3SOAeiwl0Zk40gigx5IoHMePdpq2ZHGpPOG7DSI9ughw/wFdPID6GhHPM9R0WhxgrZAkifKncsMwgMDIKiXTzrdzzlmylaPgXuF0tAkTDG8oIgvK69LicfwNAWGO5PWb62Z+qnJZk8e4GdKtNiOY+TULubPfthQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756784394; c=relaxed/simple;
	bh=LGPVPrmW7HLVOoE/3U/jBYKxo43CZpCAEeCipypD9wg=;
	h=To:Subject:From:Message-Id:Date; b=BLGZeBCeii0VAwKwGWm4N1oWgJtbskkGxp7B51BEVrkGOZNv7vIPcgMCn1Jcu4ukZKkt5hZ00+yt2VCp5bfVXxHbYf5g8JIOfEhPo3/gDDJetjMK11EOUCT1o+iEgEmTOvXN2nqEvXmJmvr6XbwLndF2yMHKwTS61LvuAxoLwZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eYkAn6aw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eYkAn6aw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAA96C4CEF6
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756784393;
	bh=LGPVPrmW7HLVOoE/3U/jBYKxo43CZpCAEeCipypD9wg=;
	h=To:Subject:From:Date:From;
	b=eYkAn6awE0Np2dT8YqYjIDNWSup/wVxa3/0xpvJF/BcFViNO1QHWy2jM14BCa6+j/
	 7/EBnchyuI2PVmVSTWNfhT1rRYJVH+z1p6+ARTTz/atDz0P45/ddp2FLFcD/J+Taa6
	 MGcGyIIjXcePHMnUUWgThKdOIYHOjPcRxlZVFv2pCrzGCWXdQDGnutKShJpd8gHOpY
	 QoNXPKt36fTsCSaDxJmnH/+jUEZHFE6ITB5+KEJnZyEZdn/mccfmyDGan0UsZN3WXp
	 IFUzPD7c42RoLsX9pzDbTfkLp9rpWy+GtL2nplX+VNd+7L14dNjIr5g3viZxPRbBF9
	 6EWi2aYtXTAlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9602CCA1007
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175678439357.6020.8271655934429109105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a093a08d69ebadcb35c6b604e487e99d745593fc4508278bd35ec86e0a949cc
Date: Tue, 02 Sep 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756784393
