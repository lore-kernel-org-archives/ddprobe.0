Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 512A81DF246
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746917994; cv=none; b=I0MxdXWrh0Mt1xk/9Kq5I/GZ+zAMMVDAqogKd712uLyGDU0MiLV1O9/x3AVqcL61gQnbjE08NhI6P/FqWRlTDP+KIfU5kvNEyptsHJ6dYaBZX5WsAtn4xCwPKtH/hWw4ZJzV0uR5yd0PrzetHAd8aTIjeDUZTl4iYZuZR8MG4Y4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746917994; c=relaxed/simple;
	bh=ghOXepOfGEFXWSy7H6RACT56Zc08bzyC6wqQCT7Yw50=;
	h=To:Subject:From:Message-Id:Date; b=Zb8teIVJHCWwFBLOBxTi1VkB2ZXlCLIp9m2b75H3a+x9ApAvgHOQ37xI3g9GmCkLoOkgGvGuDzcSHY31sTu1WAw0wdnZi5afcwAD8S6CNF8bV0XE/rutorFziLroaNLqZsmlsBSxzxzQh0rGNgWC9PFW2+7yU9EFOzQLCelGvQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gtdg50H1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gtdg50H1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5626C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746917993;
	bh=ghOXepOfGEFXWSy7H6RACT56Zc08bzyC6wqQCT7Yw50=;
	h=To:Subject:From:Date:From;
	b=gtdg50H1C58QbAys8UuRs4j7trAFv4n0K0e+9m9XTMK+391HeofIOW4mbOySk6IQc
	 2qy25OUm3i39oThl3JqL6n4Q24Z6D3GcSvToeAL8zpDeX5SIXHk11giSyEZd++2VfS
	 fzcZjaVe6UBThPSsUrlOQl1+KsI3eEXtfsx8fotTmJWIGUpWOTz+hD4aCwjNXIWNL+
	 RL9iAnsZZsyo7tj/vFJMtzB1eLkgZlcc3iSb/I+bNyYvqCGk59hcXahYwkMcqOrMBH
	 1Kgq9q7Kb7reEKLMyC7n9+Oh644Y+Kya5m27NGvX3w+XjNiHo6F1mKXlKTFRsZv8uV
	 r8L5eXb+KybXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9044AC3ABC3
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174691799357.10396.16685856865652179619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcacc4764413dd0d5754587b4d686e8da70d4fd543fbed4b0c212b1b4f71e66b
Date: Sat, 10 May 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746917993
