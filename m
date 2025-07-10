Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F0A17404E
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752122395; cv=none; b=MRC6tYy4zhsifkMdotTCQpDzGHSt8yh31b/zRYRLXcrT3AczEZVAvmnDIAcLW98Mlq4eBZeCdjhWrf9D7H0yCPgOoB0havp/Z6UG95jRzkqYJXIO6xpI/qCZto6dvO/zbCM+Yo5CCg3ZYqM+oyWZtjD2TAHw2kaTAPYg5u7jpHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752122395; c=relaxed/simple;
	bh=gNQdDWrxcs2AAeLWvMinbj2iOAh+H7YFqox/kMWTAm0=;
	h=To:Subject:From:Message-Id:Date; b=RsIL9jG3GsFDW8EOUVi/squ8duRI9s7zpq7Tj4Jm45gR2BBQCNLfsgCc2e3dFGqgLB5OqakAC0blfnwxuP7jcMCAb5oGwDUGklB4YYxUB0rN6fVMYWANt5lmpTP3fWU5Mt98CKiMlPLb+uOpM1sbt62j8pOcvqgGjbZgf2MAHCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mmJipkSo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mmJipkSo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D198C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752122393;
	bh=gNQdDWrxcs2AAeLWvMinbj2iOAh+H7YFqox/kMWTAm0=;
	h=To:Subject:From:Date:From;
	b=mmJipkSoOL8TEen31gWSFNe9SGDetLGipvgRBarYv6KdcA8EAOKjm9UbVbEmx35Hj
	 neeGNY5N69O52L/xu5BgXNx3w3goQZ51GFYByscnpDYoX7UoDnz8PCW02GxZUQvVs5
	 +GS253kyM7oQ27HKwSpiqeFXsHxRPStiwMO7f4ufbPH9g79eJKnwLjoeJ75JMTgtoF
	 0a7CE9KuVIB5sqfcWGnY/lFx0qTUr4Wtma8b4EDCiaZbkTrElDCr9ZIZn9KVgWYA4p
	 cIShrugfBLcqmEq9NV7buo/nhCcwz3vjRFrFUbMRGbscfdEU65lgiGcjqCUv2pMqP+
	 bfjz8/DiY1qDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E846C83F1A
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175212239357.21603.17615556244558844017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fbd7c796b8a52378fb2dc8dbf566dca082323ae3628828dd1c29cab5094f93b
Date: Thu, 10 Jul 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752122393
