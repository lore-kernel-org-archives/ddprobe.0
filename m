Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16C111078F
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 19:04:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716836663; cv=none; b=J+dSv+vI756jFB68XabZj/uEfJYEMfiQ8HkJ90g8XI3qb+Vmq2ET1lTJjrExv6+dk0JMHXC3s+43OQ5njt9wj5A2X43L+BAi5Bd93dxgWvTSv8BMSGj7Wv42w9Z3GiMObmegL2rBYKJDYCrC3xW9NvnwcG+fB/+h+lkxACd0l0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716836663; c=relaxed/simple;
	bh=vlw8fPKkUryfAEBsx3c8oVpem9sa8mTrH+Mi0CitrpA=;
	h=To:Subject:From:Message-Id:Date; b=bLa+XCb5IEi7lKZG+q7X+GgejSnnYGmMcNzYoQ1kG63GERW11j6JKWgtydQRxxpDtijYSZJwUYf5+A+7oFBJvAzw8x17hNcKT1gq0gd11PA+6o6cHUPyB2unk4wEfwuTHj7zJrx2w+KfrfDuKYoW6Vz43xkxuXFlFtXVEW/hGCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FLxo3r3P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FLxo3r3P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D907BC32781
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 19:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716836662;
	bh=vlw8fPKkUryfAEBsx3c8oVpem9sa8mTrH+Mi0CitrpA=;
	h=To:Subject:From:Date:From;
	b=FLxo3r3PNyfrtVA9bXrjIjIqAVmVdm+n8hORudE6JaToQMOiiy8qmcYxE+z5FyACr
	 3FWQL8yjCeKl3NTyTBvFiFgm6fqBvvA57b3LCxDPboVK0osxoT6/g1NZhmjRSJLBFo
	 8WR2e/CXvsb7ksmFSDFe2D2AZnixEy257IkwTcu6g2QvSfbvW2eitpn1ZTzqOpDyV1
	 ygQMFWR9ORrPrfIHCSuK5NF43N/xgNwb9qF8botkGioJgV4aRK45OrZWFgocfGIS59
	 iGPOFN8o3T+pfixwXVa0te1JeZwcBmvCFUsKi0RrM214HJTPLepc+NJgiJYmkx2qHW
	 Z8xSebfNv3kCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6159C25B74
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 19:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171683666279.18162.375696681474503238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4749cd053290cb386d6bdaa39331da2e8b8bae1a03b6fccac9c6ab2dd9b8d655
Date: Mon, 27 May 2024 19:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716836662
