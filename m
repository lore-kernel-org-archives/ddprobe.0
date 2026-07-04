Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 328F3433E86
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 16:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783181914; cv=none; b=JCCnyzcQoejo0py5YRxGCD0UpUvK4Isk/tn4hvJZLKMJUVQuMVIS2DdeuZqzaXbLF3EH0Og6N3mIYU3OMnwXj15hWS8sMcnFXA81G1WTYuNBhACPzXSm4Y4YQaTh7/30a2CMXqC+INAszHbVc6+uwMlQWMMVT293VztPHFrNjPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783181914; c=relaxed/simple;
	bh=9lepaxAReR/+huAcaHFs5eKlRWfgxv2Z20AKQOx5yhQ=;
	h=To:Subject:From:Message-Id:Date; b=YZVduD7QevT9iTABmGiMx+AvWmG8SpMb9McK4vE2z+vP16seo7w+kv10hF/BPL0gtNcurlgeZc35mhqxid3s6y5hbrUPVAgOEdkyepAneUUdfuaxMEZ11sVj77N9h2Q5bjZHXkz9c24agRQrHNh0PHOW66XCyvEk4PViKMRWdsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a5ojjLbU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a5ojjLbU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEBD1C2BCC6
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 16:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783181913;
	bh=9lepaxAReR/+huAcaHFs5eKlRWfgxv2Z20AKQOx5yhQ=;
	h=To:Subject:From:Date:From;
	b=a5ojjLbUOr1qBWvi34976p7BYqwJHOuz3ykQzLHRwjNv7t45QPkJoZGvmY62uzNTr
	 BDLSvTpONVFgvQS9c8UI787ZzmoOOlbYLl7u5Zm8LB97NwG4YgpnKE7nPPuFqvIUZ+
	 p3GOK8VZxkQ352e+Yixpl5yWymH2aR/2gxVjEywslrZeNPS2ubyPMhnMq4Y/V35IOY
	 tho/ZHJxWk6g/pG6mbWNhwJEwKhrfXURIPNUeW9QuOB1a8N0cDGu35B8jMBA8A+HEG
	 DnhHKkSYhxbEjKVud68KVL2rkcD2WIOyQUD6Jqng9lgTlV10qE1KBRjnYhjWwP8LgX
	 H/gvJnKOoVPog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA831C43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 16:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178318191368.14749.2806371298023624313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa67b2615a44127d70678487f9afd0c6bff6aa7f8def41fe592de1aee99f0a1e
Date: Sat, 04 Jul 2026 16:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783181913
