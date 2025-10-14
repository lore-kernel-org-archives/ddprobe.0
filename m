Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36DD1306B1A
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760424594; cv=none; b=o+dVxD6gcO8oWTCOEp73hOIMm05knyxL6KzUKsAKJjZZVka7igcSLS/V4Zt4GRyPBlWFoC4/WdqgjTt2C+S2ANgxR5X+Z9yOQBPORgc73+TtHwAamtK1WCa4wu7/3kFWUfPUeMImnXxF2zmc27S8/qoLV50t+WpchGQb/EKbQ7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760424594; c=relaxed/simple;
	bh=Bcma6nFoHFO+5HurQrl7cP8Y4zwvLLGaMw4kVridL4Y=;
	h=To:Subject:From:Message-Id:Date; b=SBCgsBBYtpTPw16CF1xv9X+XvSfypeio9q9w9603sUIG0NjvxsC3RAWbwbF3qPEnhwDlNrXanNDBKOlgJaF8QQ2YQho5aSQIKvRezLXzyZiFJhCIoU3BoW2NGFrFQp7l/VftYsYk5RlnTXpJiAwrvLg8wMJNCqWA6elqj2xKDBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bud6J++S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bud6J++S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2897C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760424593;
	bh=Bcma6nFoHFO+5HurQrl7cP8Y4zwvLLGaMw4kVridL4Y=;
	h=To:Subject:From:Date:From;
	b=Bud6J++SNayv7QUUkXKR1R1l/USicsNU9Nv1owNb4jS9F9kioaocd5Nn07YyixGzH
	 B+6/AU45qkYlEbDNL/3gLg1mqho2zlEfzv1xOIPrBDcqUBYR133dgazasLHLGPTLUX
	 N2w9LylExZ8y03YfLbGuWQuFnFK29QEscX5TvsREEDSSnvN8t/TPMAXxk0Z3lYNsZ4
	 RY1bRTH/PuFyFG24Ug5Uoq0gwaYdIL2+gXd5O3u7f0Mv0s7RJ1XOgkw4sM9Klc66sa
	 QLUtj7fE7KQnn+b5/MB8oemL9oVHux/zJEf2DaZVTW8m9QG94MEYr+/2tkSFGS1XyJ
	 SeizWrotTXQLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FED0CCD193
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176042459358.10635.14490887285904826517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbcba4c1bf380fee12e0fb970440aa5153d3f3b2cfb1ee20be85aa71c176c15e
Date: Tue, 14 Oct 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760424593
