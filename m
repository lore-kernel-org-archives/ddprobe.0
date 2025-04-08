Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4829C241107
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744150194; cv=none; b=HWsluCtRt/33WxJK2G67z8fu0HAz/Twb6QvyNBf29Q4XdPXSMgW2bLwLKRpXd76x5Ii9KTujDqLBMZX+QFLby0KalXARbdnUsrLFI6ltQfaxPO7PjPvq4Oy9WN5gYU9E2rkAwimUVHssG3Sit6yl8YhKRcRs1/i84J4hVBUOGWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744150194; c=relaxed/simple;
	bh=Kd7ximDDO+CvjDUUssCJSUgV/wbxePqXmwGWRrbf4is=;
	h=To:Subject:From:Message-Id:Date; b=fs5P76cTpLd0KqZa2Cfi8K2nF6GN3yxyHci3sNjZ+sokRsWQ78hE1vhnIgupGcfAz0LnjosfkNJnc/HbvrOsIfsZ6B07/7bpKRr7MsODK4aE2zwHKaOAZxTUoONfsclFqkpznw+GR4C9NMYa1s2zyuqMQpFYdkApRTsOtaO3pUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LgZm8cax; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LgZm8cax"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB40AC4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744150193;
	bh=Kd7ximDDO+CvjDUUssCJSUgV/wbxePqXmwGWRrbf4is=;
	h=To:Subject:From:Date:From;
	b=LgZm8caxtumqH8o5rSOtaXNd0KTyTBJopkZqQt1+t/+esdmBBRAj3AHhgEtatw7Gy
	 6IyftsTJyPOF6eo5iQym3RpDKiOV501DFta6HzfjNr0hYC0+qT9yiU6Wm0xd82hR09
	 5LDZj0EPbVE4zbRkiTsSbUmuLxL7zKPFoXgZpfuSoB1g0ugcv1Bxx1WbNr1SIg71cw
	 6nNZokDL46L215gtQo5r0xA4e4NpxXN7wgqD/84XDbtZpehrCMqiuv87xq4wlumq1I
	 hLsQ/aWaIFEsGFm40M33BzyTCcyPkMDCOvuKLYrJFm8t8qz3mVRhKd0/vlmdk6E9dK
	 s6nc/YX0ts1ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BE5C36010
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174415019359.30066.17666041888363502238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 578b9286678db4ee3cb7f10d6889d8709a8d490786e01f146653225232d021be
Date: Tue, 08 Apr 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744150193
