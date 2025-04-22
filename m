Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 423F328CF4D
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745346596; cv=none; b=a/90+w6P9rwB+YNDtiwEpL5s1yEp6mi+7lVrqUrBYnEsLMswPnCWdH2Em+kHUEIZ1GSXFZFDsyihWm+pN8AYUFvQV25ABsOfr5gZjjaPxPOEEzU9065fHK936yk7gVRtgniXHONJ9HvSNGzujylcgiv9pRZjPRO+xzb0Oj1Udck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745346596; c=relaxed/simple;
	bh=XwDbp5g3Ee3oxe1cY/5yZdUwA9FhBpeSQarqkdLPBJ0=;
	h=To:Subject:From:Message-Id:Date; b=UO5aw8IcKzHB555NK5jyXz4XPOs2pUWX/xLfMyYIw26vnL9JK0HbyLPxZrq4tpJQ7jezpSFffBO/veEFSak0Si1FP2uRi72FJ6uDyzDmYRKK0NVCWuDCs5/ooHRT2GM0uyZEDu3k6hU7R33Uurn5D3ZmLsLrcnUHTZ6BOmBSn3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s7vcJdyj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s7vcJdyj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1F00C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745346593;
	bh=XwDbp5g3Ee3oxe1cY/5yZdUwA9FhBpeSQarqkdLPBJ0=;
	h=To:Subject:From:Date:From;
	b=s7vcJdyjVtHswbJt3g//B9GBty2PAr2+Eihidcu4Ic0w5ZsfWEo1nXn1gPzUo7Sbs
	 z4xBChlSKR6AYlA494Zm8uIvGeL1dw3bP2ALn5Icph4JdccpfSk4DdB8FPjVeKkTtx
	 I/NuK/Xs3KuaaJ1TJ/CfVWg7TgZ0a85b/2CJrhZ8pJ3PNnHFVQ9tSD1iMpTzqTX7Pl
	 KDwfjzCbsrmlE2cXYQNkzVwzHimqAwTofBunjcnk5CE1+x+A2ve/39K7A4mBWDyeLt
	 xGtkUTjJEV9D02+eGylcu++7bXmNt5MbRkyKa0IIbjdRBeUEYncERTwDSf9hQm9Cis
	 uMEosFXzaja7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D146C369C2
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174534659360.13546.9328905087802948688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a005a27927ad8d4a0e124b7634220426aafe3c706c87b97041cdb6a69d74615
Date: Tue, 22 Apr 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745346593
