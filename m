Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08605343D8E
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762966794; cv=none; b=kvZ7felMtS+dzdywosyD2nLVp/YHYTGaljim3werMf/wu8IfY/6YeBurN2gPHfC/U4ObsW7/p8+B/s5zqLgy6GHfLgEeAXggjpQtWE4omepibl3wOM1kiTNK2T5k7EVOV3pSRvcdu6x+HSVc6GC5RelTre/fPvNiRSYoRlezzM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762966794; c=relaxed/simple;
	bh=8sfiR6RQIoE9rkWBcOiZrQWfGeUD1RiF9N98g7PWjAE=;
	h=To:Subject:From:Message-Id:Date; b=eJguFjZEaXi0EsoC2d4GDNmxQY7r8HZBK/nN+NrHWLLpC+mxmyipwOxb4bmZjjwqTYgryjEh1WjNSuRkKT/Qzq2/C/N9JEEaMyXFAFeymRwGhJTbXmhbCA7UcSSoPnHHuZPc9n0mB/5iSDy1+A/E0sXbEvYCV6xBmEdjjLEhqH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dPGcS1TH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dPGcS1TH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C3BAC4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762966793;
	bh=8sfiR6RQIoE9rkWBcOiZrQWfGeUD1RiF9N98g7PWjAE=;
	h=To:Subject:From:Date:From;
	b=dPGcS1THz3yKOZM/LwOvP+WIqHs5HIpviOsOoGG8FOeyrJcVNKLVkOGyFRvjFkaoR
	 JL/sCO9+ju0VqJkQ8/svoX3Baah8eBfll/p5thZbA2nGQ3Lstpq00FWAu+w6G3/DF+
	 edl3aocoIR5ybQaMol1Bk+SXfHJdUhMWvj8bThK88hSQHzXp2a0tZQkzTq1iBet/yd
	 KbUBtQjqokA646LuFNB+bUbAb2+0O6OXkOnHgnUhZrAapje4zEudMC/1ZahcL2Vwha
	 GyHk9U/4ziERKZ+toRMF5B2cftqJ0Vo7sNpgjvkHoHHbzGNHEt3zWldxe8/KQVMUbS
	 uMfLW+0wNiB+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C21CD3425
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176296679358.9473.14819073566701466696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afc453652b229eceae35f7cb5775c766ff935ec72cc10780d378e87a5324fc13
Date: Wed, 12 Nov 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762966793
