Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2787118AFD
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763097594; cv=none; b=giupbJxFAJ6B5x9wuecx5oFmNVrhr2+MfeUxN5MPWFBXQFuUFYs/VGxz0Vp4UL/qiS6pSCK/1ubJSclF/eeSqXrAPVlXwSjVA7Jl7IvbTvjm2bordjnlHF0fIlmn3YtzKcOZyWh5VMvZv5L8d8vblP0cYQJwLYrDNT1D4XXqsdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763097594; c=relaxed/simple;
	bh=fU0AP3Zx2BZiHcZDuPWP0fQJer70VrTuSDQVpbSMbUY=;
	h=To:Subject:From:Message-Id:Date; b=YGxg9QESNHvqDCBd3B/9mHojZztkIiV7LWgULOq1sPyONJQqKs5j9jxmTSNeTCW0XV42nmicDB2JbRbED8e7fuNommjJZhuSwwD/t6kvAXbXl180EBQzLrMuaBzMyUDXGaJyCv9uIzpeqRYXJ2GIwbmhwCuy8+VoKEVA1gNyluA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dyDXDOFe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dyDXDOFe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F7E8C113D0
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763097593;
	bh=fU0AP3Zx2BZiHcZDuPWP0fQJer70VrTuSDQVpbSMbUY=;
	h=To:Subject:From:Date:From;
	b=dyDXDOFeDpSlMfsdaETv962ZnRbAkAP8aYzMFrHv47fetW78C2K2VD1feXjTtUCD+
	 PXHf95sTR1r315jsNcqJEJUiZ/HJiilVW8CshwsdgVPGhlrneLKiO6IIWH9D5dFZQO
	 uGii/U2WLo96JK+qaxJKh9DDl2xIWKYugMDum76FYe/vLVVx9crMNDhQ4tiZ7jcG0v
	 vzFIv617yhPN+XVFAtLDAsBJmC+WSjGW9lIZo8jdUQNoBc9DE7uaCOcYk46qr2bNj/
	 FjG6PMEL3cY/hbzVXohUkWRoAsLSHN+vbn8JXbSDoNCNMjNX88e/jfIJY2CHrxOl96
	 sHhtWrCc7cMLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9382CCDE001
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176309759358.10598.1582225008438019786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d186fde608041e3350cba6e2f2de92b80b477120c2d5f146e88768f69e69f08d
Date: Fri, 14 Nov 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763097593
