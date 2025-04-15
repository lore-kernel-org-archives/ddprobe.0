Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53AD81C5F13
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744707594; cv=none; b=PARGy3K1DGlmegOtmpGqS78damzCBuUAm0zrXSfDizAtdrSxA5IMqz7RPqiOzJ9VtC3GV9cxgxFzbk6T/cnPvQM//5SEckppvPDYSBRFc2hCw2aPIpjul0rhyC5BTL0awTKRx+yH5WA/Pi2KnsS4xDkoPWWrz0OGMjAFKk42uIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744707594; c=relaxed/simple;
	bh=dGmjW09i3qN1JnFrxIJ2nUktjMswlpUgGdRQSRbrq94=;
	h=To:Subject:From:Message-Id:Date; b=olamy6QupF40OPWJIlp0HWywPmMHayTfeKjRLcRBoccMAS9U8WIA1Mj+tOEt+xiqRr8XHQub5PdWqxojVd/MAhaDKKj4QNjrSvdBCEI2yz/PuJR+a6o/nGpyJUApeASP179pLrCiTkFTnLDNZZcRUEaqa5iJtjEXMMjzFxuyu4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XP0P8TRk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XP0P8TRk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1740C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744707593;
	bh=dGmjW09i3qN1JnFrxIJ2nUktjMswlpUgGdRQSRbrq94=;
	h=To:Subject:From:Date:From;
	b=XP0P8TRkoUeZ/InFpwRVbsAc/kVEVcfCGzf4DOKCI8erH7Uywciz5NKLiK4u7s1YC
	 BnDnOnZiX4EboHJgskSdNLJ/q9Q8BgHF7nJRWaFQ7R8RpyN4z6bRNI/uNxU8xgfvG2
	 4a1tj4p1kYahh8wYj3kQZ93ieI8phaeBFEu/AhaFb8/glu9UTdnsm0jFM6HwHB6q2T
	 8YksCGVLe4JgaNr7WiA0mdTCT9QU/B2IqXPyQ+21jGHf/pcP5YYSUbOjPgpY0T51sH
	 rfp+XV7M/hEQvKF2jcAzewtYrx5aW30O0q7dqn1TPaeL3xQ0qNkPniNw/tsjCHtQ1e
	 rFWopiObc987Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B903C369AB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174470759362.31061.16316886751456528890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e31034b60b727a0a5ef2112617b8cacf7d444ac3f9e81c8124894a08e6434ccb
Date: Tue, 15 Apr 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744707593
