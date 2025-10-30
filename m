Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2347233EAEF
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761845394; cv=none; b=nwWUmkKwMJ/R3LsduImlEbviRyVOpFTinP2xHNzXSYmx/Ou0bSJ0jd/dzzbTC6hjvgZGqMIu7rEHlLhxyFKx/IsNmMvWu0MfnOZuI+h3vHoT2jjtFUSShNDB3qtvKDBBDdqNZ3HX79tHTp581i2kr5F0817EZX7pbpRUI89wgH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761845394; c=relaxed/simple;
	bh=1DeGSgc53W/Bv2I+ybLrajK27w0s0RXmlqhyuFJmfUU=;
	h=To:Subject:From:Message-Id:Date; b=Cbh7/KX2JAOp8FMxNnF3x4TwF++HyEr6LSJeSalfNJm6NGBJa1wMdqrjsF4vkOd+BncBBU6pvCXaPT1hTlHs6AJHvRpBYiHjscaqF0TxCRrksLgxh6GGIAhYWKu8YY2tdBXRc+QQ3lLSWELsdyU1M3Bf1jmP4odzuHjyGG3LR6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UyA4ZhOj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UyA4ZhOj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4747C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761845393;
	bh=1DeGSgc53W/Bv2I+ybLrajK27w0s0RXmlqhyuFJmfUU=;
	h=To:Subject:From:Date:From;
	b=UyA4ZhOjhu/f3VITXjZnrwBbiJX/uCuuZArYOpqHF10QHWeCTRGF8lIup0U6SNmi6
	 4Aw7/q8iFiGO0xHAh5SriPMlj999UtZEReYRO/ht5p94mzeOvl7toLRJl8gpUHJGZ2
	 Cy57lnvcFaX65fCVEEkUT0hxra7OPHLcYnGMhI/xnkK9qcaPOFUTMSKmt2JJBHLUhF
	 4xTY/Pu1Z6Wa0vSl3rDqSdh41TU/CliwP/LleBUyZTw361QHJEYKf+IjSQKUdDbD4V
	 dSRYjuWCdx2hN09VlOy6Mp9UgK5EGOugosaIUWY2wI5n4LxoZafrzvu/yPeO89uxgU
	 xYVyYTCEFyjnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96476CCF9F8
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176184539360.7825.2175812210933875133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3191d5547fbaf18e6178fe50320fda2e37bfc8a2f24870c390d784124e353156
Date: Thu, 30 Oct 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761845393
