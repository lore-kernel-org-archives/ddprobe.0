Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C74972DA744
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762157993; cv=none; b=qK1kT+r1H+9gBoifzj94f7DHRQdmptoqRObAvm3QahttDEKqE1aP1jscll7ixsvCx2RhCE0KK2J+7A9QtkjxaJgGNC1PnyF12AaKpv+aUXJ5ITfNFDFDv0cvhlJJLMc/4gJ36QG4p4BacdBMEAKgXpjhKXppI+q6SMvq2F29WDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762157993; c=relaxed/simple;
	bh=fxe6ePYQb+vNsvASlQru6TfV1DrVsrnLsLn52Y7GrrY=;
	h=To:Subject:From:Message-Id:Date; b=k6WMIi5fDnvZEIavnIF/wiwRC2m1Nz8MIURzjvwLdZ8G3vc/gY6EswDPbYK0gWvCmrqDtylo102mfjicoCC9yvNQzZei2ZIpD+TRktWD2Evf7gona7l+De14IGyB3CXMfORJFxa2q25qBSTlR7yKGcksCGTV4BVnZmgs6eSoiIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hS/CpSto; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hS/CpSto"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B85C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762157993;
	bh=fxe6ePYQb+vNsvASlQru6TfV1DrVsrnLsLn52Y7GrrY=;
	h=To:Subject:From:Date:From;
	b=hS/CpStoJjWjFGR9AMOi4WlvGGtDB5lUjUt3aVMv7mF/m4KY7xjJyUT7+bV23bcYT
	 Uz86w8LT1GqlGOqHhuljrECxx0ipt5/XKBcWw8pMWsZVEwytVPgY9EHxZmOt53BGVd
	 dtebqHWISBa5socTZBDftGTY95OuCUifNOeXDbT1iCQxdJ9xOymy1vqdmdZGWCfPNL
	 HpyV/QlowyU2APXVPsZpcwYZSejMGW/r7AYscAG2JHa5Y1CEMZ9cBGv1H+Pk/J/9PT
	 QR/2M0+mcN9Qs8Foois3SWt5jZGRAnZbvmXHjHRksepLAwMbkrHQ+OC+G/pushLYWJ
	 ZDD7vdSq72nvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934EACCF9FE
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176215799359.29904.416225858565161863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7155f81efbe4148b93d688b1e8306e8e101506811c4578d43fff5485ec4bba94
Date: Mon, 03 Nov 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762157993
