Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43AFA1C5F2C
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 19:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738091154; cv=none; b=rftRT8elxDgGiFUgxMV+HCzXgfPK6MEUcnm8Mmul2odrA2oQFRv0SZkPm53C/Lomc7RgHVlpSfC1pJxeZls6G9jaQ2nNuft1npP/6R0hPDFjJpBw4ekpDwDOZeS0KZ4pPYUIOusD1pH1nJ0mK5A6tcKTWSg/izgv8aIYZZlYGPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738091154; c=relaxed/simple;
	bh=pTYn/9ctvzl+J2bHucYxGieNaoXavoyAue4XrLRBURA=;
	h=To:Subject:From:Message-Id:Date; b=LDUvPVRF+SeEOzL1Pr34j0PebEDQKMnm0cdXBtwywMzCIRFDH3n/tVLA24TFFbU39CXGAmBExBdvvPMABAOAJMYeWqQBwyPdLGy9gXbQpk6ed2/lX6NsKSo8MH75Q0fka4imFlCi0Gu6WDkzz3nDRHMZZI4d8jRIVXWDv31Wm1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kFJigx9v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kFJigx9v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2BE8C4CED3
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 19:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738091153;
	bh=pTYn/9ctvzl+J2bHucYxGieNaoXavoyAue4XrLRBURA=;
	h=To:Subject:From:Date:From;
	b=kFJigx9vls1eBBr/oxBrfjBe47uPvZ92O49ZVEd7zmK6764FGslWyNoXpIspmJXSX
	 Mr20NyGglQqyYB5qcxcEDZDDs3sNHp5YXD9475VAAe7sMtCIBL9XpEaUKsSQz4EVCs
	 t4wAjSBrBGtNdxcLYKLxSrBrgwomEUIscIKEaKonJDox8KNXrkxhwryRiXzo17J0vb
	 39OGNsTjqzqkyR4RYHWWtwm0w5hXSw4sJsFrfCJa/4CTu7euJpHFrz6X+yALe22qgG
	 YjH+DDyANNQfvVWZb4oRoJYfyJbli3UsdODtjIiZ1lssuHozhOGlCT5MLrOBHX3fQ7
	 aHMEF+SeSZhWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C484C0218A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 19:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173809115362.28449.3582701306218661054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 569baaf8a569d4a4663bb0cbc844aa3d861022bb6e661fde603615b915f71f31
Date: Tue, 28 Jan 2025 19:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738091153
