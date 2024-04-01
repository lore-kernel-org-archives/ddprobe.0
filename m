Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F1B3FC17
	for <ddprobe@lists.linux.dev>; Mon,  1 Apr 2024 10:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711966697; cv=none; b=irC+6JGiAfAdTPCCF5EjVG04h4iSiGDjoAzzGQ43Dbn4Feo59TxrWH2RfdYw7K+eDd+Q/pBo/hT+/my7RHighFCnk9pKCx017r7Ecx2PnIDcn13Ww6C6ITmiwPInKH64BH0X5RbstHcylp+KHkk89baegctcfB2Ogjo4z6rkcYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711966697; c=relaxed/simple;
	bh=jk/9CBIKkBxrHqQCKcd2/h5uZohmb7AruDZgOK16Wr4=;
	h=To:Subject:From:Message-Id:Date; b=kZorqnAShZ/UC4S9ogY8DMxSDgobJRvUCCSxUGEz1Kfa+8AcuqohKhmAXbT7kZQ8JzOEDLUqZsfPchBXrA5QcTufRPgGTNtaunIRed4N0Ticq/kn5zdNR44665TX+VVD7UMC1mgU8Qf7UX9xz6ydqd8DvY5BzEg7sBWxRhOKY0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dsp984mB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dsp984mB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A7DEC433C7
	for <ddprobe@lists.linux.dev>; Mon,  1 Apr 2024 10:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711966696;
	bh=jk/9CBIKkBxrHqQCKcd2/h5uZohmb7AruDZgOK16Wr4=;
	h=To:Subject:From:Date:From;
	b=dsp984mBp3lAb2EJCiT1GCiIaN42v0M3W+jBrCkDglmao21NwPGb9hDbtQACuhpya
	 TdytrJKbCchO0JmjaY2qXSXS91pv2fLVWJaBAIGS1E1FqACDx4XP7DAx4NWHgEOjIz
	 OvLwKZSPN98edNeo1uPfSjv3UiOpNnmioTj1En8GfU4oRT1txYLuE9+Jns3cq/lKxH
	 QU3bacm4IcflT72NbqREWsur7exQI5C5foHdcD0dnCPU9jl/NiQRT6B50qf6nQGni3
	 ekjK6fvInxRsnYhAZeMVnIHYIClD3U4YAUP6gFUr/5FGdckRoE3RFmPcm68a9qn1uK
	 5Fwg8oIUjFZ0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68213CD1292
	for <ddprobe@lists.linux.dev>; Mon,  1 Apr 2024 10:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171196669641.11467.15272263646140281038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ec593f79c4d76ccc5f6da921842b61370e16a2f5572a4855c1a9d9e9bf44fc6
Date: Mon, 01 Apr 2024 10:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711966696
