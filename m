Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D3BF27FB2D
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753357194; cv=none; b=qMWptqxuOCJJib5gHpKXQ0vx+V9cVINAQSUXLMDzsh0dnoWja8XDtbW3Lx3PLxFg+Q2jaVbJ/NkLhwlrKPn8G2QlwHqDHY74QDJtVQzuJB5md0E/ldKXxu4Dpph7JMTSaHc3Ra+g07VSFz6j0hYN1MKLZx93mrv60AayrWiccSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753357194; c=relaxed/simple;
	bh=iNEgbfXXFcMzT+QJsnrhRhwv1YhHVqsaa34z2S40jqA=;
	h=To:Subject:From:Message-Id:Date; b=ZrUZgbblp84lHM83vjKC61FrMwOaA2BixVM9ZvnkB4OyKP5LIMiImEij0f3sjxJ0ZX7ImJZFUpG0LeyK80NrJJANqG9WOct060ivfn1nUlZ6/Ty4ttPOYEaL0bAT74ZhWCQK0J57EFNoTBGB17jby/zYDiUwZ/iSACVST7m2Cfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lFVXTAQu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lFVXTAQu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4558C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753357193;
	bh=iNEgbfXXFcMzT+QJsnrhRhwv1YhHVqsaa34z2S40jqA=;
	h=To:Subject:From:Date:From;
	b=lFVXTAQucJng3dACmCLZ1kCCEWeFud420oXVP1XJrXgQhnd6VBFEG9vnfr55cFHoH
	 rXF7FqeztYeX0lDMmrvqK8p2CWxvMx/yRfrxZtpSM/jI57bBaXVcP3DKY87RQ1Ts28
	 ZWLn5RmsSoFwLpRxhhXJLAj1LZ6bHvA4w3ZIHmr3w9Mi/zKWqRUTLxKsnq1+yi+Tug
	 DKTbiK9BJjmHY9TqxvIRpJcvXhHqu42SaJHqDsvCi9V2W4MZHvjwFQ4Kw53hGCAnRp
	 EwmDNI3j0fTHvlSxwFl8rurCj9XhiuALX+ZxItQGkxleooCMet/YVpr1ESHep0I+tM
	 PMtYkJ3BtogVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0B56C83F26
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175335719364.24896.12657813984794508010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdd7a7f2a0df7e56ebad59c47d3a34cc8b9ee6b7768075fc052d45b638a2dd31
Date: Thu, 24 Jul 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753357193
