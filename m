Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 254B2331A44
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 18:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781635594; cv=none; b=UeFQ+8FNOsp/xRNP0qUuNtEi9gL5evzaAphrtIT9WUyJm0GMrcwJUpvCCgACj+CB3Un7JKC0x67lnbKJQycG+shwotxdqorhA503Yul3jDfJW+B2Vjp9PDQLK/Vh8WOir3XmWiwcLg7sgVCBxNfgo6J9JOc0ZexERIRc0/am6wE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781635594; c=relaxed/simple;
	bh=XiGwZwHj+mjQF59JEV0UEWk9yO7zxO5FX/Xh8rga5AU=;
	h=To:Subject:From:Message-Id:Date; b=QVhOZCvqF5DbiI/DSM2PnhZqQhtfy7jWGbzq10Cji6ixnzWGWBxQ2bdS33bo4UhTudW3yvCDu6JT5wW2AQn6Lbi7KsXaqmKtdy4L8ZVW+WDDnW1gi7/YoN6zdpJnKx2zVEODF7r6K64dD0XWRSrCa9H0VeyzJNTYmP8imJARMW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZCwKWQ5R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZCwKWQ5R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB163C2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 18:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781635593;
	bh=XiGwZwHj+mjQF59JEV0UEWk9yO7zxO5FX/Xh8rga5AU=;
	h=To:Subject:From:Date:From;
	b=ZCwKWQ5RV5E6FgB1tnFcXQ37+9m75Nv3JMQYrZAFrTGz7EO/nMF4YOueAHtVJO9Sa
	 /WYAt85E7MWBDRnryQ1iOyPlkigAd2Cnym7BMBYeumtZ7Z7ZjqCVPJE4JWaUaTVCI3
	 m8kSChtOBYiOUOhEJ27RaXtH6+eVfSDx0YWRmE8YgUeRXdhWyGXRfhfTI2ck6uwPj/
	 SczJQ4A7GsQ/4+pqXFYGiJ1KwOFjD8TR+fI/Xz0cj2aJGDU++0enor+RakIn9tuaum
	 hzR+BJQGVUfVOVbC5PkNf8LiNBllnHzVr1pLeXW8PiluOc4tXcNSLioFypdRHQzH5M
	 h49u6sB+zkOHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE74CCD98E1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 18:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178163559370.1140.15585166495361042437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7206cdca556e720b8c0c252b46e70f4588355e046ba4546403c0575857f173b
Date: Tue, 16 Jun 2026 18:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781635593
