Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1421D2E6CB2
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762161594; cv=none; b=qoHNeAHAPh50lLMxQm5jTzbgeBFAH8+AGkkg0jVbDUGoVNJDUToMxkySBO+PwkVMCWu9z9rz1tsdmlf2WF+gCMOtVbq+7yE/aPcN0M1sOa9nWqbrJrxxcp4r98xbVnH1xuwF/g8mgkP+Ik4vIC9XPdmMjWTplTlYHkdm1jBfZYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762161594; c=relaxed/simple;
	bh=1Ua8xryuteXXEWg4RiW/nebX+hhJackUJ6LC+e+T6pU=;
	h=To:Subject:From:Message-Id:Date; b=cGoiDE3fEAm84zJnv/Lj/BdNDe7wDY1r11k79r5S9fThSzJGXThoPJmXJGSZyZBzFJ8jjvMd0jdnbgw6U+gdevjVzAq0tolznmy8K9yiRVcdPv1xn3zve9PnYAZQ9s3Cc/zxFwvas8S/wYdnQuv6TtTVS8bVnvPfZ5ahcCkGRMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DmtTnlPT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DmtTnlPT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A2DC4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762161593;
	bh=1Ua8xryuteXXEWg4RiW/nebX+hhJackUJ6LC+e+T6pU=;
	h=To:Subject:From:Date:From;
	b=DmtTnlPTaCUufXvg+mJsYG8XQpOK+cIxB1R3VMKocbcRiCAlMpS7tLlxct5ROeCIS
	 3b7EQJywYKogVIgV0vDuc50om+o0qBAh6lWdVw0HK8mO7RcZpZiRGElAvlU/RWjMk1
	 L9v/zj2RtwoX6e4H45lZoeHk6I4mEmgpMFmgcBFwZ7ouXxWrUQa4k/9/Ja3Aw4bFhV
	 he3/2yCOmIaqKMnev67ng42XejYTinD0rQcbRALq0uJ2WDHrNJWA+LUcck5pawEq07
	 5p6ApB6KpkXcOBL/kbg11yYJTY/ji0oiom7xtFPXQQfOR/sWHYIrsVyx4Q/0PQDU3b
	 VazQUn9w0XaIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92470CCFA03
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176216159358.28105.8955751850940704944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4dbb0a4c107fe8d6f15eedab022cc3df07574017cf8f4f6bf49a6a790b6ce89b
Date: Mon, 03 Nov 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762161593
