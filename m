Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36F5F28FA9A
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 22:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765750974; cv=none; b=jJtffoClbQvruFQWxXDOKSEQIyJqqRiOL1E7fqDYh5PtEFfcQw6f5ld1YhEUsgnBPHuQd5bAhHgE6xkOlq0g/23Zsh7LorZs66aE4ktCgod1+++dX/mqochg5Syw9FIKdFviSltmpc5yfcaoDz8SPmc9NTEB9VylBgvnESM8VbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765750974; c=relaxed/simple;
	bh=yRKMdegKc3gGcs+vAeLJ2CqzYc78k7MMGNA/WkVwDEA=;
	h=To:Subject:From:Message-Id:Date; b=Vh7h0JWekePX7sDe47+jcKe+ZvIxFJ19Z1b2K6u+6q8DEboIWfA5M57X8iCeGxQPjrUH/Zwzpvg9RlMyDRuLfCjiZlVv9bR/iNuDDePP3ktQpBT38nBy5xzwtL1+NPns5VBRXfYxWzItRkAvYnHNH2TSr7SZxRYvbmpaluhPIG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fWTK1c1h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fWTK1c1h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B00E2C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 22:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765750973;
	bh=yRKMdegKc3gGcs+vAeLJ2CqzYc78k7MMGNA/WkVwDEA=;
	h=To:Subject:From:Date:From;
	b=fWTK1c1h76su2BGG26T1DRITPnBW1Di5FZyo8BIIY29jHLWMaQG/Ip0Z+tf7iiDy9
	 LSTKkKL2LawrJ8idD/5nvzGNrblqL4Vis20ijpH13SB5UqGj0HH7UN7qaY0ibMV/wI
	 UvoHhBf7E28XSNerv5W3Y8p4vx0e8JrzDiQH88uWDvi7YlXo/O+GYiUFQ3c91XUCR6
	 TkRDfsJmN6prwGPFg+najecSeiwpfakueKG0HPC34wE+tAVvhgzbsER7UDivlPTwpW
	 538roLcT3lFjgSB3P1VirzGz/NqxTtZ+ekelPetxK4+puW+QXKbXap56q/FaZjgHWp
	 VSyGiuS3Oe9ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B0FED59D99
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 22:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176575097360.5779.15493965554802400030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b289fd079b59cc221d78616498a299c5b690e25594903c3fa1d5e18f5ed0b9f
Date: Sun, 14 Dec 2025 22:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765750973
