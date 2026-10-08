Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AEAB4CC28A
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 15:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791474034; cv=none; b=Da+HXt1o843+4TNjsxJD3EzNFwbkHSNj9+ZqFZOvTWlvCViKGnqFE31HEMnNH2IGwdXBmaap70vsaHPlRMceQzjiUJBjgpDp2K6OuheNM/dKnBw+f4+iIHFBmC3ObttyF3ioUCgCEPxBsqBcNl4BRR62SGEQP1FPhcO2sOR5ShY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791474034; c=relaxed/simple;
	bh=zpd2EGtOJMXzePKrGlO1RClN08yK6/S6s19YzOL2Ml4=;
	h=To:Subject:From:Message-Id:Date; b=B3iSSwouUKzh5ZmBRjR5k9eQKTW14l7cva53LZ+TVvueY7sKjKiLd2or2QYg60q7LmRae/hin9W1nDJhE9udUOStBzKqoWiIGm2SgV65iKD1G29OeTthxhRkdo6xlNkBl50z2x+qxBWZ8jVXmaxJWrMefz+bJCtMc3lLi4lAY6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MnjDUAgg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MnjDUAgg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEEDBC2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791474033;
	bh=zpd2EGtOJMXzePKrGlO1RClN08yK6/S6s19YzOL2Ml4=;
	h=To:Subject:From:Date:From;
	b=MnjDUAggZxuZcIz3/rxRiMTz9OPmzsb96CHQ9ZUSMUL9fmqdenWHRA9PS4xqpbU6H
	 6iSMx2c2+9qDN8XZPmNsiQ4LpPXMVzYFAOC0Jg3misQdsL14Tiiktu+MyNyomCJtG4
	 vUtqndBoIhXWzXB4bYPOHZzQHPqacEmCFY6dRcjpaJfgzFEqn2X70uuvOlVrFh+YwI
	 s8Bc6fTV9h4jNQMdcwKWdrcPNkPC/I4h9WblVchvCaVIrAdzA4DDKinvuMm9LwMN1X
	 MnS6uai4JB/gSwY5G6mhb84Np/z2SAv5bLk1T8yacYFb5t/7MGwdweUMJNXXwa008l
	 4IlM4GR8Un9wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7A2ACA600C
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179147403368.26968.6540197543245197007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4ff53d0f14fa755755f1291051fbbf155198a78d98e23d42ffc7b105e42cd12
Date: Thu, 08 Oct 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791474033
