Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 496C943B3C2
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 11:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787053834; cv=none; b=fVylHzV4mQ2jpVsQxaMu3onahuLjke5zHwALUdjcSK2x4H1E4JC1j7M2oQb5hGWQiDIHW12ifdL3RFqJhvOs+L3/8Qp64mkGQ3FUsWFp0v+3LHkvkMiY7UCWf1nuWR0/LJeCqXq3LSux5jc/3LPZcmXhmXyl1tt4r/r4/K4LNao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787053834; c=relaxed/simple;
	bh=2czLLziWnMAhZYfcGMAFkxifCLRc15LPU/wE5L2Gt6U=;
	h=To:Subject:From:Message-Id:Date; b=S0htvp66eQlW/eA65ZEB2IEY1cH1+PfeUSTUv82TN30iW/Ka8iCqvrszp3V+2y/bp9FlL8RQIcGfx/M4JdPWp1opA1W3gfo21nB7EhucUekedVn38G0+PUhzHTxs7pFATQi2Ei4iLJTaeyZ9dOE4sGyJ4QAXVuOcXCDWpG0B0Nw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IgpW02sQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IgpW02sQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBE2EC2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787053833;
	bh=2czLLziWnMAhZYfcGMAFkxifCLRc15LPU/wE5L2Gt6U=;
	h=To:Subject:From:Date:From;
	b=IgpW02sQxzs1Kvvt5HdgWVgkrdS+BhPctdo/hCpBTr0L87RgDSUlGftcpzfEnBZ5k
	 hL9Hz7mBOsFcL85AEkraCAyBf6YnKFWklhJi2TZYvNhQDFAW09/1D55KupJREAaWob
	 5O1dE6aHhSZNUHeQhMDZY1tixkoJGG5fGUwdVR8VLNB/XCy7Yv5JYXDRpqQHCSM2as
	 eKnwoqLAGeZMl6zKskzOGiQeENxfbAk+pVybyKkQ7U2JhJcw5uhrRnAh5Rtb0U/3+j
	 y/vPyGRBUnPWpfyqKr3bzVlnSBcZgoAVykAlGQ4gcp+62b8Xmlwph7n31EzKeFNPSK
	 qEK1o3t7r6/Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA93BC5DF7E
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178705383369.18440.14250245373870284910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b73c6c18b2fbdd6e62e46037d8e995cd3e0ef181ab6e53cbc9605b48da2df96b
Date: Tue, 18 Aug 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787053833
