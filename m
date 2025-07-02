Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AF781B424F
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751441394; cv=none; b=eWCe3JzQFArk+Jr6azAzFldUM/7kjipBPfYSoS+WG2EmYQI1Bl6JBMZKiPqEZdRQQSU74CVnuFx1E+MAYdjldzSHEikwC8DtXZcDSn8RZE79Fnk+WM0wMYiaBpdQNxX8BjkljynGwqcOIEKEae+ewcRJMwhy/QAGye8heNhhpCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751441394; c=relaxed/simple;
	bh=DpNf/qyfiPDQyRFGqw6vMz9TnmSAPUObAokp0S+iQoo=;
	h=To:Subject:From:Message-Id:Date; b=TRFnKtC8SfU513dCeZu/cC2S8IdPkD3DVRXHWhqwRZku6C6v1wOs5wfj8PhG9HpagSy845WXL6MQVgc7oxOC3AQ6kt6H3DgxGYEUMAkS+tzI4qv3jih5yBJvTJlQ1oEJZ5qgrQgCwWcfJVME3MU8GtOsa6qXakM3IJ0qRZoR398=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gfvlTv8M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gfvlTv8M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A54D1C4CEED
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751441393;
	bh=DpNf/qyfiPDQyRFGqw6vMz9TnmSAPUObAokp0S+iQoo=;
	h=To:Subject:From:Date:From;
	b=gfvlTv8Mrh0rjyJEoqcZ7nrL1rFIavkIF6B7vZoYjiyZaS9ix002oce8ZyZoF+kCp
	 XYYArBuyZO5cKN3XOwHiurib9+tx9SWtCTC9JcRgUc0la7WSLpJoKng1RSllWPT2jW
	 LsXewrrdNUVeYeUXDCnTSo4BH4/+LEitvTkRQTNn8tM9gBS3AbDfUMoTwOdFZMTbFF
	 RHnmp2yCXuvBxe4vfc7ZiKxaUCtKY63jhIvXToiBWCzGlw+eTa6zdE1S88Xms82gyj
	 dGLNoC1KQKa7uPfWfXgy99HfsxrC6TsmaVuI5dq8xdfq13A3lR62WD1EX0ZLnO7oS6
	 fdTqS7XJTBdyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB96C83013
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175144139358.26291.13461687689588015674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 663ec738b2207f3a0bb566c35e3622dfa84cd4344c062c511be1e5efeda67996
Date: Wed, 02 Jul 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751441393
