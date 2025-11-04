Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2418E286402
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762237194; cv=none; b=p5lvs8fI4qDhMN/WKNat5AevC4c4ulRXh2lq9mtRb/DGLW0KxYiFybupmebzYlvJ1Oc0mc7FODUcxnblPOPE0VMlLddN/AzWOKCEtXHJhhQiUbr3YXbBMTLiTvgdCJnL6H8od41NHk8golOL6hIxcVR3kt0n54L12A/nZMhREsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762237194; c=relaxed/simple;
	bh=FkXkaL8l24iYLHJIKJWiV4jCXpBcO+EI7PAJ4mCBX1g=;
	h=To:Subject:From:Message-Id:Date; b=flAk/P2iVgwqxxcVyn5LSs8z73k4S6IDXFi6S59Cto0KtIKqcOiv2xo+m5r6LdpEWaHGEX9EL7eCb862YsaUPEaTwxMNXA+tgriZBdkh3/Xb/cDBsRB8873VcjlxGPp6FNQbsQ3FPRAuefbePULpxJFIqDsJJ8qxf0ogOVYv9xs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e9e1mRLN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e9e1mRLN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6559C4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762237193;
	bh=FkXkaL8l24iYLHJIKJWiV4jCXpBcO+EI7PAJ4mCBX1g=;
	h=To:Subject:From:Date:From;
	b=e9e1mRLNX/gtOkDy11gix0vdJncuwq4khOJ7sAC4KfpzN2QBOAKXRaIAgeQbt4yHa
	 aHjChUA5qY2o9+e3uOK08oz3ZyKkl+XmA0EPNrWHUd612ltnWCJXdU+BnKOVyLW0Cs
	 ZJ4LSiueeF0M2kfPDnjAEG1wN4nNgvpbga33glRvnKnIK66hKl7oVZZPrdeaUCNGHo
	 TW7Q1nrc+bwfB6qVTF6m04zBQL7bIzxU9+zT9IcDaQGHlZYXmyuHC7soySrk04Dum+
	 KhkYewSJJQPvU36EfL5ekKIcoCSqy74GPSNcwLb2itJeuCjB8GGtH1zewRO/wD1fm2
	 47u0toaBertaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946E5CCFA00
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176223719359.2966.2425523830638825685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1c861e1df46ccfc84bcd5cf12b47e04745e7bae56c571e42c2c023bd98966b1
Date: Tue, 04 Nov 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762237193
