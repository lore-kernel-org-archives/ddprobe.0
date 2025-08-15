Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A12B28724D
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755262194; cv=none; b=gxn69cTTlsWCvj502Wi6G2HUz4JrA2BrDfqNWrbYmTNotMbL6tuR7gzn2HhZvmpsx3T+ak56GSyiHqY3hzBKpdLLjfn4NHycMLjSJYYKnfq8kYETworMa9iSHe9PDVHKwhSPuGYfyTxTt++oJzX4tUDcr5b+SDbu9EStPV8wwdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755262194; c=relaxed/simple;
	bh=gRMR/fTcsdn4MnWw6eWUsKZe7L1Os+RXZJpvrn+T67Q=;
	h=To:Subject:From:Message-Id:Date; b=H/HDofZo1p+lChLJ1gYp/8sXfEE1KKd2MlBTi/Dh6Y741T+YDhvdrjGUg9Sv0Ez3WDVUrncUbaXJDb68QZkHmyXVZgh4eTf8g25gzgzZs3ZvKwGkGbCMMEZrWneIeusCOn9Rx8hooVqje+XbyqwsJLP8DMJ/eY5WyqbzZjMbvH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qy3/2e1o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qy3/2e1o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE36C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755262193;
	bh=gRMR/fTcsdn4MnWw6eWUsKZe7L1Os+RXZJpvrn+T67Q=;
	h=To:Subject:From:Date:From;
	b=Qy3/2e1oGMRM9WOcPzfXS8HLMst7QKfNnl8s+IfkabgVbVrWc4kPxspSk/sY5cox+
	 7PNB1u/ZU1U4cq9WXZj2AxVNF1lM+ucQCpHDWm3m33K0rhlwQSix8MzBjqsaKdYsx4
	 IE5iKOFxh2R3Z1MZS/QZ5gySsgKmGbokZmw8bdO3hIjNx7NN3MiAdv7UG/aN2DvT64
	 04B6tAXGYZK8QTvv2Zx55xmKS33uSSA2Lg6Ksz3f5FwnYnh0sFNedvPp6ebFpuIic5
	 vVm1zzDZ04OV3NX0kZBkx2LFyyHSrSJqrj9oog5+daSFS6iOegQYFLLicKKjwAl2dY
	 Acfp4gycVqstw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90610CA0EE4
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175526219358.27087.15467964049772891826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1016bb83207f875c2f950a4c7152f82ac15300d926f32ca33ad239bf689a0f7f
Date: Fri, 15 Aug 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755262193
