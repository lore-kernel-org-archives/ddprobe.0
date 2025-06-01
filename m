Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4081C3C38
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748770194; cv=none; b=lw0/txdpTgfrZTZa9bOx4eIb4wxc2UrMRFqJf5Qgn9W861hm+5cZ2SBhBoH15sEySLJ0APagFuuMcXRobWoX8ncsfzP2viPsfhcM9JLIJ70lCcbvnXb4ozBe5tmnoJwgKuKkWnk4NPVTE0k0N/HFkaEo50hHvfExKkbCr3GCzFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748770194; c=relaxed/simple;
	bh=TZViWowALJz85/IdGLRpiEYsFISbvafek1rbGSI4Ldw=;
	h=To:Subject:From:Message-Id:Date; b=YTV7EHcw1T/l0iNJi/4DY6k/w4J6EaJYgHRNpnt530lBLt1SdBPfAGA8q7GIrLGwkP62jrvBrztutw4uGpAtS4iPLOCtv/ttI9GayGbvL1ErtkG0xXy4524tkjWDeefU2Pq3YAElO4aB26MOQds2X7/NWbiX843LANgmfCgdToM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aOFNsGLG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aOFNsGLG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A764CC4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748770193;
	bh=TZViWowALJz85/IdGLRpiEYsFISbvafek1rbGSI4Ldw=;
	h=To:Subject:From:Date:From;
	b=aOFNsGLG1F9CrhFsj2Rz88sHzSkfhUpgRj/dpLhlS+L8AP9m6HQTm7N3+aNALOZxO
	 Qr3RYIsVpYUaSiWGzd6cJ0JcLswZCcO+7NRoHbQ3lQ95i1DxJ8VmYyR6HNEXRFToBd
	 yRSVYqW0+v378lItL/1fnKTp3Zqg4HEkQivqHCp1henaSf02Lvo0Gxj0ycvpHBI0/I
	 Z7WuSQVuJZhIcEYmlIiJK7i8Cobv+4lM5Yi0+I79Bd56fq7IEv/mWMqeJsw0xfj/CK
	 rp1zWKaUaZZe2TnygQDXaIcSQkaYxsmrHxOTQ1hOE+6ZjzKoMB9TSCA5jIPrQWN27+
	 92mkLuauSs6Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94703C54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174877019357.24895.16464731520558156661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8e906b2e0cfd420e4ca8149faf996e61a1cafb7061fdf199a8df3cb4e021de2
Date: Sun, 01 Jun 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748770193
