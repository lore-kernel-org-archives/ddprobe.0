Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 337F418EB0
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742056194; cv=none; b=KGLVG8sYanYqoKmYN9yHCC0IuM7HlTFSFF6mEPCis17Lxrzlth69SPVMlsXM18uO+EtZOAByCjPGHBMSdOXo1DGbdq4KCYdeVavcd5T4+kcdPh2Om03Uv0hzfB/LH0MdbXjptRmo2IAhKtKSYOuxvcIasPsV+iNQ8ks2j9ro2/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742056194; c=relaxed/simple;
	bh=ZnudKlCO8A7OeFXGRSEFpOCxUfY0fm9B5UTDG8YzISg=;
	h=To:Subject:From:Message-Id:Date; b=kVBuakOQ0f7hUODJACBjKvU6g0+NwWzXX1e7rgBU3K6j8jbW2j2Gw8EOxsopSHCXSDarcgTMGbe70FTfvqQhv+53kMaNhUoB+7SJRd8ox1LiZIjLThupM3tnTe7ylaqwMgJI3A2sOYI41kDWCFCe2p159Chi6zTkjSif7LjkJPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c4+pjGuc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c4+pjGuc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2DFBC4CEE5
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742056193;
	bh=ZnudKlCO8A7OeFXGRSEFpOCxUfY0fm9B5UTDG8YzISg=;
	h=To:Subject:From:Date:From;
	b=c4+pjGuc60YOrrN6wR/QPDyMZd/gH61EbmhwuR/RLaX7dUyzWBZJpsfGLP53Vwsmy
	 igSUY2Jw/El5A7e9T1C/OhIDhVtUol5PXBrX0qXzrX5avAQvrlniRnicUJiBQ58pAl
	 duZ+3GzESx0H1sm/LbRiuIunNn3Bj+T9xs47x+Xb17TlD4kLD+GtPF1Wc1LQxET9cM
	 DzKnPWnOsKrswn+kqTjxlLGRC6nr/BiN7DbNZPgbWJYtez1SqJRR+sxMPbF/DIUi00
	 d8Hpx7IqD5ntXLr50ZZNwHUEpF+rcOPbRcNFQaLYJ7DdzDQ29OXNxmJg/xCxUCgXso
	 YXJaavpev8e3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DE8BC28B28
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174205619358.19519.8892342339112583537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b7c1010d75ee2f5257f18600805ec3a07a15cb871e0c8161c5787cd2ebe26d1
Date: Sat, 15 Mar 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742056193
