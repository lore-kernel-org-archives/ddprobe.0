Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30F4D215060
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745945394; cv=none; b=pxgsFvrRCwcbTE3T25twnQi7iHL0BnJRybecVFE6xdhtAsw8s10/hw6OBrSp4VcrPD4OPWeD5dWdm7o9ljzaVZkILhLYW879ekoIHBcCv87J3fHVtlG4x59ZkBLhu7ZBV0nRtzoMgU99P+6IasksarRN5x3dsM9pYITfxi8A7kk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745945394; c=relaxed/simple;
	bh=381CoHU5Kon7myOpzF+YuoTGOJeU8HWCSjls3G/hUFY=;
	h=To:Subject:From:Message-Id:Date; b=ZYep79l83oHBLZY21bHbNOpkBcqwrPExi/Hy4B6tN8koCVrpDWncD3gKJzaDK1noXeYWlQkkSDt5coasKtoggewJunfR/X92ftOKyB78mfYfd8p3fOKKOn1G1jFymLr4oNEkfoZXBe8kYlU+bquEer5teZ9zkvDP0nCOi0BmUZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fEIfnUc2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fEIfnUc2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13ACC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745945393;
	bh=381CoHU5Kon7myOpzF+YuoTGOJeU8HWCSjls3G/hUFY=;
	h=To:Subject:From:Date:From;
	b=fEIfnUc2C5bupyJO9VrGRsAL1XZEiqLTexVH8Thh1Dx5oF4ZhniWw7fg9L226qxcI
	 ToEAyWki9diPm2m/3A68DgeKXk7ehb3Yqox4oIvYjdr8VsM14euCafnGntdq7IgaPP
	 Wrc/WmiF2FCDWSTdq5F8q8IL4Mr5qwKeBhfojZyTftF2bgjQH9Ip/XAW5frfnDAua+
	 7werdK3oQUi2JyGNpBMmeVCsiisb+loXyWE3ja36alSIQpMbfBZeAfeDyLXt3qvTPV
	 w+TfqwbupAu0KiziVi5hWwgp057Ztx+aNNwjvc1ghtPFYVaMAq2rEMQ7AzsOKNw6Ey
	 hsemNoIlagnsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8A2C369DC
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174594539357.4699.7090477306086100008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebccd9f85efe4592c2d1f86e1dbf2e70b920cc2176fb0d8df992f6e50bca8ef6
Date: Tue, 29 Apr 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745945393
