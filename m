Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2788C158520
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732884354; cv=none; b=fzC6nWcKz5A17TrUNQ7anCYNfUaWxia8kJDnY/YL4/mrz1lbXhec8j+HuyDjGhO72pszWvyLiRAHcVM9kDQPK0SeN58LdRY4XJfk68S06qGYNQoSvASDDC4pYeE/x8n+KD1hGQAXESg9JhIXG0JpbqXv1S3WLRU6cSbV8+qCYiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732884354; c=relaxed/simple;
	bh=dwdKzGnH2HXQnjywGdAIMeC9s3t9prcrXppC4rglrtU=;
	h=To:Subject:From:Message-Id:Date; b=Ma6qGPOfv1pypWFuGhYlBVm7hdpfMIyFdVLgmNSH7a39xJnSIQNBdYD5FxzfuxU5Whw3Gr+vaYy6H7zxdcEhxM5/J7rQUYc02gdvXr3t0xKIcwPC/yuUi/S1y0iSjOSL522vYVXjSyEXRH46LJ4Htl7jXxNMylppXxAE3POZlQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XpcJ2xRn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XpcJ2xRn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9190C4CECF
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732884353;
	bh=dwdKzGnH2HXQnjywGdAIMeC9s3t9prcrXppC4rglrtU=;
	h=To:Subject:From:Date:From;
	b=XpcJ2xRn1Y9Pr4Zt7jBQ1Eb1ESHHQ5g8POunuh/+2E7S195QukPzkZo0EW8k+rcvL
	 xspKvlvaQHmpG85kgeKrif+3IhGeY7juU+uJS0Eqmc7pdA7CeThraE8j26JB00Ygme
	 o1SlzA2HBRvtcCHifC7zOz5aTUmGA4KWKQfTv+Sc/saCNfHsPtYQW1MEBwFFvSIBGm
	 hK04A94byf5RDY+1o7n6J2U4peaB/WxMfbYritROa48d9f50PyMagBkwCmesUh+L35
	 f3LRy/ykoyxCM5Svq0beFm2kL/jEyy4TL6k8nrmSFHAzImEsdbb5h9QHv71ITwE8Y2
	 Mjggc/4C4CZcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C01D6EC06
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173288435360.6693.12443933792449817968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fc7324327cf1ab32a4eaf598b3d94056bf7f4c08fc7036d6c085211da8ad7f2
Date: Fri, 29 Nov 2024 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732884353
