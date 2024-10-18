Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 280DD20E33D
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 19:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729280154; cv=none; b=GNaJfs6zywt9Ca+WE6ZgemZmGcJgCWIG2nM/DUCxjszcNq3mIK6r2IOCoJxoyp7RTFdzuEsZIyI1CRwzqp2NXKydW2KPS5tEnqfdDNRiaXNb4/MQtgPWLeIMqlgC23c01qw8I1bNo5e7tK+b1+I1skhe44l7hlIWmmo7RRtV5qw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729280154; c=relaxed/simple;
	bh=UDqNb6DNwI/knVFijw0hVL3on1mGGAHoyNev5KtOhb4=;
	h=To:Subject:From:Message-Id:Date; b=qtZUgu3k8lK6eU4ghMiPj6My3bcTlT4GmpEmrNbPOPzSyrrxgtKCULBKdaXaNNOjAfJsiYIL3e6tfFXcoHJTq4Ms7R6vgjxPM6r8i8bnMdiv+x7ygUbnOQC5p/jTX5RqHKLbqA6rJwFzRMV6+4o0BOP+gdgafZ9lsSw9pT6OHok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g57xBXp4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g57xBXp4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6DB9C4CEC5
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 19:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729280153;
	bh=UDqNb6DNwI/knVFijw0hVL3on1mGGAHoyNev5KtOhb4=;
	h=To:Subject:From:Date:From;
	b=g57xBXp4wnms3UCbx+ncr4cNLS56eYaRLwXQ5BA1tGvp49LjKzu4MNWlFFJ+LROgL
	 LoE4iVkD0nYSW5C9fctft+awzXVgQz69QtpkglxSxIIIkEPRBUCQX8Ih1bFTCS4s3v
	 oMuN0k5WPagbsoScux0I6KyOWH843dlhecQQn/D5WWS1M6Sku+lllgrzYH4c3IaISJ
	 gGymbmwGOd4q7oLijVzyGv/oM/6kNbQVCpyiiQRp+Tx+Q553ZvpSuW6kZYUCFOhyIc
	 NNA+VKSJPRzlJt1uF0heB/aFIpftyMGrGjNmAB04Vv2CcRNaWdXsG35q/yLsLNl1q+
	 rCtZcWHqtqZDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3928D3E189
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 19:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172928015365.25306.11139763512003663894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d510b2470d066cffe16c0d204dd8889524af301f4654f8bd2dd6040b848187d
Date: Fri, 18 Oct 2024 19:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729280153
