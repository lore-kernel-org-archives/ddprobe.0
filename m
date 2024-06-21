Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CF6EAD4E
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 04:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718943143; cv=none; b=aZHpCPeB6SKQ+OzOQKk1Fl/YnFtgXSZSr0batM3fhyra1e5SgnYZUn+ZeNB+j4g1dNmHRN2ATsLCy45rCVMFH9tPpJl3asIzL8tDXDisbHCIoWt6HSblNBJHKfH/I1jLhk2eqncrfvx+Myy9YT06jjwN+KY6+f1ux5Bp4J0lbCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718943143; c=relaxed/simple;
	bh=2w81VnhOhl4pE4s+b43/gX/IF68OD4FG7wXrag0PfA8=;
	h=To:Subject:From:Message-Id:Date; b=mk66nAc0boSlrHSj6QsqR0ythchHpvab8vBkRekZp9aXzGlofbiESL22KE/3YFzB92QA0YaAtMEF1iZKzZiPivcnHuxgsymxQReiwD9NzhHr/KXfxpui1G3/r6R3JQPwM3e4sOCaDLsV/P9rhqyVzrdDWHYUwpMbm0BOz3zbjk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lnA5l03P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lnA5l03P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF9B5C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 04:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718943142;
	bh=2w81VnhOhl4pE4s+b43/gX/IF68OD4FG7wXrag0PfA8=;
	h=To:Subject:From:Date:From;
	b=lnA5l03PVnlPs73OohITKgzTre60tVAoe2i0D8+QoVtVzKiN0kYQtFvFahh4Gbsgl
	 ga3RKGNNy95C+1stjeiRMSLrjjpVV5cRSiB7E1SICvQVbd8KCsDXBGg6gVH60roOpH
	 S5hSXhW4j8dHfLfPRp2Q8i21dFv5O/p1gQsBCArIomMKMnva+BywwDJwz7UY1Wmcm3
	 vjTJLPCNAIlZZeQRB9MONlr6h9l873XmyvI5Uz6UAahvKC1oTFTAZ4kW4Ud0ak9pOu
	 loDFmqxuob+yYFwAuzyc18f23XNPIHkt3SLJ4EBm3wyDZtCUZQUIliki6rSDNS7xHX
	 p0PzidxnkINCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C702DC27C4F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 04:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171894314280.31204.12565866990507881695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 229064ebdfb418ade4c69e1c84fce1bb5ce3250daabc3f950f0125bd76a98fd9
Date: Fri, 21 Jun 2024 04:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718943142
