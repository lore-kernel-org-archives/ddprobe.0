Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A924EEC3
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753628994; cv=none; b=qVxmkbN1fczOBYxK1+CoCcwo1ZoBERpkwGKGZCLt3B8+lexTumIOpiK3enjCufNGDOC8soJ0yOlUj3GiGH8enlnbduxxDP7lBlxx7QlAGFBV5RzsKRB3Ikt+jvageIRsc1iu395ZyoCM45AXvIjoeR99qQRrQ+kRxdQrAT5OMAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753628994; c=relaxed/simple;
	bh=D+RoDRKimc1oWu0nkFnxDI7SKdmfqnAVIrP2xgm0Rek=;
	h=To:Subject:From:Message-Id:Date; b=ERgQh4eTkDAtg7iZX8og6znqOv6IWGxjNC0Gp5vowyG84K4dCf1VdNQyxNeow2/JyWueFkzvUCfQcEzo/hl+jl2n/uygXXX1uPXfV+F62H2H5QHbfr6t4eNbaZsd+b3jNWcaIGJo319N/oOKLUGFK72tZ2459F+0oKpPTEfBb34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ddBHRoNv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ddBHRoNv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2346C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753628993;
	bh=D+RoDRKimc1oWu0nkFnxDI7SKdmfqnAVIrP2xgm0Rek=;
	h=To:Subject:From:Date:From;
	b=ddBHRoNvlHXEQxIaQug9Nvf53jmj24GMK8madQECfRLh9mitUX1ZGW8GDZIHfdrhp
	 WayMVEkXycfqiHT+VTsY+ulIKIKsPhKDjL3yJ1+sQGy/t8Q2hq0WM1fdZEvmEvuP5u
	 tYaSmqlSevzPw3BvqEXrwjoINnpfjxPMgR1X1qV9lOzRezVJhhF/6oOA5mgHBsBqe1
	 QrqBt3xFZj76hdzXci2wRAhjahU7P4JjzgnQfTWsUmaoqj5bo67uomV9Gu/skJ8jWe
	 cB1IWGMZO2hvne8pbr1iwfmZ/Z86FhcszssqXWOSd7ikwECVGZL1mragwEUh4zTZuD
	 4o79Yo/dEcsMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E75C87FCC
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175362899357.27760.9483707181370533906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c46e191dbde3772bd6a3db8a46e2bbb04be5b2d8bb98c8581bca216b058a503
Date: Sun, 27 Jul 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753628993
