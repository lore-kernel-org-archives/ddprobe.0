Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6366A2BAE3
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 09:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718183903; cv=none; b=IOo73R9zmOrn8/KCV8mCYfmSDzatzj8P5VqK0RtWiRWGPsuuLbdOx4An55gA9y9zUCsf4uxqiLBk0QU7epwUA4nkmFJ9DjTNhlvEyahTsas+Iuyt9DsxMn+rx4LTYBJJHDdo7tuCaTzMu6zSqEoyHx+szi96mH6kPQtC/IP6iEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718183903; c=relaxed/simple;
	bh=+p7D4dVQCiUKy2R9ek2icovxOXXkgeLYE+6XXWxwLPE=;
	h=To:Subject:From:Message-Id:Date; b=mCMwGgvM2Cpxyes6BQYxbE7mtbAs3yLO+q0WVPs6Von01hWbkt5OobHhzXm+7rCBNbs305aaY/X32jnBOOyk8hFnuWmsxml1Al/kZmMTykOigZAyIuIjBJMcVDj6esmS41NDjejJ9CGnP2YhWCNZPv5ShqJfLfrvWnfRvz7J9Hs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WTKHpDFZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WTKHpDFZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA7D1C32789
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 09:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718183903;
	bh=+p7D4dVQCiUKy2R9ek2icovxOXXkgeLYE+6XXWxwLPE=;
	h=To:Subject:From:Date:From;
	b=WTKHpDFZwU5mEV9VwGcAi5obOVc0GqTfx9VKQUGSDf9DMC67h/sVMxJEsscB29WRR
	 2L4YsRVs1JWEYI27hKEn+LfeDA90E3aMB9VMpArnFaNS/GFJ1GVsexqURA6BZsKVKl
	 5RZ5IM2tdcEtsn9I0N55e14nmAwnSf2OivkTSP/dkhMOBG9U24geIHs3V26opFyTqx
	 EPfuly2WzyUuI085q170z7gBfVanHFJoDUY0I80fGh6OyFuHMdPJ6sl6/DPKud9wWx
	 gK+/RT/ZuH3Sou5yUJ/yNUHfYiC+teruqlKVdbsbl2NEGha8YwXT8HnaHGPoq59eE3
	 Q05lV1kaFlG9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEC90C27C75
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 09:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171818390282.2544.17145938785745280566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c80d20ac7bd912cd2ee9a58c6f9d26d59566478aafe20fe21c420b4633e6e80
Date: Wed, 12 Jun 2024 09:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718183902
