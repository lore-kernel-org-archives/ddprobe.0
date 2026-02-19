Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2470F34B18E
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 16:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771517094; cv=none; b=j47ackHODDKnmL7vWVe+2MuQiMvCi0SV1065BrqvGUBDoPpAJfXCM3RVyJnIxuw27DUdDUINa0yWjTUnZQVIAoMEfoXGZHWK0VmVC7fYazzbKzCNYUYalFNnt5tp6ruZ0zBzLicSJ5YSiDmPx7eK6xojoMnIsIuvsnHUpy+Nl1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771517094; c=relaxed/simple;
	bh=eSMlqx/9q/mK62Ziub6ivHyzwHPe3azC9LPeNeMw0Q4=;
	h=To:Subject:From:Message-Id:Date; b=dnVaPEX0H+b7pEYkfX5K8TndgxA9SWBnvx4N3448ByiOM1OhX+Hlp+2NBlqutFpqEtXlCRq3DNrxju1rp77ocWbnuCPGyQMrm+r30iVhH1XxEkpEr2Y/CDy0dO/HqrMwbmmwxGPDRDXmwe0/yEhHRn9SkVI7qoe4LXyEOvCL4dc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eesBpGPu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eesBpGPu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B95FDC116D0
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 16:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771517093;
	bh=eSMlqx/9q/mK62Ziub6ivHyzwHPe3azC9LPeNeMw0Q4=;
	h=To:Subject:From:Date:From;
	b=eesBpGPuju+KjHufdUF0ci4xFePyd+8d8G1or8NPWCltVScgONqcrPHA1aBrqZ7dI
	 GJYazhqhn2BmHOFoExoMNpGxmIbCQdIEvnxv0rslMyO3CpBbhveLIARSq1s2D3Ql+a
	 DDnEIVq60O6zpKQLHdLIwAcyjYUM3eKit4/h6pN2llbX4zAoMy7ADANQT8QqHMQTA9
	 VBO4q5j+PzolRNsQ4wxzkDWVbMNp+nBKOs9+gSpv16s8xOu/RFt72kTm+u0Trc4ZXz
	 cSS5bXnv49vlbrvAm7IDaxF2f8M5PwFNjIJlCmHji8UddPyZmBeOpDL66/zHvaVOQR
	 /Pm8BYMWx+SvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C01EE9A03B
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 16:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177151709361.15174.14385153190220504423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0221ac0af715d3582f00bcefb2d28380c4840f23f2a39c40b58296869c4c5dde
Date: Thu, 19 Feb 2026 16:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771517093
