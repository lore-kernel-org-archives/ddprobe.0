Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5715B2848BE
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 04:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784004514; cv=none; b=aPBMYKyMvSdOkhxisHOxsA195x6ZHc4W0HFldXNSF2X19xiHuebKjGnQuHKsnZZ4ir8BKueoiqLAGZ7VGrfVMmDBFUbD6IG+IvgnBWC71TMRcvUfBHnJyMNawTyYJ3rb0YBJH/ZTG8z8XymSuG70Y7x4hA0j2is5/O5/G2FhcTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784004514; c=relaxed/simple;
	bh=PemMMyii8DMlbSHQkPODLoRCeScJOiTw5jzd7xS7Oa0=;
	h=To:Subject:From:Message-Id:Date; b=gr+S/zBuKTao4+iBzMahvpYryNmO+iWvGTBviNILYKa6aTknowjwhTR15G/R9lGzBYPoUBCvkdcLr36eQJODW8omvjOZTSJg7qPdN5Ej0CPrTa9mjSTB0JQboMbqq1Ymlukm24/Zg7Iwq5KDk7j1N9HpMftQH3NH/pycawcWcMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UGRJAuyB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UGRJAuyB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7B98C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 04:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784004513;
	bh=PemMMyii8DMlbSHQkPODLoRCeScJOiTw5jzd7xS7Oa0=;
	h=To:Subject:From:Date:From;
	b=UGRJAuyB/ATfUIFBnhWTWPTC23H+hT+BvjuJQh2TCal8EJf1WSzq2imMJL3ni3r7g
	 c7/FUXEbx5vU3JZS8swU92f4B6ICR6xEn15/jEdT474jvM2GfNppbL8R+GWgJ3qduO
	 ZNzinqWuHUOxMl416Wcr/VSqiqsoTvNx/DhSa+YHr5MMDBZNqDaQS2bgao0Oc8RkXr
	 nslvSPfJMtDZWBGUdkTab0yvRNuuXUR0Iy0CZ7hKkIBGh3QaKbXn0GFu75RNhAXWNW
	 s0wB8S7+uZ3mDyMLTGT9IlE0Sh/0sj5xEPnylcn1fI36zC/z69ZiSaQ3iT42BRotM7
	 z0236amBMkkbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE7CEC43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 04:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178400451369.30693.1772408990552903226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a81b3a5ec4c509404a13a51385f1d875dd0d527371d89b8d6198f9e4498913e
Date: Tue, 14 Jul 2026 04:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784004513
