Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34B0C30EF7C
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 16:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775408134; cv=none; b=rFjndMEyLCUpkxkrWlqa0j5ncJci/IB1qxVBDtzHpaWsKKrPZZmU1BY5AbG+eb33mmet5pPczpxnF6XYJUR2XWbyA+DEy632XJI/ZdhqlniZ1SVGUsUzI7TigddAn3aagQu7Uls6k+NJQQSPAtQigzfVHJFD7JS4ZtEaIPt2QGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775408134; c=relaxed/simple;
	bh=LFIJJ0tHmlBGNFiXIr3lfJ46YpNbdZB6duPrsDiCO+4=;
	h=To:Subject:From:Message-Id:Date; b=Bh3d8yVD3tfRdKvoh54m+yagCGxkkA5EzV054J9rNnoJq3Z6HRfDtCCYrcB44jx6vzA1cMFRBFna0RmTEmOqU+Zr4prWwlTrnl8TU5caxBxUMQUpn7Km4TtPmCzHSDSVzxf6zz94z5/dLCWSH271GrYGiRCyVrkWk63wnVThHIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EYxGoAlR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EYxGoAlR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4B1EC116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 16:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775408133;
	bh=LFIJJ0tHmlBGNFiXIr3lfJ46YpNbdZB6duPrsDiCO+4=;
	h=To:Subject:From:Date:From;
	b=EYxGoAlRX0M9fJi3/MSMGdYclY9VePHkM1q7oSUN81Gv0HIx/EWLSY26mPes57w5m
	 0hpl2crKEby4bTxieZGSDMDU79Kbud8Z7xGRdfByib1Fm/RIsD8NvvP+ppNrJr+q5Y
	 JGUiXUnpPU809T9H14a+ysByKrWR9VPKdt6sFxhU/RzwkKrLB+G0Qg3Yf/Z5jsa/76
	 J9cJNABdwKgIRV5w9k8RHFgprIW7VtFaK+3BJBniU9Q9Z8b70Am0jEFPbo2R8qOShD
	 0alEFV9zCjc0k9GC4XpMVHDZKNbLCvYK6w5NvLXg9jyMIofFG3IjSiDHyhLD1X4KSL
	 ovKNqFb5+ejBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0B03E9D812
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 16:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177540813368.13606.11540316134817312020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d025b60c462c45051d0f1b4bf3dc35d2331f7d08438a59367f37f086d567371c
Date: Sun, 05 Apr 2026 16:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775408133
