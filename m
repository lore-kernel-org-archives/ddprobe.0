Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C84D2BEC2B
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 10:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787481034; cv=none; b=lUY8Kze9Le4gnxqh04v85B2JljsnX8W8XJoEdjaOb5E9j3TBtLF8UtR76jWycvZ8ftoRRvPKSq8N9nCGncr9KGkWwC/MRWD0ZihQCNU4DMp4f5cpVviDLumgz62uOoV8kV1w4tjOUZAkKUHYd1revQoSO9CJ1ve5tdDPfeSPcHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787481034; c=relaxed/simple;
	bh=+ZmuEPyBwyrb0EQc0xayhbaiXR23SWPhxNoxsHLlwoI=;
	h=To:Subject:From:Message-Id:Date; b=HFTZCvbs58Ia7d8o1IcUGxceXE0WwFaZKemqnLNZHuWMXdSNogkh01ARgNFZJlGK/QUKa3GyyFHiVOp/Yvldd2mHwXAMh2VaGKhBRTq1uta6XMJoN9GYscU8dWtuf0mJ4yb8NuxsYcDhtsKjmLWv7hsDTW0ye1S8KFd5vt1KE8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pHM9+fm8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pHM9+fm8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D10ABC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787481033;
	bh=+ZmuEPyBwyrb0EQc0xayhbaiXR23SWPhxNoxsHLlwoI=;
	h=To:Subject:From:Date:From;
	b=pHM9+fm8vGEU18w7Z3LG6L9aSATU08piRZ/db90cWngan4seC7iBUS8ampupTLFp0
	 fYwcY1q0fX/XBoT5hy+jTb+zwY+GOgS7WXZ3DfY6UmBlVINo177Ule/aZfPlw6Opmb
	 4ARrvbpZBh8cXOuCF6M5otA3Af1bihFtszHuFp2/c4T8VTTUvHj73PU/KjWs4QRZcK
	 +GLVHodb1t9+yfWIzRmSytBUJYooTu8PTKkolmBUsXDxU1jR3NWI8xja8ECCSpAUia
	 YxYTBRFhMxrcvjNr86eMgCaG8LWgeXNuAJuZntuXYPwPG6ZLU+Ug7iKqodALx73Cwg
	 9ilnMet/JQL+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACCE7C5DF8C
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178748103369.13343.14280460630047535865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce2d7879c1d19a08de48f1367668ed9229e73534b0fb4a872b316ceefab6e3c0
Date: Sun, 23 Aug 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787481033
