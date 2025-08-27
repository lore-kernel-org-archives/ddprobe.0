Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1496728C5DE
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756313394; cv=none; b=AJ71SnTqkYARoatxqbt0uKFnwNk2koYWM8w0XBJaBC+tyOFZaCetMVYR2dFoF3AiD5+SmWMhjGJRPNYAOcKZcfOKSLxJbawv4XMQIhCRE4GJ2xxB9SjnMtPGGBQa8IHwKpWlACRHgboILB4iexVF/e9+57DWQZcc6cQzH8ZD7Hc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756313394; c=relaxed/simple;
	bh=kglyWz5rf02nD6ShrsLKipAB9GhxEME4IsVyou7nAT8=;
	h=To:Subject:From:Message-Id:Date; b=dpDetcktmxaIjvOxaunFpc1QaUUN0FBKV4ABVfES7D02V3wVDZfFgMPGsRi4pNPkbV8T0MZmss8EC/mqMVeu2iDbP3/DjyKAEHL6Bi9GqNuPnCpUVsD8mms1GtyQ6p+rtHcR6DyFogz1k0xCzXhX44j0W8c2gHBz/tzwihLzaa8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qScGnF37; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qScGnF37"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C719C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756313393;
	bh=kglyWz5rf02nD6ShrsLKipAB9GhxEME4IsVyou7nAT8=;
	h=To:Subject:From:Date:From;
	b=qScGnF37SW+VrlPdzlEI7AqLczCclD0WRNtfQjXFZOEIur7eXFYFO83rrd4ijAnsX
	 YdFes7yU4RHa5RFNWLbPNmBVCr41B3jqteL41PgXi4rqNFxGzC9Lqo+OWeyMTlXBFe
	 ZjB/F7n/IJ+090ieqDdD3QiwMNGQRjgEh90T3u2SNf+szpw9H8nLxE0Jn580yzVogo
	 LH32pyQhE6Xzwm7SXpkP7KAMA/THGG1ASEc2OgE7DsvmWW6AVQ3fsYaHuePd4AJ+ll
	 dHuFg0VDmnmOmaIrK6HRZMJDbnrsY+/0jRH3lnxedg3bQiJBkso6UN2TgR6Ac3zEb4
	 DI7lAQpBAAevQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5F8CA0FED
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175631339357.29990.13929098773889120633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d31fc6693cf79776ffa317096ae519a0184aa232ebc3e1eb7b21065469c13c5
Date: Wed, 27 Aug 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756313393
