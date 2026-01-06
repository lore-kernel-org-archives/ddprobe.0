Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07BC932B9B1
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 12:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767701034; cv=none; b=rzec3ogHvVhZP8dZqh9TGCzd4RFdu1Y7N8xh8MUuxCDb9ZrXxl5p7IyF//DUS2D5fPPi8xQF5C3XbCPNtCv9p2PXwG1BIgA6EtICoP87YdqcU1VnzwidwEUMl0VYT/eBSuHoV4Gahoml8YKNB209cbO0BGWfIUWWlTaStLYGwaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767701034; c=relaxed/simple;
	bh=Rpu1NLGOn6689MuT/gdZdd158cq05HiIWGkHnIi9REI=;
	h=To:Subject:From:Message-Id:Date; b=SJAC6917iOeYNnKB+Mj+T81scl0/MaLCzORUUPJa5qW4D5XInBvcgsS6PB5Mf9+oLard0zK81Ca8wgGzvwBIVMUbDEgZZFbpv81dcCBL4T0UaLbSAL47MfKpsyXZO/Yd17QX2JE2y170zHNB/YeHXuodH9upnK8qPPSAfRvqxic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SwNa5w/6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SwNa5w/6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BEB2C16AAE
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 12:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767701033;
	bh=Rpu1NLGOn6689MuT/gdZdd158cq05HiIWGkHnIi9REI=;
	h=To:Subject:From:Date:From;
	b=SwNa5w/60V4aQmJEyQSg6OuQuOwUYyXTRbarp/0WiPiRDn3BKqMpl2aiqyApEPPcO
	 aSF2KgxhB87QbVaiUjgXQSq7ancnIcxgabWtCSh1LXkLrH16Whhuo7ixNVrmdbVwei
	 KTadzqaQEGnygpX457BIxybNaNGhGJ3s2Lx0rM9b9tOvJXdRsTY+I6aTfSCpzgRgdi
	 DffAXWEMhjPymUXnBPu5SUGjX81VS5TKwIoB+zmi8uBX/U8PYm27fF3v/8dJom5hi2
	 WBp5c4zv0EmrfwN6RenWweL4lMgWRSvcaOSXnMIG9gkXinZRCAtGqEkCC8tIC7EJQm
	 zkMa24sDbV/Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA2CCDC173
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 12:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176770103357.26466.801516565111508776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87956d8706fb8d134d3c3776ba45134d44ceb6e4d94ef73bbaa59e07b594ef2e
Date: Tue, 06 Jan 2026 12:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767701033
