Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EC7C3FFFA2
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 15:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780671874; cv=none; b=Yw7sffqpOlz4S9/0kcQs41ntfd0FxAI3NTYpvveiCkiB2fRsbZDSB3FL/UvIG+QrOoZ1uusBqC1J6xxxDiHgy6FmZShNS+lPVGuSyNqR8PJzeTtf4wLFPRcKeeLKghSgzTc+0Z77GAMZxOYQgs7+GuJ3JVliKKe800Vwvhclj8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780671874; c=relaxed/simple;
	bh=e1sTcZ9dLAg43O/atv8no1GhGqVE4dWQNhH0/xsuBIM=;
	h=To:Subject:From:Message-Id:Date; b=YVh9G1Bh1u7a4Qcfx47cDo33jbJBtZ40zlxl2cDZZsHxk1Ft/Hg5kOnxC7OU1IO/E5xtIQiqKtzVIQ6FIClolypOwbYCnaGmz8zO+LZ6Xk3bNPfl+U3rInUbtOIMo+HnU7IYYXwh+RU1TiAmlY/UxM3IxsXnap4kWCxbGxtuNeg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BpPu1MzG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BpPu1MzG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D28C7C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 15:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780671873;
	bh=e1sTcZ9dLAg43O/atv8no1GhGqVE4dWQNhH0/xsuBIM=;
	h=To:Subject:From:Date:From;
	b=BpPu1MzGWK3qqDFRiKIgK8qmAUubXP+7qzrO82n9I491f3QpeomALKHI7I9gqCg+3
	 zjObYbwKbB3iRvwVsCObZ1zh4JBWuAxbH+P7H52+j9/clYYoP86HudBR5gGYylXIhe
	 fyzjEguWrL4/mSdcE5ZBXKvyyKEeYqGUkgEuaFkG+6OvfkYUymrZsvKtyp5blVVlKi
	 E+7S/V1GijhcQIdGN9MAM/SXfQrApMnQpu8K3NP0eGff2+1K/HgKVcbI/tDw+bkX4m
	 i+Fv84zZUIkilSqmTUVGk/+hmLPH4dguYHr/StQbSv/vwQaWcka6rOpZ+705r5RNqg
	 vlKO1QC1W/QhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE1F5CD6E7D
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 15:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178067187370.32051.9230307532443244305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a97e9b5f99a53dc8763ec2dd400ef83a21b3348eadcbca31f85de3ab89ca6730
Date: Fri, 05 Jun 2026 15:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780671873
