Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2400428D836
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759049394; cv=none; b=eunKxNS1wlzvBwl/jJOY+LxOl1q0uOUrfCH+am/gg6cyoKXtGfeNa5SbUpSqvoiOWEC+Qpt/TGUmklLGsDGRCfc1+iIH4qlnLAHtK3l3BdWUNZyQ60ch1i60ArMFW+9uJh6sd3ShdGnHuZhoUIHSfpwhlEVpfhb5sKRRe4wrq4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759049394; c=relaxed/simple;
	bh=nF65mb32Iw4UHErN7xm85wdF4O7NNS0Ns8o3k24tUdg=;
	h=To:Subject:From:Message-Id:Date; b=NfzoqgoNmXMhHxM7iSsZBiunZyhQ4S18BdnZqEpvMwdp62pcTuVjHEzlq/g6joGDRWKvFp1/Ta8lzTD/MbsFMYRSB6ORmz+2Iul63gM5/MJ6k36pqMGlJ0WMmWh1GAixSpI7VA2Vf5qIi2PBBvuB8bpqJ4cPREBAuAxh0s2HzUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nUdvIWSH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nUdvIWSH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15F7C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759049393;
	bh=nF65mb32Iw4UHErN7xm85wdF4O7NNS0Ns8o3k24tUdg=;
	h=To:Subject:From:Date:From;
	b=nUdvIWSHDD22gPBhVq7pN88WQ7DioW7Z6B2xVWDtGjZtMQDlzy61gKWC1Z791mmEt
	 oULQCBLBpf7vTOw//+pm0pPF1N1tbBG4H6s6g02EtFV8GmhvtDainiqm9yMvTZFLug
	 LTzadgEvGbGm+zXhAM4L7eRB9be2P6xPblUPaiqu6sase1junata8DKmJMhK5Pv9/8
	 TNU1Eih5H0U3ao8evQYz3ClXnz+wbuTLG8s7sskJIO3DJoRkOajTMYNStPFC0gTn8T
	 y2NafyQTzVHeATlZSiXJIS49eC8W1IYaipccMWHl9UvUNyw2vngW88ZuZAFDtaNgtH
	 58I6VlLj0BiNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F929CAC5BE
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175904939358.9638.10857619446397388090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e0d721cea7d41ebdcdbcb7708d482aad6acc15a47eb6216fa31116045ce4dba
Date: Sun, 28 Sep 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759049393
