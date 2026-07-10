Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 413E113957E
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 00:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783642714; cv=none; b=oxGxKO4MdQF60vy926xVX4nWhMJ4HB+hjCmCeulZp0hnEmG2SL5SVvgUqvSeC86R7qC2wt7uF7jVmCje2Xq21H1uhM1yK5XWAl0Yc81N5Vf/a04WZEbLjs5buCiLELR9Ut2ywYHb+sWqbBWHM8T0yawrN85qNVhSF9LEZgVXbh4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783642714; c=relaxed/simple;
	bh=3u+NkC6kex74SbiYf8lMyCiaBNHFcvuVWz5UdRK9qgs=;
	h=To:Subject:From:Message-Id:Date; b=QiNv/GpaMdbIgMA4dB7MWc4MaL72arrSX1MF5e63U2QWKKM0/TFI0DDaxmNREPMyHHRFdDdlQJrSzKUTSGR2tFVNVf3f5U7NBWXg3Jt8G7zz96ot33qn7zDIXQ38QmoIs7sgNMB5/11KSJBAiXJGOc+1ukRMI/Y0sNj67ZXCvRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sou5WHbh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sou5WHbh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE055C2BCC7
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 00:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783642713;
	bh=3u+NkC6kex74SbiYf8lMyCiaBNHFcvuVWz5UdRK9qgs=;
	h=To:Subject:From:Date:From;
	b=sou5WHbhe3Xql2C2UPizyiE9TIa0VBujLuO96T8ANftfpn7MfIhtVvRNC8DegNUgv
	 Gcg2VxZzVd6Vz17XsUhgm0LN86D7HkU/FWqDH6Xbbhoy99CZZq6OdBp8KCZRhg/ZIS
	 Mf0N25ET2M4EycsFHlehP9XMK7rAa1tcf8E+zHI/BrkFl2ApCPZQwQ5YKEe5PV0ODM
	 fA4u4irv3/FHOzCZGKNtwK/HW+iGE2uAiriuK8ucQ2sKKapv/XMt1g1L1q2Nx0RAvR
	 ah3hOPtaUDJsYCtQAgto+e8W0pDocrGEXq00HKFj7SZL2c8J41SRhtFThiFYol5cNl
	 xVKklibMxOKUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE7E3C43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 00:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178364271368.22503.17562818113125800250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d29d1dd0164aec1b53afc721eb893e5e895c7ca43d11c631e351fb197e22fe8a
Date: Fri, 10 Jul 2026 00:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783642713
