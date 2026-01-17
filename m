Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2990314A4F9
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 14:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768658634; cv=none; b=m8PBF3m2cXnmzb9CGMcfLyStb2xl06yPgeMwyjRH525TIMSEBeuyLxYPK16GQ2qcMPv1nLlXElpxGhwvISzV1vRkyR3DmUweE2QfUcvyIEwMVpb/FG62buKKA/ZDbII2UW31OFChY66y0C0aWCIjqMAO36BctCiqepRh5lSe60s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768658634; c=relaxed/simple;
	bh=eAtf/ae2CmGMnCwKGAZo1Mpi6IUOpSQk15J2ojllWu0=;
	h=To:Subject:From:Message-Id:Date; b=XX+J5qneW4W6Jv+5ES9dN9BT8gkfdhkllGIuhlusc4v8X8OAonkW3gvYY3ENHuG5pbIpDEidpspi0UsbcOvRuoyvcOdFKt1UXrudzvSLUDpL+0vryCdE3FXNBQjWgig5Cz5WIMnbta97/4eGJU4L6JBfw1sIWhGK/d8N/tCZvU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZXNsr2HJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZXNsr2HJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA3D3C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 14:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768658633;
	bh=eAtf/ae2CmGMnCwKGAZo1Mpi6IUOpSQk15J2ojllWu0=;
	h=To:Subject:From:Date:From;
	b=ZXNsr2HJq1EYhF6MzrSYxkRWFXFOrMTGom/wz78Tv2gr6qMw+MOCp0r3Yn8spnRBx
	 S5Mv775uriJYoEWMgXXS+sei85hYKnpHgcXXKIt/lRGs6q1Nksqqqu93sRNCzr6VW3
	 E6bq3r8VisIuhzuRmI5XYBCV/vsRTw1fiYLHtz0z7f1Y2od1WifhXbNk6s1k6mXqor
	 N/p3IRWXS069J4TFRoJzR2ZGaZ4eMUUjfnyOj/HQfSTmz6br15MYMqpjP0AhPYDQjU
	 ntqEinZSQ8yfXd6OxongtzBFXSstlCAhWnAlRb3CpUQnyYUCVDVRJ+0sjVobVDNIPs
	 SabhhhuubQIiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99C92C9832A
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 14:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176865863358.27358.3185139166592207583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c291e1474eb232b4ce8fc49d4b6d86ee6838cb6fb2bc1158a6b56738e47de61
Date: Sat, 17 Jan 2026 14:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768658633
