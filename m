Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D024383
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730861754; cv=none; b=WWZOcdBS/Qit0D2g90iFuc6FwZLN55ieeBPvquFK+au2pEh/i9iHNFfiXdukEtMXe8WYjDxbtAVobqXrNGmcfCn9xyPId4tt6Dqy+oihqW9CroZJML83UrDIyWyY5KaH+j7pirS5+llIznQfZInHVfYL+h/3ujQXUvaMm8EbxEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730861754; c=relaxed/simple;
	bh=fa9VYt7t2D7B0v8aqX5U6150vV5br7fc5wkD2roe8Fc=;
	h=To:Subject:From:Message-Id:Date; b=q8iJRRXQtNYvIz9Yre7D1A19UFi1zDy8QEOZflqYwdY1uLVJo3IXo6ydp364aeNRjfarb73GHq+GWigZBjPhg/KCPvuzrcSfQPU5fS9/T4UhhU9aUbFldgMqCnD10h0lBP0yAE5lkrghxayz6xv7euiSl9Ws7JrRP4EXz0Fkna4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a19VUOcW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a19VUOcW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB1B6C4CECF
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730861753;
	bh=fa9VYt7t2D7B0v8aqX5U6150vV5br7fc5wkD2roe8Fc=;
	h=To:Subject:From:Date:From;
	b=a19VUOcWykpKOYcQBmpSX65VdG+zy64ytG35FLUB9Dyhz704NcNHO2aTN6x1pxgl7
	 NZV3eORUnXSTTBWmvxfwNbfv8hFPNAzD93GVt2sPKbr6Qk2/wo9Ge0XtkEykCFM9dC
	 zI/HKXbPj11AispMxXr4Ou+vahozG97GplRxVXCcDWuNVi1BjdhqO85pqqWRgfPy3/
	 VPLAlGIapTd6daLSOjuSyXqKSX9RH2f/G8Wz4F0ziTx8bm3pZvhTPIeTC1EQ9uZgcb
	 WFqXCvNO0cWTbMpLJ6WEYfV3oZkLJJIDGYBs3l+NXH4+Tq4zX2n+bo71KLRWi2uCjK
	 6AY1OZ+yUgAPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AA7D3E783
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173086175359.23637.12740805973606634489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d9995ab8773e8604d8873f03dadc56b84d713dce06d720d7bce233b5bff6b4c
Date: Wed, 06 Nov 2024 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730861753
