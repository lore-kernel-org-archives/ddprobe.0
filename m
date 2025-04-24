Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0B40178372
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745507993; cv=none; b=s4s1XiW5v6ryJn1Gen9gQodMYrwIxW02WpZNRNJmYOjVW2/Gr+EY/UI0/s+G+ckIMISLWEk3F/aQYE40PfzTOFenDSgKLNdk+YwDjdUGtCZz7gEWwnzd8KZF/sE0jC24HGlSa5eyu/087NpPaa1NFb3SN1Lifq3cLPeUBgjVLcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745507993; c=relaxed/simple;
	bh=Xl4Y5m1rgkHMj3aOTSNoM9h0Zr8c5rnwikZUNibIQOw=;
	h=To:Subject:From:Message-Id:Date; b=QhvGbNsqh+t3murouz9dnGhll7ujmR0Kp1Ml7hpL6ziyl+AB0KmbYXdKj2fJl780UmgFalim1SGMsoTb8WWxmnb4HFeu3EEXMVTX07p9iuIhiRCRVKi+4SgzsTI2Xd/9m1XcDxXSqOTT+/ZKVpAMQ7uDZznsMxOpRiVRbi+6/Bc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VT4EMnkX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VT4EMnkX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E4C0C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745507993;
	bh=Xl4Y5m1rgkHMj3aOTSNoM9h0Zr8c5rnwikZUNibIQOw=;
	h=To:Subject:From:Date:From;
	b=VT4EMnkXPf2pZS5x1d0EgJVfiLXwLLuVZ/pK2cNIVL+2RLoka81olpIJ+Ri379oWs
	 rILTNTcgWEZ/zxenxUDJXw+OSMon3KoFubZF+6J57ZJqHUiTgmmifgwG34WnFCQVXo
	 UYmFWJ8HMi8hYD9I6GmtTGOJlUfSFOGf5jrDWDDYy6LmkvP/+d1RNh4YQ6laRNlGv3
	 psTHjFdyiMZq4qcs7iF3WaWigyZ/YB9T/knwkSe3I5oKvt1MAuA61P3WanHAeN91hf
	 /4b07Ywo2VDpgHeJ3rCCG9y683W2o3Lzj2I6rj73PFz49hSRvYVtacu7Wv8PrFe7ne
	 CNGSSI1SxxMog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDD1C369AB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174550799357.25199.16472532705564170086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3628b2c455a741b6b5578a1b380aa8ac195c5f6b51f6c52f44cfcbb107553d1
Date: Thu, 24 Apr 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745507993
