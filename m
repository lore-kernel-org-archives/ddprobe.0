Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27D30A921
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757463594; cv=none; b=uXxy6x9VUwveIo6yq0OKBZVCD5U1IuvrcJEmuKuTzYSAUDw6DjygbEXvEt+aHusPLm39dgf5EeWODNCgnshAlB2u74NOrbtSYny7TQM2E60RCBE3MYNJt/dd1w5Pzj9MJx8d9f9+8neQPQ0Tvv5rdETEdOL5/jKIlIRkHdjZ4H0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757463594; c=relaxed/simple;
	bh=zyWbUcQOOBzMcl1mONc5KbwxI2MiXnDS+Z5Q3NWubcU=;
	h=To:Subject:From:Message-Id:Date; b=eGvEZTg5NTFFUErc8GFNYRHJm+cVjx52YAUZJ5nNYqFt6KDe5ZDj4DM+ktCOP1CEOl2H6ksduXE03H92WTXAukxT9PCEtv1WDnc8DAsSw1+1XckvIG2PUKy7x9LI/NaBfXG2XJEJrnTuevj6aOQfQT26upxDA5Szc+uQ5MMxgkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IqwNuJLF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IqwNuJLF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A10C4CEF4
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757463593;
	bh=zyWbUcQOOBzMcl1mONc5KbwxI2MiXnDS+Z5Q3NWubcU=;
	h=To:Subject:From:Date:From;
	b=IqwNuJLFoTks4gquuWiisohrOP7Bh1IRyEbT4K3S+/XUpGiNcGPQD3RWPYXcMWw8K
	 Sa37lL6WzYnR7P/XMhMa5bdvTatJvsuxeqh3/RtstBdzuVcPOIa4i7wY0CkbL05+iE
	 cI/yd/nZsXGsjSkaRtLDtbCOLO+mn+iRuLWNX6bBOG2GrjnXZhxilxHWnBse1U1ihk
	 60+yDXqLdLjn20y2/4Kh6CV552moZOPEc5wYxCEiTDdJ6VhjMlW927a2JkRYmwuFM8
	 9odGvtz/z5DNCYlzpYAqtc/GXMdFE92RWHeWz6S8ilrMENcm6FrZoWmY2RaUvUbMfv
	 K/UmDNz6mruoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F643CA0FED
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175746359357.12949.3421268272760006987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c0e0c3395e96ad5007cf9791d452cad20a00909bec3b270d979cb0969d3296a
Date: Wed, 10 Sep 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757463593
