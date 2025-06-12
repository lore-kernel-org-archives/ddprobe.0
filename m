Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17E40248F50
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749748794; cv=none; b=lkh9c3fVJnOP9bd/pvCMqhPwG8sJeYDy38P0G93FDbuIwqvw44Z31UTX6Zah+C9V6j3qPYZJcIlbxhaEW5DWbzAQOKp2dsHk4cASj2AMfvvGfmD8bX20nTdJn5/XU1B8R/4ixjM7TXh389VDft4k6vWgiX/JdeN8X7UZouF+O3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749748794; c=relaxed/simple;
	bh=AGjtEMSMp/ljQxExLyMM/YUPvMZCVL4lN8hRLP4agTw=;
	h=To:Subject:From:Message-Id:Date; b=Kte/wVrlt1VnT1mv3IPPd8ggYCr0gs4oKIApljq6bnrnLHYnuWqqB6GHPGzegiiRCKpHmJgsuSkkHGwIqIOXKLwMVej3f0pIyIK+Xkv6BYEOWk6wpXwh6FKjYu4HE4czUddB6zS4Dh+9r/IJuRYjHZyWluTBMcZLqWnSBY2prZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NFVwZ3kT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NFVwZ3kT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0913C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749748793;
	bh=AGjtEMSMp/ljQxExLyMM/YUPvMZCVL4lN8hRLP4agTw=;
	h=To:Subject:From:Date:From;
	b=NFVwZ3kTqqEZVjLSOXx3OUQvAEI/Z6QubTceY7g+fZ34lCLLEe2T/9YC+O6sg4Ldh
	 bgHWRZCxA9lwjoj0OYO1wVzRIFK8+lLiQTuy4bExwyx/mWG1waQRxJBiLRWX3AvWNj
	 vBJrCu6feHnX0dF0lvuy5qwHSpvw2XGU3Y5wN+Kfa3p6Tv4A8IfrBPipLmlsdld4VA
	 gSGVEYaTizaYqsRNtLPHNrESid3Q0zQb1P2Bd1X6cIRY3QJM+OMJ/GXC/SFuC+C/x6
	 k0Aw6GA/xQjHMSRXDCiGruK8nvqxUMJLbxwT4R/QCWFW2HvGdoxjhhMx0HmjMq41xw
	 xqCpsG8ps+QNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F26DC61CE8
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174974879357.4775.15564976054909409276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba15a4e822d943ff7490f3d8fe16ce74d1776f46e54ab20a1d8f428a9db2d09d
Date: Thu, 12 Jun 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749748793
