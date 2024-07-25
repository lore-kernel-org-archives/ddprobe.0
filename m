Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F5952E639
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721937954; cv=none; b=d6S44me2iQShJQC21nfdBzB/VkD25Vp1BwrdAmSb+/YvapgsYGWBNFbCpU4CGd2vB87GMMFjGqNX7Od62gTg+J0AzKzRJ41m/iEjxnDOY7VnwThxYFCILxSaALR1HLqG1ipWZwbji8aFdJalAqaPGaWJZ2rpXM00vrcmjaylVRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721937954; c=relaxed/simple;
	bh=+bdB5mHt3TnvGBpppOUsxJ/t/iwgAbwb11wetfRwcpE=;
	h=To:Subject:From:Message-Id:Date; b=MiLVBVr+aUE/FW5BaOXmIGvUpzoFQjHsyAx++y29bA2IGe7W15xhAG9oU/q0c1ELho8B0PHV1B77r5qqoRlelaeMzZufCCWefQS8e01UxrvNGJmhhxRYp0HNy1HB4a4aF5EveO7ByH1qXmoJlgkngSgzF8LNHjpAVJYuDENxVxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ewmcHj6A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ewmcHj6A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE996C116B1
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721937953;
	bh=+bdB5mHt3TnvGBpppOUsxJ/t/iwgAbwb11wetfRwcpE=;
	h=To:Subject:From:Date:From;
	b=ewmcHj6AMDS/7d0leLwLd3knuLEyWMxi1BsZ8crWYg7uO9scj6AU1NLPt4JMMHRr7
	 NvQ3gvabH/4YfYeZZMXeubcFyOtAxIFr23SbRfr5JQhlBpQhyB6z/db9bGUsmLli/c
	 51Y40GqNyGPcJ8u4NyrI8ImpnbmJxZGatOqPCA5E/lzjqksTgCoART7jem2MqZcQ35
	 g3XDsmu1Nl5MIGgvSFRcPntYs1fgx7eOYuzpd4Og1Yv1FLaucC75zvDp/i6Uu6UeCD
	 ow/42TYoPdF6OngG2j0QMgkgI44YdWWSg2E5fFbWOcbuIXg5nJMAvflGYY91dmibBx
	 I4jvYFY6u5AJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A192C3DA5D
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172193795362.4296.16664719498609812362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac20c28f88d6e2a67be65f75b9f5fdd0ad4cc7a48e0d652b4324b804f3f51660
Date: Thu, 25 Jul 2024 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721937953
