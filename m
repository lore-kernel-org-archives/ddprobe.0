Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46156EC7
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 18:09:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713031763; cv=none; b=suXeISDI02aoyaaV4Qx8wJBeIx2ZLAiOi5ii9GfVun/BKswccNku6APXYLZvvIg8R9+1DgqXfLE5Y5ct/CTWZTqyP8nLXb60OMmcJAU076XT54l+qPzzxNVJQZZhUs6n0a1vk2/y5MKyAIrQ1WUPyncNYtlwF2To0YUFhk4C46M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713031763; c=relaxed/simple;
	bh=zmoGF7/9L8yEP/avCiacD17cU2diE2IP/b97fgy6rWQ=;
	h=To:Subject:From:Message-Id:Date; b=qXIMx6p112XbZcdimLhPeoyVF+BBsHTbQstM7/DqMvXD8dFS2HHc2Eb1Ts9LyvIHeoxpObui8Jr06H2+pjE4cqGk4kLdfQW8LZvffauzjZhGRA84M+8RCiRWATlg9qBlqX+KZthTTFxHEOFjwodswOq35VPwzuV6iQ0rwaHyaT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=klRrzk7X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="klRrzk7X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0142C113CD
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 18:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713031762;
	bh=zmoGF7/9L8yEP/avCiacD17cU2diE2IP/b97fgy6rWQ=;
	h=To:Subject:From:Date:From;
	b=klRrzk7XtPcGsw6wNvMF0dOXTfPnVxoUPWXDHHYiiWflNc1R3h0hpg6bl0T6iImp9
	 P3pISIq/9DM0QFdlTscV62PIXg1Chz6T7LUW874q+BY+bwxUs45/4ueed+y87ywSPj
	 /pe79V0uNlxTHbHa/rW3w0A8QJYc6KbHdaYmz4PSgB6WfFH4Otw0oO+CavXgaG8YOq
	 ica3Xy2hVPzrQqMtR6uJQR+o1OL3srp2NkokL6Bq7sQ6oSoC+pLEuLP3ifUABa3Q53
	 oVa5bCKLA+PRGR5Q33VoiQnKgKC5aSAbwo/TQwgUSj/L6ivLM/wVGVmG8ffaL2iuZM
	 2+tLWLA12Fn7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD92FC4345F
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 18:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171303176275.13077.17783155697107224023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1defd6661c197f4435ce7e08dddf55ccf794d1b421fd6a178e6bdea4a5ce8521
Date: Sat, 13 Apr 2024 18:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713031762
