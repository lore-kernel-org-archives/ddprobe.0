Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E75E2595
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 02:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717899443; cv=none; b=Y73rGKq/eGzl4okRfLey6CGRebJMczhEJMv5pwLlhfYsTrJuxfuWxTPe33/f67e5DyLFfBvXPP3HUSW6Wl7jGEpTJ+z66ylIMTlULSg/ZwdL7O3jKyQ5CLogXmyIFgty+iS4WUGC6nLq8NBbpf7HjuQttWuGBwr6fqoaJUhQH7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717899443; c=relaxed/simple;
	bh=IAV2Jp0pzrPB1Yf9qH7Tzv/TrbHZWHiY3DFU0LpJjnI=;
	h=To:Subject:From:Message-Id:Date; b=g1KwZmwyBnYSvIRgxIFxqNykNAIi0pU68EmfmNhVgLgF6eJelHxIkoX4tz3FXu6SRJBzclVZLvHnilISyZCM3qn/nmiUkVGCNu9EuhXycEULdSboFj6LkXCfpSR8OTby5P4jfSOTODWTxQTcBIB+Umt6hiWL3I1d2ypBbOv4SVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AVm7O9Ri; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AVm7O9Ri"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDEE2C2BD11
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 02:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717899442;
	bh=IAV2Jp0pzrPB1Yf9qH7Tzv/TrbHZWHiY3DFU0LpJjnI=;
	h=To:Subject:From:Date:From;
	b=AVm7O9RitYQ9/f9R85DoCMiS5SH3GBCQ942r5/SLuZ5WqJj0EZlJf2PVNo2dAmrtI
	 FMT6S4jj6Yi+MPZdI7ROn/KDx8hNL7z8r1ijg5ps60EK7bWPyplYKXRF496GorRgMQ
	 siIpkwj5O2tNZRjjCxn8QqhRpWh4prd9Y90iYVRL615X9P5G29WzFrdNxJl9KUW6zG
	 DK1EbJC39S/gwpSsHpi71SR63I5s4O1eHGk0MSjvDwGMRr85UENLUzj5k4rw1zpaTI
	 7OjoP6sri0zuRzWdaJG29TVcVgwueV6gXoCN9y66XsI05vjx/ombcRXPKLiB+VQOtg
	 WoWd9sPZDXolg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7320C25B76
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 02:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171789944278.21456.16991228225506877873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cea098d1bc40c45404fe45cacbdef3cb72a88945e0ad5f6d5c7d2d10d6c70b47
Date: Sun, 09 Jun 2024 02:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717899442
