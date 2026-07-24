Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBB6A416850
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 17:30:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784914235; cv=none; b=lhEriMiEUZiorAlO/IwDzWU3usi0nNOluMdTLH+26mG2A5H55BYuAcYsqaujPiOFs3RYR8GGxaKnNJJtoFbqnDzHkEjT9Y67HkPWtNcdftLiaoL34nl2WlC9dcWdCHykh3SmrEiPAhzGfceF0969PiHCZVQt8CIq/PbHKxzvLzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784914235; c=relaxed/simple;
	bh=moZxE+tc8/rHZpGE2iP4BRc9DFKqaTthPgtMYUrXAXE=;
	h=To:Subject:From:Message-Id:Date; b=MiTQf09sAG6cYwl5BwC81EqEb19wvGHVEnAGV9Zt/jpC6pZEDM1Cb2OHj5GKCOdAJC80nsKwZDyNosz2AHyoiAvQSG9UeUL9exIESFHSoWxn3aQ4ikSeerqVqDuLFHPy7zanR+7zk8N3RE+1pXT1xpzhVap1p0ZPPZ/+wuQXFtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RnyfGSIK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RnyfGSIK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB84CC19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784914233;
	bh=moZxE+tc8/rHZpGE2iP4BRc9DFKqaTthPgtMYUrXAXE=;
	h=To:Subject:From:Date:From;
	b=RnyfGSIK4KlD0DvAN/lFhNoeXR08hVbdGYy0/IsRDtq45K2W39dZQizmqN351ehyi
	 6YK6uYBmEexlN60V/ul+BTbpZAM+0abtHPs4bHgDXsxUCA12feZFn96tvoyi5WQKpt
	 3D8Py1lfDcfwMgIzMSCa/Di29AR+mCBZ1JtJVJh085qqMbjvW513EOIk72tdyDfi2W
	 o7/3dianhPFZON88fNEgrWMyoUvM6VRx8+mighoGJPjmN5bEGNVKshsFfTlsEKlIsf
	 BADHz1JFlgiF38cHnDCF9hBHoLRd+2Z8rvegO58O735ZfPzmLtSfl5HbpMDutK2MGs
	 MzP/wgdZhFb3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A91D2C531C9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178491423368.20267.17168539987045270069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ce427532016c5d94cb89ee8beb495937f1555e38f262040d18479084d2dd8f1
Date: Fri, 24 Jul 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784914233
