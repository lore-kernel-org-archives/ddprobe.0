Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 363F43E0081
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 23:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790380234; cv=none; b=ju9zhq13G8VVuP6fK8CXILpOfiWS2eTR74eWFagSvGcAobGmQUkHsc9uC6HZToWHIgI2wJG8+KXkiFAF3M014LZkfLL12KhCRV31O6b7Yoe+bghmTAwVG8nmyrJO5qb5LhTVU5MNFf0RsLc6fuFk2QDc7n+0Gp+WvTukn/SpxrE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790380234; c=relaxed/simple;
	bh=P8yqOQwYkyB0ElJakrH/YjsjP7po2KUB6jq1qBTnrS8=;
	h=To:Subject:From:Message-Id:Date; b=M6mA2kI6g0wghUlyzudmJFp1iaNTwh+Quxbyx7On+S7jMMT/x6CUVkd5siixFrBlCUSDtCltI1PmEEPX/HQx6DeoSSRF07lqPjtPhNI45YOLB5c3CAczZedrdZh+ASSKLFF46NP3WC7M/pMkb56Spq0MUU8DLyKW6PU9+lbtlMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ENX7Ntin; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ENX7Ntin"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE994C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790380233;
	bh=P8yqOQwYkyB0ElJakrH/YjsjP7po2KUB6jq1qBTnrS8=;
	h=To:Subject:From:Date:From;
	b=ENX7Ntinf7AckxnjXKnSXeC8T1XyIIQPNwLooAI3Cyr864E/3swNuz9NyxRz3h5v0
	 +7pFEYdb5AFTEwHvBIAj/crDQOwoGRkLjZdMDqeLLprhnWSqmeovZqVWRTQkDn4z5m
	 u3FuWG/4GF2GFA4XHYT0WBi3aFuuHJczr7TOViYGckNLkpBm/Fi8Mpd6xYFv6P8EXc
	 lQCSdkqFfAFRdie5ItXcxeVnh614N3BIOPhd8/oGo8ebX1ovSk7tkdB41cVvxzil9k
	 +97uKVtZgO2C3snHH9qr9uyPZq/0XnPs1RkJy2AGsORmiDYy+34Yla5N8NdWYML/Md
	 vSU+UvHOAQHjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA30C9832A
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179038023369.27525.17870509488788120267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b19fd79e81cf27058a5728e71c7cd19c8775fa36bca0b172c9a68adca8805034
Date: Fri, 25 Sep 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790380233
