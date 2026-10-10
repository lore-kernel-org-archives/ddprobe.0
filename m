Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 561301E7C23
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 04:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791606034; cv=none; b=LgomgLDPTI8fy/wbxwSUGU9P4BiWgcXfMW5uYaZwVQmORjqcwlf1k0aZ/wR1wUQp+CuMxnykJOlW/kd87G4LpIAd4I04A7vHj4Ng2eGO5NXbng7iTdZgsVpdZeZ5n7HDlmxYfNgSBDf1mbXzMhoeR1DBv6pYoU5h7b7ywcbr3CI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791606034; c=relaxed/simple;
	bh=q3u8DQf1UlilnarD0Hksv+6dc67elOGm2RStHnZ5g/4=;
	h=To:Subject:From:Message-Id:Date; b=nfND1cJ0fjgFNlEJDBfNYqvCIbKHiXyMlQ1Km2eztm/+U6+MTZl7DZSGfxHIBQxhw4lTgYCDDZriCkeHDO2niKywpiWyer17eVA53oCRM6tvexi77Llm/mfYtWOw+hx9d0ekEQTkHZ05+y2eUJfp5AOKTleqQDj8xeBKEx8KK/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rVsi8EU7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rVsi8EU7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E61B5C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791606033;
	bh=q3u8DQf1UlilnarD0Hksv+6dc67elOGm2RStHnZ5g/4=;
	h=To:Subject:From:Date:From;
	b=rVsi8EU7NeKftJSojhQUoaCtyYqCbXpa5832yez7vjMYBYU0jXnK2yhBr/HBZU179
	 bzhy/viQee4uxAWFCyk5AHP50tweN8vCgv21euPN0+czwkmiHhQ/6loXARNQNVyT+8
	 9iqngw93dXWw0QKAj/mWjMnWhi8vndgrnCa5Z1rS3KsoQq2wUPFn0bNPmlpforsCZ6
	 nZJTkmbFzRSlSKH2pFNiaxe4knJKgX8++JJAEC697FDKy9xOeB4yvB+iLcGD5hroI1
	 0Rr/hGsCi/+ZpayCWazAEmlv6y/trLLCkOZXOkpc8QIs8EPP6CGf/ETzQaflci3KLH
	 Fji/7qSA14eLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3076CA6017
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179160603375.21788.13986787164399043968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b910ade1601b52f54721df6a3787e6cc7446bd19c364b158ad68eda162501a7b
Date: Sat, 10 Oct 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791606033
