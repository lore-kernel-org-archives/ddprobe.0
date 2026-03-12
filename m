Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12E213A382D
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 05:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773292494; cv=none; b=sFHuNkXDjGbUghSW/u/MIVqgM2F4DOVJ8Ip7jqJmbRSrx6IqNt16YyIGfOlpN+C/JeYc0rlohvbuTN4TqOU3/NinNa8Zrop0+sQIMERb6as0gsbFA/gvQZmb1gNSfQxCF3DJNBz92uMLO4CyVdrLLK71i7uneu1LxaPaU55SJkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773292494; c=relaxed/simple;
	bh=KjovfTRbubyrfcG7mm8STB4khKgCQegmAKtO6txIbjY=;
	h=To:Subject:From:Message-Id:Date; b=Xe+ZNIl214uP9/59t1tgGs9sBCsX7MjRYRdMq6ZUxhdvc0jVoW6OeCvQILw0M6F/0bC2p5mrschvCLrdtkf17A3i7YcAMRATi1nuc1YoAkG9OZEtS5zLwnQnpgsi5375ORDKPYWTLWCMj95tzhzoQXq+NDnBHUmh8eiSYEMOkBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mFm+SwOf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mFm+SwOf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1390C19425
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 05:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773292493;
	bh=KjovfTRbubyrfcG7mm8STB4khKgCQegmAKtO6txIbjY=;
	h=To:Subject:From:Date:From;
	b=mFm+SwOfllP5EfearF+Yoeqqr7TeSCN18MmmS+QphzSIGzNEZ4vsHaAi+qgbC6fhn
	 I4P0kKSHbfznxJtWsyCS+a5ymsXYJA+TAJJOFhmt2f3goHULYRDyZLRCp1chUZ+BYi
	 Xp6Qs6zdOJvbLKJK9+W3R7knqtJcvAOaZ3uYZr1NeO36Cqtq+lto557hyFqDaZDvp5
	 KFMooWC1pHLD96zPhexRnwDhIIgaWFwzkCWV8X2aP3W11XCmTTSII8ioLCOySkSF4W
	 ScSrx+ptCXBpw8DOTdwXmpRE9B0yXRlvBJ2IAfY3hzhHJBeEKZuleNyXha2L3qbbw+
	 +LIZ5BiF1vb+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1F0DFED2CC
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 05:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177329249365.29595.1973874993181445809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4288de3d3d8bbf7977bdbb0f7804b4a3a90439ac6f4427cbfa840b5b8f39d75d
Date: Thu, 12 Mar 2026 05:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773292493
