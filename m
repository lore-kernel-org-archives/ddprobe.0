Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46B2014D6E1
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 05:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737609954; cv=none; b=OtXElPR+5D4yb6pB6YhGAYaMxwO8qc06ZgmkA6ci5kLpY3atILWaiExo1u4RtqDy5blcm+j6Vxb271L6mWWWCQkpfaR38UK3Sb1svrhT7lox9FizTAW0Aw2OXMIMj8g6KhLdUx0QgWy3rRhCXoLAydDpM1hNNoRQpsx4z/7B5/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737609954; c=relaxed/simple;
	bh=I7yRKRZjbgg/hYbdcsC/G9pYupixdLVWblXMs8wqhbk=;
	h=To:Subject:From:Message-Id:Date; b=lKYSXmTZ+tMP9WOAEBm6cZBpSkZF7pA7OXazrC44Q2KSrGiSv1a1ByGjTSHqq+PPNcJPIHOZrJv5ED7gGxT89YQrjHFXC4yKvBltz9dKV3dxZp60W0ES/Y0gNEBAU09u0Ph11xKrvfMvtwPKiRvXaVOR/0kBcGvtoyjfq20Ncbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SMiX0MIm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SMiX0MIm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DBEC4CED3
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 05:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737609953;
	bh=I7yRKRZjbgg/hYbdcsC/G9pYupixdLVWblXMs8wqhbk=;
	h=To:Subject:From:Date:From;
	b=SMiX0MImFuQYl0Nc5MTQE/5YpdK+NfLIYmKavggcwEOCZ0I7ctnLNpAJf1OoTZ8n2
	 nN9jfZRmvqtvEVtRZ+8GcvLB+lwBMxM+BtH4Pnfv776gpJXEb7t2MYXJ9J3m+G4zN9
	 4YDYOrbPdoqs94fHdgQO3FUuIzFFXnc4YkMIpDvJ/4PMKFogT8FCADZT3Vgo3jC2mk
	 tHax6in35gHrIiFb5SaeSuXj5uDWzGheqd/i+ojMdUjr34igOpnCAoKkyxhseLuPML
	 QNEjKhStNz2VTq/V8a7rVnBrqco6X0XnLl8vveuB/ySy4Dph9+flyvSwvfjAhL1VgF
	 hanl7C1hRRhWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9151AC02182
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 05:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173760995358.28218.11068202751985724688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2ce1aa8607c794bee9263711b39d4d373040aa0ab9c866691cbb0b770ca626a
Date: Thu, 23 Jan 2025 05:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737609953
