Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B8EB1F2380
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 06:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764483774; cv=none; b=F7Yz98ntfRQ/xgaBaP71JAnC3jR5U0EIkXaBuWDuBpHCHfIEnMO0drjyRMRRfddJpFqdWBin1m8/9Qe3ITdWsxhovUCmRZHl/viF8p2sWfp14a4AWBXNVIcb+Zb3EYnDka7zOOcqOPUp6Pzjq68W0P+taHMijMh30GNKwjvCmFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764483774; c=relaxed/simple;
	bh=iGSFrH+J2Q52xLvHtoqqDRqObEMBy507pcw/ApWsaVc=;
	h=To:Subject:From:Message-Id:Date; b=EjBCwxpCOv53t4pVnLObNT8tGG/8onClK8zkSpm/e2JET+CQ51djK0Mp4mzR9Wskoonh8YkPvVexleqbou0VVBCM22+ffGbsU+EE7REjzC+LWq2srIDmXUK+JisB/vU4hBQHbf5h/QrE1vx08o2WdDFa1cB28Q88UZfs1sBmCDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vlh4QA+C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vlh4QA+C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68E9C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 06:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764483773;
	bh=iGSFrH+J2Q52xLvHtoqqDRqObEMBy507pcw/ApWsaVc=;
	h=To:Subject:From:Date:From;
	b=Vlh4QA+C8tk5AMCKadpWbx7FTvStaEHm5Ho8Gdz2Po92LvsQ1Ot6EQgTqzBy+x9pN
	 TKlKoSLQwrIvDxabwxJWF2qth17TDsb/hehDM/o6j/gHTxOwYk3i6ac3A4iPAnOFwz
	 B3TQlb1ZmHbcQuLeVixvjfAIUMiANq58CAK+EyASqmbugvsq+/WF5QpPn73tI0U7Wg
	 7f/pRoKMKHpbyHL9PDtknOyTcaVlFxkLBFJHqQNzBnOOBVQMBRQ5AwKxHxzMug9HDI
	 k0S5z3qjUpUmVGCCBHaC6UQk93bbjPEnfUcrBxUkBLqcEvk/W6Zu97LWzDQRIPHoQP
	 KTwNEZDXReGfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9443DCFD376
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 06:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176448377358.31047.8029078086382769210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba9ff0ef0b6345f40e46ef18b83b8c3b440ab08deadd95165c90aa902f7b479d
Date: Sun, 30 Nov 2025 06:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764483773
