Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFFFA28399
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755295793; cv=none; b=pjLV7ebQPQgrS+11jD6yJmS1SPsgX80ambfpc5RzK3Z2QNURxgUcfWCpSHRHbWDf5mNYyqbfQyUZEqLJ6AGXBZISiIYVAqOKm3kB3jEVoAp3DDukAHSkpjL7PSV8cQW52xpNKzGbg+0gxGqLPwBIrOCHobwgK+1RywYBLsxLLh8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755295793; c=relaxed/simple;
	bh=Fzg48/tB6CeKdBbdErLtnGQOOLBUVM2zIpv4BV3nE/M=;
	h=To:Subject:From:Message-Id:Date; b=SFXIwm8Ji30+mWm3wdMqh3IiOeFUi0WSA0gjTCw3w2Quv6HJ8GcA8CCHfplKNpF+VWz36tWkpp7b/3X5wplE6hlJXOpXoFfLtFcQd7LvtYNF2c5J5mCdWw0ovwHkYPTG71Naz+flXi03XgRz3DVD9i2G9LPT38JfiNW3KTX5C4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eERroc7q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eERroc7q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E433C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755295793;
	bh=Fzg48/tB6CeKdBbdErLtnGQOOLBUVM2zIpv4BV3nE/M=;
	h=To:Subject:From:Date:From;
	b=eERroc7q7ga+duQzE6Zf0ItQ+u1tmbxKAFOQcF98JGzb5halfx3wEWtvRKkd7kLBW
	 eVlCm2BNwW5Tg1pRQDfvIFt+nYQ1wepUKn4YLtHHPJdB2Y4ZiNP4ABFHtjl30APxS0
	 t5Rmcm7dUYxp3lt3HFhOYPY/+b8sgUvjFK6QXXmpZyHgSR/RFwudXREDdAlTsbfdVk
	 DkNImbmB2WOqPwGvtgPQCovUo4/KPxm4jOVsASU52OCN3HbMFJxDZKAhymw/v+3tH/
	 sBDIgVlPea5e8VdCmg+Zo4WiysTWSDTG2/voFr8SiZNDvGTS9LmSMnrq72gXtKOS5+
	 fA3zGXcPGs6yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE92CA0EE4
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175529579357.31257.16914223614095279434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c07886b532d22df4079e981051dfde92615707bee4b1c86d720e3f82691c6206
Date: Fri, 15 Aug 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755295793
