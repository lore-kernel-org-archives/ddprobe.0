Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1503315665C
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756392594; cv=none; b=ksGE2J8nzKtNKilM3ierMarOv6Hw1CnGWMTN+1SMsKuOYeuHvDkDdvYFk1SrxdEXg5nuU0TM8V0LDIRbrxotFkTj7nNfZYFBsbcLJgQ979CXauKBPNvhZyZ3174S3+YOihARhdUf/PaXOOuFLnFN1d+TFgxENm4HIfdY1Uv8Gtw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756392594; c=relaxed/simple;
	bh=fQXsoIY/wV2I9X3rVwR7N2wAYn3K8sxrKumH3GfEKJE=;
	h=To:Subject:From:Message-Id:Date; b=LCtyE0gqK1gUa3/4sTXBTFuV5r014BevikB3toKq9ukB8zR5axEfVLQEf6EGJlrGpUKkELhjxJHc9huVHwr6w/xebn0PJRhTaXftgvhWrtwwe1vG4LllrxRrtRwMvboPj2SIbU1Q/eieiQg7uO9NzUus/ZjjPdk88JUD0SZmC1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tgexC9+5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tgexC9+5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DCADC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756392593;
	bh=fQXsoIY/wV2I9X3rVwR7N2wAYn3K8sxrKumH3GfEKJE=;
	h=To:Subject:From:Date:From;
	b=tgexC9+5nuYyyHNvWgIK1vqKkG2Ygf2AtVgD42YEI4kRKLkmKqf4Z+B5hH7WSXvHD
	 7ZdkvFnXbNISD1YfyRJsXjm5Xu9+mwEhgVuO8IV9RvppWEs3k06R/7n2PD5XSMoqcR
	 q8KREbKpPCRkZ9RuztZn4l2Bu56qoxNTePcAnHejDB7epjczGN5010PoRIlap02cEc
	 piAUyRZr4HDXhTZVsMu8j9lrpphfEAYAwG8zh6fpADzwp4JUPtt/tFtXDx2AP+SDb+
	 uAbxhBYnMpNmSPEMdtq8U+/xHfSRIQ6VGRjGI26TNjaTEqoJiTpcobbpTuUgEhom7/
	 z+COhCPeUCxyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC6DCA0EED
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175639259357.9634.3946936476667626601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f477a0454afb128bd7d96aa75eedb352b03cfae0f38d30965e5c30c40d253a0d
Date: Thu, 28 Aug 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756392593
