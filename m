Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BEA614830F
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747789794; cv=none; b=IWuuhL2UMEnAnF8IEVKP3XApiz9wV6n/+KcyLIkxDjqvL6P6lOL9KanHnz3rSW0pm82KFJtQ+bKKbo6IYyIdxgX+h8I5tSeG2XKlTnHKCJ4BfYyJdMbu1ZAZPyLjaAe9zPdlsD7c8rXe2M+bBYa7KzQB/n7i3VAMkCmlpKuV/iE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747789794; c=relaxed/simple;
	bh=N0lU51NmvhbMvHpPgZdLF3DTZzW/uorrHvrtoa/nFwA=;
	h=To:Subject:From:Message-Id:Date; b=ourASAj8ZSxce+oouxebPjJACQTrDaIBuJ5F9O6HtJQNBMdzw8HputolLEibCdf6GbJY5VFR1R92AZzqAALIFQt6EoqdJcS6JEucgQFx1vpOoKDx83kwwbTOq2GHBqwo2Gtcjv/PlXZoDgs60jOoPdqNgjGMLP9ZILA2k4IAt3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VSkMv5ci; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VSkMv5ci"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DC9C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747789793;
	bh=N0lU51NmvhbMvHpPgZdLF3DTZzW/uorrHvrtoa/nFwA=;
	h=To:Subject:From:Date:From;
	b=VSkMv5ciUiv1+uxgSXc1HtNArzQUoqRq8Moeui1BJmCLuqX/WqWjeZzuU/lfCWvSs
	 QFFxuN4Ot400+rFECOYUjQzk/w5aN+Pj9T7ba/LU4DnETkVT+5oTfbNvBXYM8BVDiV
	 ryM+9PwDrxLRtAVOqs++wAQiSYXU3ueve+QhE61MHW6hCZ7lBSNqa/tjqfSzyg0P+x
	 v3N7kGL79mbkKbaeinQ5EvLtxIbWzi8fRBzuKAcnx7+BZ+ktK3PsHJvVGI0cAthSfx
	 m8kQlsaQs/l02m/Q9KVxsdFI0w0E4DwG+u4Av9EoKNGVIRd8u3fNqT9xil6x8j1kKO
	 ebiF1IwL98UUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E1C2C54756
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174778979357.28504.17383466505965943832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2a9213d7b1a8f064fe8819a7ffa2c7f36bb90f9338638a5ead1dbb0340b0c93
Date: Wed, 21 May 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747789793
