Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37C411A2545
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 23:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770938694; cv=none; b=kFXcfKBLt1LXXJvWbCKnjVcx2TjYj4/iQfNl3/6nZJqQ3FWjbp2hzaNjV+/yv5yL4F9G0iqIoghC75B+++RiuGvNElvIEeM1V4ADpogsGT3EoK5l1ZaSJ8DVmRc3naPWv0C/BkZsYmzeZMAj3DLnwPFVjGWyU1GC/8P4fNGQWTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770938694; c=relaxed/simple;
	bh=wz5Xa8H4TSvspLVQ7qUF4hBg9ewMAz/Ebsa7veeePUc=;
	h=To:Subject:From:Message-Id:Date; b=SUwG2fA3mevkbpnK20LDF9YSHQf44ynKQdXZjeVdoduLJxblmO/sOZaQ2A66cLD8K3YcbXssuTMUv/DgFa3I7pcVXg3/XzBHafR8Pi5a0D0yoFAdZ5sTiI1a3nuyoB6uULBxMPJgXWgjRGeB1Rnn6ul7/BmBp3fVCt8wWs8CxaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TpwA9O2m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TpwA9O2m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5020C19421
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 23:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770938693;
	bh=wz5Xa8H4TSvspLVQ7qUF4hBg9ewMAz/Ebsa7veeePUc=;
	h=To:Subject:From:Date:From;
	b=TpwA9O2miSDBKQlZPZ9Q+q5yB1xpDMQAC3U8mUtoFznw6JdrSIIq39ghr7wG/mUIF
	 Ed1ivPkJr7zggoRIANTs2Z1AAPoVd3n4mWYlypm4u8TTfXGh9LPFPsCrFDQQUHlVcd
	 LNHYSAwbwyV2GP1B2DMEx6Pht9yd2WoxGOCB3yAasmLRSuEm6i1oi1KI4TDzoTIeXJ
	 Zsre6fS/lr0nyGGpxlUppfzOWbHg/s03/cD8XgDsCtao/ROiYCp4wtm+dbHazvJlXc
	 08lKM69IO3b1lyAHh1/eSq7CpREkvU2jtc0r4zPhEN9z7fLTmWBUskDhz03TTNLRsn
	 y2XScIFCnrSfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923A3EEA86E
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 23:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177093869358.15169.5003893411880309984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4aff7ee23134e6258c1c3279868954106b1a366b03cc16c183c04ee59c8c803e
Date: Thu, 12 Feb 2026 23:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770938693
