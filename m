Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2584B19922A
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735985754; cv=none; b=TwHzMbk8WQExDY3HuiF6ndXVc7Ua5AGp3hn6YeiWxBvLfOO1rnyP+qYEs2Zy68XUxi3VlGQi19a4tx3e0M0yliMrDFbikLwS4fQgcJw/gtrRmOk3/mMyN61sCx0dE6jiyP8WeVjpAZDpURc1Lc1UHNAVH24Azr2Bi97l87+dIyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735985754; c=relaxed/simple;
	bh=ckB6c40jACAVeR5pvbX3dMVIybmwGMTLHkfuiHosq80=;
	h=To:Subject:From:Message-Id:Date; b=EshNfQPjHX7MsfoQW2hej/fiFbpjGlJCIkqzes5UQ/6qZX/MZv58dZ0R0cy4WVd4/TUrKRwsjswSWHi6XVnDCdWuL4gvB21WilX/7aUnRLg5HIHDqPhIIhYfCOe5QM74pmATwhk5cnsjJuog1QeTbhLf/yiHGs3HJx4Mfp4fRlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eRS3PNyU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eRS3PNyU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1112C4CED1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735985753;
	bh=ckB6c40jACAVeR5pvbX3dMVIybmwGMTLHkfuiHosq80=;
	h=To:Subject:From:Date:From;
	b=eRS3PNyUjd2tWj8E/wmF4pNoitv5u84bxNtnMyc+dFU6iqGCU+DA4HW72Q+alNwUZ
	 tHzDVL8fki+rXihktWGFNDAd9tUYO3MVDjKhvCQSwO6haklm2CQ075isOcilhmO6YY
	 dS2BmCm6D8/xZUeO8l/27udqQAr3ifOynOFQRt/kEBGTTGEUAR4yMxKZBIGC0BV1L+
	 WvGjHSRPzRyp2530D95DHk77mjc4V+1cmZ5QKUZleit99ujJmep/LmXvTXXJiBmJDN
	 2UX4PnMFFvbqlkVks2ryNvtA3s+wsOQnE7+NTQLktQVgdzd+mkXc9AEvh3/mOjefR6
	 EIKH4VniatLsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E49CE77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173598575359.27219.6233473634679055194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef66cf54db0517fb41e49b2ad0c12b82274319d1b729cc86d81962151a987d70
Date: Sat, 04 Jan 2025 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735985753
