Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F5DC34EEFD
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 23:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788133234; cv=none; b=u8agbY0OBSlPYl4Q3DKeBl04OdA0F8Zx2aDp9CewgQLB90HKd/GCPdym2ishsRKd8xSiLW2cWZsGJ6wASmMN3nkKuf2z8/MCl+gew2wLIt69uQbKWvZ2zVKwasXSq/zyK+g23xAKjv5nn0xHD/XfFSh88Sta1FUUNZtzfj0mgUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788133234; c=relaxed/simple;
	bh=ABNe+ZzK/724MpjqVGFPMbaw/b8sLKCqVLSlc/3Weyo=;
	h=To:Subject:From:Message-Id:Date; b=QsiTDxpcHJJ4ISRR3rAIgLotsgs/bCxCodxErnwx4coeOXPzS/drw51suqv/n42XjbD/sV/3JL2rABWjoxLi+28gNopXeWD5+kGPRdZi8PkyCjfq20GoMCxiv4JjAMjkgM6xO0JldH8k6GgNV8NEt6my2O538ziOOxISzoGLSXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b0CPCGZ+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b0CPCGZ+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D70F2C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788133233;
	bh=ABNe+ZzK/724MpjqVGFPMbaw/b8sLKCqVLSlc/3Weyo=;
	h=To:Subject:From:Date:From;
	b=b0CPCGZ+ac0fJD9fUsfxUjPu4iymVv1IG5izhpjjZUF4u2DYg+/H406HoPqqdf2ac
	 m/ojK41lhpHE/QghC/+gcNW5HS8HD5J78IT2c8XBVeGTGUv8Ft9zLv4snSHI9ehVVk
	 7ru8QqdVHYSjhzjsufe/gw6UVI46KXe5nrv7YZ6yswuKtCWKIhSJkow0dLNAmVQHlQ
	 vHpb1nDquuoyIsChCxmm0T7YFu5b3Hq6TS5kMGO3lCBvcEKeUivr/5bEMqrnu2s3oR
	 5IF5mxOkkWAOPqAP6FgrjPOAJrlkroq3bRVPmCoNAomJaRF/pV08SP0NrcpwOjUDla
	 cA7fVHZYRf42w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE989C61DD9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178813323369.2472.3750758639619028172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6aa25a75b6e99111994ded0a6ee63e27e511cc78cb47f79f4e7cc7fab79842b6
Date: Sun, 30 Aug 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788133233
