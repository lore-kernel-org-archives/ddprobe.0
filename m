Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3468E22D7A1
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 20:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766088234; cv=none; b=CCWZapqnJHD/Pmk8w9Sfl2lNzKUD4zrK/76deBcL6ZDM2A5feoE2EOWBAjH64A5fYiH/RjXcw1CxOhn3PcwOLaUJBb6jHzzlTCby9+7k7ipfMakP3jTyvwmaAL2fFBvQjq9XRiuLzRa/QCnoIuAbmKdbCghrxEovcu60XnAm1xg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766088234; c=relaxed/simple;
	bh=pUK2RKTLYfz3/xcw4uFATIibFp0QIw8FM5oC9gQI4Tw=;
	h=To:Subject:From:Message-Id:Date; b=lasAycZ99p1KXUsOAKZvfmgsiC7Xr1IrPeRcABw9Xi7KVIgLvxyI64i82ZldrNb9qtgi4kCIQgTfIf1eTObfyniUwfXwvRxuUrAn3axUUHK7kdbL0Yhxi2WoohLLM/FKZqh0fD3bLarkm4W69ayVt8+wj38zdJi7AmF35N+M3FA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eY2xxNzF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eY2xxNzF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E68C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 20:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766088233;
	bh=pUK2RKTLYfz3/xcw4uFATIibFp0QIw8FM5oC9gQI4Tw=;
	h=To:Subject:From:Date:From;
	b=eY2xxNzFyg+6UL2jHVW5XCgAG2kbkOW+w+PAcMxRw300/J6RWZaxBc3z8QiSWybP7
	 TupgcxylX/1d9nhnS+DmHRQaL0faIF6Y47xMG1l7cx6LKl8qMY1g3tkhg/7J5jGI1F
	 +9DxuFbJdid4eya4z3SuCvZXxaVnJuklS7eCbL6q8BPcLNaFj9Yhm4QsBAC73QC9+8
	 mheOvCgblyE5ej4TXp9WxWJOkiogrj9/CP/2AnZC1AGLjHBXszbLYuKMxahszv8oPu
	 mPdu0aQRoC7BvgNkNsLlxtK5BTlKUEp4SOeZIRwBIzZG5kq1r0/RA5yn4UUXZ1BLuk
	 P/5ZUpwdymKfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9553CD70DF2
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 20:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176608823358.22280.16539000972781678089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d1e67e120d7c355c224aaecca6d8b8866d63e360630fac29b967fe94c4081d5
Date: Thu, 18 Dec 2025 20:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766088233
