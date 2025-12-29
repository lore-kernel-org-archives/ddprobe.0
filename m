Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55B2F1DE8BF
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 13:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767013434; cv=none; b=HFw4RLAzyNFyawbXGg06gJM786cRg9FtT4SjuGD77ChQr4hCfRTI6Yawr867OEVOwNqQvYFtMVWU+ZMPHavqCxTqUNmg1Zhz/xzfvHVnT6xeks3NLH3jEkBR/BDtKWpPKTD6A03IexVDf3aEpkWR/2RbIDJvGizAE375hBQ+wxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767013434; c=relaxed/simple;
	bh=KhBn341ya0PbPlrc2sHnSoriqxIA1z6NqarBvU9F670=;
	h=To:Subject:From:Message-Id:Date; b=n5rCmIALyt+fg5RACMxINNFkpgofX7+QskFUEUF/Ya0IQ67S9NOYBDqKacRtUdHzmszOSuyWFtw+e72o1qLgBeNADiPOQTdfQg4CmFx4Dpy27rzg0DHcQXGbZt//s0yqjzbNkGjhsuv1Cr4TakK6QbdDU4yQWPB+jFbV2RFTDvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VKCJB956; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VKCJB956"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D134AC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 13:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767013433;
	bh=KhBn341ya0PbPlrc2sHnSoriqxIA1z6NqarBvU9F670=;
	h=To:Subject:From:Date:From;
	b=VKCJB9565yij/22gcsllHjYH0xbjsj2plvq7T2A5nFARWkTEublnNnRe9C8ZD3/YC
	 kOdMZK8shtUusrt6NdUX45YNaenqmDypXij1H3t6EnMekeUQLZ577c8/GL58O6endf
	 nJIfGjumQzIaPjz4cEiqQWiKUYK0ug+Cm+ZXW66zjnngem5PrjBcsmEAOEfnSAPHrU
	 dfoFR+8MSaM3ukvOGZ2ELkaPryfl1V4oAiuRw0mI+Bb6OzE18oB4GL31O+flF9+obe
	 mttRQx7x3QIjT91IgvHW1zf6avZz0A3SMnQvAD6x3WofZoDdwktkDytAPEt6VFMplY
	 KJ2UH/PUIYgkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0936D3B7E5
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 13:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176701343365.2031.6948059699497603500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddd7558ba2c50b841155b14ce32c205f203d020acc561bb86b615fcde18005e7
Date: Mon, 29 Dec 2025 13:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767013433
