Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25071207E01
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 04:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736397354; cv=none; b=nYB2psi9ZfBygaQKo5a095xSSwiIp0Khe0ox3zxFw8x+A/TZwY3AWT8KcdEDYhx3IF6yrGuDjDWepmAb0UFY/89N8NrTnQIHhNKoZCcwbOx4LgB48bUYWwVTCW/3G2p7U7jL+hpxqJOza7CP6Skz7jZ1y32IR+/sAJBpCBRphBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736397354; c=relaxed/simple;
	bh=KssQ7GTBLrfYyk/dUdORQ5XXkIusoHUpk8uV4x/fn0M=;
	h=To:Subject:From:Message-Id:Date; b=NjQzoxnmLgePN/asxRQECog46p5kY8rzFXDHU5TzMIuB9WSW4WwXeZKI+nwyI2fj7mTlv6YZTd8EJykfwOZ1y9f7pypy+PYvJpwi0cWpygxCWooSQQg+5/v5ep4173g40izp2Y5aYlfpkVWueuCtG0GRF6tV2k0smkSPglhwsxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aQu/iJ3I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aQu/iJ3I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2171C4CED2
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736397353;
	bh=KssQ7GTBLrfYyk/dUdORQ5XXkIusoHUpk8uV4x/fn0M=;
	h=To:Subject:From:Date:From;
	b=aQu/iJ3IgndTecLzQtuHCpbOtW3euJ3pBPYRL/+6NUtH1hg/PYFzQDmBtZpuCJ63Y
	 oR0qCkfY9SOxMa2hsAgLMB2P3C1bAuhS4Vxq2fvY3zkbWp5oq6/FZww2VWNX9h/cr9
	 7e6GGREMBFLc2MoZVGypLozuqhDtvgPqc9fnAeU2ptSe6+J336cpTiNbQqoGgUoJII
	 AfWYNJzDc3hNKGB/Qa6PEHWVJq8PhHZWyRrD0tNlgjjfkSyekbbj1dOWiDcumwq919
	 YRg33kn0tBOS9VD9cUVjX6c9LArxFlxNi6a+WO6KgDrg+DxET6sqQSjm4KlLF6vYgg
	 yH/siWYGWxx1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ACC2E77197
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173639735360.31517.9354450527439457769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fa28a1925e167311af2df466e01ef7d2cc47081e98a3569cf770ad13401582e
Date: Thu, 09 Jan 2025 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736397353
