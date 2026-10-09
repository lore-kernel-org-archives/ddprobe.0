Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CDDB4A013C
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 10:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791540034; cv=none; b=kEqXyLiBLYFvkBxxufRnSVhQEzeqA6/TrExLDNVUEOkV/K4LihsZu0HXYl8OCfQYt5+eeGMs9LDkDM5dWLvvtbfSoAcYUuLcInGQ+dJHRWYAnF8U5/wdlBtuFmm9ncNPHB6qt9uRnRNq0iAdzfRPTfHnaw0qlWRA/fXIJCxLqO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791540034; c=relaxed/simple;
	bh=xRvlNPdqWaRZwHUBITXL+vcGvDbaal/8xLOGERNGh+s=;
	h=To:Subject:From:Message-Id:Date; b=iBf5goG24thu29LsXO1RrKqlZr0ssZxvdwRpoTcQN/UIBYgWOZK2j4aMeCgnNXFnT9nIRGW/LwYQWms4GFjvCsptLfAHEGbJnRrOnsFGBcKq8knJo152KZB6nspNuGLXugIKfglzF6tXm3x6domCl4PKjHPEiUYc3cVIPb9onxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LeyBoVHU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LeyBoVHU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4A61C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791540033;
	bh=xRvlNPdqWaRZwHUBITXL+vcGvDbaal/8xLOGERNGh+s=;
	h=To:Subject:From:Date:From;
	b=LeyBoVHUwChbVJLVMOi0G5T/hwDVS/ZL14gDotCzyWvlsm2Rg+nX6lyVAclPv8gpG
	 aUJsZuYXC+LLbtFIzeGpkSyRwyS0vyDNRzNMamaf8afskehpou4wphu/kmsI18k2ho
	 k9aEWPQhTYP0IKa46mRZpGUeHIU8GvfsG8+jS0xiuJPIaoZXWRHy8afHA0BAwAau05
	 9jETD5S27VQNtyzdayogXWIq6KC3GjZCTPymk1RLpzeX5ooEBaE6FXHoJX49aIfpnA
	 vH9AqslgcrYxvKxVmyJb8esh8uAo84Be5riGBmOuQj71lPitd3XtyEI/wQk3kpb/6m
	 CwRAqM+PZdcHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0C8BCA6012
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179154003368.8079.10143040888304825005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e5500a603bd3e2a65140e4c63b9e60fc13e6eab669ccc4ec79b7333882b5344
Date: Fri, 09 Oct 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791540033
