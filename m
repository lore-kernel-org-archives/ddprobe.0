Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AA0239FD6
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729418754; cv=none; b=CRsTR6q408yP7CFGeuswMWF6haQ8JgaF/H0ab/6vBTm9yHup5BcACAM4z5xgIz5/3G4J/bEEhzhk+GWIl+gs1Pn1m3G786983nojNzALz9DbQ95tlkEN7/gq7ccRDy94eorJVuKw+c0c4UKLmEwe0clj3YZPCMVBLbszugofd2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729418754; c=relaxed/simple;
	bh=+ISTRFt5r88G1lKTsUeIt5k+hXNrhIbzuxdkkcAoluY=;
	h=To:Subject:From:Message-Id:Date; b=cd3jzOjQWrZybHZfUAOzTumR4V0z9fdaZhcStGOllYMLXkQecmBUTr5dEF50VOK67rz1TjC39XemhbU0UC2gjVU/PZzWhY+boVdDzb/CekA3nuTjRoE0Y87eAsw46Nx+8t7KzxNCHX9GyS8xmTXbYWHLTfF0ITlHYfVScQFwh1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ipq5OJXJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ipq5OJXJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF8D5C4CEC6
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729418753;
	bh=+ISTRFt5r88G1lKTsUeIt5k+hXNrhIbzuxdkkcAoluY=;
	h=To:Subject:From:Date:From;
	b=ipq5OJXJP99LkmPGuNcDrkLxllEZNbWUXwJdpYW/EJ6ANR5hWFPxfUCpkCI4tWjA8
	 eVGCxUueayU0UOuoauAifPFXRm6P+BHa3+wjULpY17yYL1XR/Bjeg6YSYLL/j+w2JA
	 U8u0pofKIVVJRfxEL60XnpfpR4Uof5EbT/ViYow6n4EOde8TJNEnKjKvqc4UoA7/QR
	 A8CC57MRx9AXcWNZP3ky7iL8W9wCvH0tfl8QGbn5JnRULpjuvMf91ZGharAhCNeKc0
	 DfNRofdkRK41CCouv01SuaieT0q3DiN4gQ+6xhx9L+Pgpyt2ePoq/iiKWzAs+YwH2/
	 ZI4nZSdVC/Ekw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 985DFD3C927
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172941875360.4999.571674023577265833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8f3302d6b4e06829af612af34dc9cc2260b36d0798d34c8724fbef1a2525a65
Date: Sun, 20 Oct 2024 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729418753
