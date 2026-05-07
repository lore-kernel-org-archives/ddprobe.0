Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 375482DB788
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 12:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778156854; cv=none; b=HOt9aHYsJMnv/pFLN2fr8adBYj/lHrwVVS6LmGYpf5vHiVh1XnlqmSBtfr7P0s/1ll1VpgRA4vPkPkSopy52TNqH0ITTMr0dbufVKPl+ss1aMr4HNrkGd6kkwFJ9KI/H1yzNXrmS33RnvnMavc4OCreFUAhHqetF6WSJeyWnQYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778156854; c=relaxed/simple;
	bh=o1CVDL2TqKelwSQJ8vQ837GR8UI2gL3y4OIjBNDMgz8=;
	h=To:Subject:From:Message-Id:Date; b=GDbSv4i7VYT1Ax0OAgZac8jkhlyyefLwUeNJN6TVQOKEMBntCVjfo0HxQEmdB5eAJUajkBTu/c+XML/CUbeK7s+mZXWXL4yvuBll7YyhHMmYMQUwixylPKp3jiw7kh9qrbuJC/VLCo60+10N1nSN/wwIRTG/Y6Bb286N/IxlPI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I0RIBlPn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I0RIBlPn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD908C2BCB2
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 12:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778156853;
	bh=o1CVDL2TqKelwSQJ8vQ837GR8UI2gL3y4OIjBNDMgz8=;
	h=To:Subject:From:Date:From;
	b=I0RIBlPnKeKVx3jIhOADLxgKh8V4Pee1CLBQfnoV3Z/Vu3BhtjMUwWu+oVyaMg/Ao
	 rOMmm0q3K6XJHnQ+oS5unvv6e+eqgIKlV7JvGLLPy1eRjx9VUmBfhBuBigb6asQ0kG
	 WqCevn3Ii1ndOGmctxSNOzEc1UC0aDqdw13jglOHy5z/bFqk53ZUNb37Os0yBCK2BB
	 HS1Q0EIwpO0TDxsW96WvDOXJmb7R+mmfk1L3v5NZEzhvrSKHhawnZaSrHWTRnE+Dv4
	 efDSwWtNN7TzSCYLiwl8WwaCRTZ0pI8GJwO3Oa045vHiG4XT/w36autgcKmnLvm2tj
	 78uEZLM45KMgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9ACCD3427
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 12:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177815685369.3440.5669763860106610863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6b1c292fa692ae18cd3950543da6b61ef30e697eb74d64c7146e114239b235b
Date: Thu, 07 May 2026 12:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778156853
