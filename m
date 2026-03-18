Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5298373C0E
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 18:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773859493; cv=none; b=eaEljlXnRcIK9gSWMcQoP6ziLrVknEc03x56DhROFB8eXb9+TKjj7liVPoPZx2CPnn5ZI5wZ1f8WEXOTsqhgjyYR3nu75Os52Vv2/OZdCLt7vN2Nf5fjQMIGZ/yba+hz8nAYejU7+th/3MOQeXVGPL+WyT7/d/lDZFwtd2lbT5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773859493; c=relaxed/simple;
	bh=3Xq0vZ66+wm8eJfM9jETKnSIRtPGXaOFBXzuykGPAJ0=;
	h=To:Subject:From:Message-Id:Date; b=nubV99oXzn75bVfBWdOHZWhnIGOZEsqN85SzREdf+mIW3SksAEsN8rGlhXWKQlDf1sL3eGLglq+PiHXgqPIrPabG+iT4Ae3AkOwK1mLy4492Hiaoz9m1e2UcrPS+ScM+lh39UXw/YnXAj6b6Ldhnr5J4NLV71dglpE0K4BPlz9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AWgTl8oi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AWgTl8oi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F8E8C2BCAF
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 18:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773859493;
	bh=3Xq0vZ66+wm8eJfM9jETKnSIRtPGXaOFBXzuykGPAJ0=;
	h=To:Subject:From:Date:From;
	b=AWgTl8oi5K98KraA/rpA9QxgsjfJHT/iCdQsvZ38lAUim7wk3GX/TV2curO+o34Ig
	 YmUdYuxRiTWVBkZSXJxqUfvNQjcm0PKvzCfgdhdz5Lnpk7nkAIt6uk7j2B1nvJANNH
	 thS0txNtp/zBl6OHy+JmmpI1trw2Q3XR/TcSOx2LnhzGMKxqIdE+YiNOHvkZR1StM6
	 yz/qnwA0/t3hf8jwfy/sP3YOZWU9Lu016QNg7it7CdgEHnkNrHD3OHe7QnvG9NKBQm
	 LGXsHOSLPXP8WGNmK8Fw/llXHwfKRdBVnL4kMi1JeoouQZ+WEraR0PeEMcYn80uGmu
	 i4UQU/HYvVExA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFC91077603
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 18:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177385949358.16831.2020865620694379774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 804ea3255a69c8beaab3dbe0ea33cc3eb26a7d1cb0ca2738bffce5630da814cf
Date: Wed, 18 Mar 2026 18:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773859493
