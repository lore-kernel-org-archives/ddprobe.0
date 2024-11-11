Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D344819C552
	for <ddprobe@lists.linux.dev>; Mon, 11 Nov 2024 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731333353; cv=none; b=lj1didPPi462czxZVL5zRhVU8FqsDZEQU6M+MjcHfW2EQiqvGrJP/Y/7gWVNSRIcCcDJyVgnPs7E/4c+47Eez1BQyoshir29xKienWvsvcJuHxe5dCXt97uPoXwZw6OO7Fmp2aJeNIgx63zaj9nXg1EPRoIF4NGOjdm9LbpIjkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731333353; c=relaxed/simple;
	bh=GOPSXQPDdJg32b75GgeCuY/DA+PGejprVl7enEvNz+w=;
	h=To:Subject:From:Message-Id:Date; b=DwxhwmUGQTSiyDIgqjsarTZkOCQTVnFLYc4mZkuMB90K8n4dUn3bF4e7aeanznd8II2DzoOo1KhlYdYgu2nYL8/Fo0LY3Mm1+hKR+CQQKqQb0O7xdbjcXPZ6h13HyF4ndqf6E0hb24Z5mJaz1dtxSKb0/RnEnKmW/cgr364HB4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fzQdl1DJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fzQdl1DJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D94C4CECF
	for <ddprobe@lists.linux.dev>; Mon, 11 Nov 2024 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731333353;
	bh=GOPSXQPDdJg32b75GgeCuY/DA+PGejprVl7enEvNz+w=;
	h=To:Subject:From:Date:From;
	b=fzQdl1DJQ0Ce0s1wKIABKKph/uYECnwR/uFH+WRcL0mW8HtdU3tg3/6gUSJk0y3qD
	 25ObQ6DzektwCNLySxb3kbz2gEf//ea/SFzCBaXgGhnlG+W2WlD58dv6fSlTrg8TRA
	 ab/XT2ClCEtL6EUfqm7qB8UFNAyPwOdpn0+uUYK4CzctmF4QEnvxJOTlFgvraoj/si
	 0n8wdbFkimi0JPJD6PrGsueEJScMwaczwDvo2cn08aNKuvHbTZR+7yt4gtBZTryVcL
	 NwjnLVoBGPYfwZ9tXO4m6d7S9JHjhmLhtD6SF7jsVdUb3n6FCW8JH79yXrIbImbDLc
	 Rs+E615HJMq9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 980A6D2E9FF
	for <ddprobe@lists.linux.dev>; Mon, 11 Nov 2024 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173133335361.6207.317951102958406584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23c546c8a1c21b90f2e93202f29e20d6c04f0163510c4f8c7971057ab90ef2a3
Date: Mon, 11 Nov 2024 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731333353
