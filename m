Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 443FC18A6CF
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742636394; cv=none; b=b2mSV7FmYl6L0TAesKesRy+XYm4WEKzZ8uUm0ngRCPOTvTCGzBqPjKbPDndnlbiphXVvPDzMfG/ieA6i742UhcdmNNz2SmCv7YTC6/pEU52gPeSe3R8xKAjqY41yzmRlNu4aPPYCxbYLWm5lGqYxDFQ43Eld2BvkH24k4faWK2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742636394; c=relaxed/simple;
	bh=KomcowrQ3UTYFhpsLOfyInzhXfZMdTAnT4Nv9JIKIhM=;
	h=To:Subject:From:Message-Id:Date; b=L0lIhK82R5xvPsYaRiKxrjzSnjCet4OXPEpOy33dmAzL0/atNsE+SWb5EzlmtHXtcxvFVHm8Kao9AyP+FP1NhFthQkCdFLVgGEUvfWS+lBRXWizsCEpBH4CHXMUY7QGjuAMyX8XruL7eDwexrCuafGve1/u8elB72K65xpJv2Uk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VzC8AKdt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VzC8AKdt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADD16C4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742636393;
	bh=KomcowrQ3UTYFhpsLOfyInzhXfZMdTAnT4Nv9JIKIhM=;
	h=To:Subject:From:Date:From;
	b=VzC8AKdtkLeMy3L9r4Gjze5DtOy+VKHuc0ETdN8rhqTVoHo4udW1kdhTdGuoowUVN
	 sm9vy62hkH6r/F8+vOTIr6UlYFNbwcFOX5men4zsctkEnicBkz7DpD/kXFChdycgVS
	 B3vM3CXstT23kegyJmD9eTa6qr9rkY5Ll/iNS45w6rksYeSN425wKpAMx9Kyk5MNtl
	 vsboNimT4TR/gZkiRhel/WiAwXenPHuHsLpYbx6HTvPclSlMckqIVjqVoPxhLDk89C
	 tc0dXon0cRSYIMAZLZRACWgjfMpNLy9Cc35UEipN0faXb/EYqaVlyVykijskPxdoCP
	 3fc58AkA4kohg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B8BDC35FFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174263639360.21180.12316162593542363311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71f72a5c61d82c6661b161c9e7608f86c31ad1dc285edb944b8f0ff895a7ac80
Date: Sat, 22 Mar 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742636393
