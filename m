Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3055F139B
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727312754; cv=none; b=d2iblg2VqDqS1//cI2r7NwoluMGMMfLOPlUkEc1+q8DHDj8tL/9T7f3ewdUQ5cOL7Y5Ff/Gozdbg2luOV3QatZDRXj2OCPjbnVymVxpLuU4g0IvySQqi8wgkmRtVfVABVCQKJndyxdUqlBqmPPJcM+ugXQd7fpwHQ3ql91egLdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727312754; c=relaxed/simple;
	bh=a+YZEBoUZalbYWqbS18PUasp6Cb/KlpHdQjaFjqw4MA=;
	h=To:Subject:From:Message-Id:Date; b=p3ElGrwwEL7KSjNubQN3+Ijn1xptUXFBQetLpwTqQe6BgLRHHwEv3XQzMMRS063JR5kkzZSVsQBTlTX/eAMegUhrn2rs+b9xjDhTQSdD6uB1jUZQPIDcwtYYJczAhJ6IsFYMSuPsL4v5JpddRO9VHz2RR6z6nTfhscyK58wPa1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kQYGu25c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kQYGu25c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72B5C4CEC3
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727312753;
	bh=a+YZEBoUZalbYWqbS18PUasp6Cb/KlpHdQjaFjqw4MA=;
	h=To:Subject:From:Date:From;
	b=kQYGu25cnyLUY9IRwPBzgE1TzPtF0GVmqOl/y6nCGaP1bghHcc61Vq1p0c5+PRkgN
	 mttGrYjo7Rat8yA3/SNZEWZn8F3i0Z6XYw6pkF4cxtPvG5XP4vFwx5x8o4hiPf2ivu
	 Ctfg7koqMG2Jsw/K9uX41sIQeQ9erUc9YE+KPEqubxLUUWcHpAIVaQSr/GGYVv9Y2V
	 MP1/meqxCjIdMaoBUhx/42K1bL2qYnb/pxsmvRHGRmYIelpNqgu7jMB6uu1W9296GY
	 u+QXZr+yujDX6VNGN/R5qqtEiZt2DSxj9Unz6ZDD3hs1HtzTtQGciLti/JJY7QC5+K
	 w8TY9qTfXcaEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94275CCFA12
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172731275359.6571.1447741596501181130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17b2dc632f56c46e6d5fca0c891769807aa5d20ac0448c04fc4657158f32024e
Date: Thu, 26 Sep 2024 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727312753
