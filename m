Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD18319A28B
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726739753; cv=none; b=JZ29CJwRY4fjkbkXDyJ8dNppPJOMGTJx8h8p+G/QTIXsKOR21t/vcX6/3TNAJa3mqQcxru/wESY8gZZNm4HX7QIIdQwD2pGatxzw7Zcr2QsuZNKE2HnrG6BEGsj6cSDT79PFxX79RhUk1ZcMz+TW/18+qVYP3ahtn+NJ/seJekY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726739753; c=relaxed/simple;
	bh=IDuBAVMlk50W34XOrSnGNrKm/hKAB+t36i+ZR4IDqbY=;
	h=To:Subject:From:Message-Id:Date; b=tvrtDa4on3cyY5b/yTQ2PIhH9/J3AHlxpPYE0CZGsm4KCTxjoplV7UTwhHz9V7jqfGqbLJqVEssHMU6vqJyPOLdkWefIXH22Wmy6i4jMszF+13XzfSpxSVvCzIc2CXBFiTfXGsm9nIwoG96N35TkTtplrx3acDamc4s/f/llFHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lkuTMxYh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lkuTMxYh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF970C4CEC4
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726739753;
	bh=IDuBAVMlk50W34XOrSnGNrKm/hKAB+t36i+ZR4IDqbY=;
	h=To:Subject:From:Date:From;
	b=lkuTMxYhNErVLxI8ILISbIuWKFRPE0fJThpcwQgKBNvfNvnvG98G5wrLh78o9P5OH
	 b9ipN8pRsq/7v1sDOieeENpWEkbl7BrPtSgC8m40aABgUmfBniIIT86LeGAEM3q/Xw
	 +01/qFqKLm07GbRm3fXcHn220TxO0xg0apd3STiXhLS/ryx1/TJ7XaANZ8fQ8G1/eD
	 PwlI/9nNYV7uNuslDe/FM8D0Qnd6c/UccdUvfQ/vQTcYaEITmDDQzRnzZa4ApVcz6C
	 wiqN7q4L1lKS+AMSza954MiWhur6o8LUY5ZFHtWaXui3JzX5Msfc9NbbPEpV9cGUWM
	 u6KsxvKLF3XYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B966CE8D67
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172673975362.18079.11463719901601521012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abc577b54168a77c9854a6709ffbf84fa8416a8f7c0eb32eae301aa9676eb426
Date: Thu, 19 Sep 2024 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726739753
