Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C359171BA
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 07:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715929343; cv=none; b=BG4OoVUpOzZWNYvuvVcgPYnBXg8aHGZ7U8pKZ6DtKvGjuuNlg/M1dfEwBPaH/T134sxv03ndrSwEW+0ktcHOua/p5JTsl9S7M3vKpL3T9HbgqXHjaNeTFTyzUW6NHvq8zxE0idN1yNmDSodO/KVqEiNFi4K+i4Y9gAIKCQbIT1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715929343; c=relaxed/simple;
	bh=RMin+kl83E556DwC/xD8tLmppuPRmCqOjTsk8Y9lpQE=;
	h=To:Subject:From:Message-Id:Date; b=WUNx8y4OvMS66b8bqrzuJzhWjIN7ejOxzGkUhIfX57ebb9S+r4iudg1o6mWxHXgMevXMkkyIl9oY5Hyb1gUjowflbrCnUMn6WbCtYW55cyGELLLKEb1v5Zf+PN/FX7Nx0CMSSROBpNk9ztPyt+J4xm1fp2feetxazwPaMt3sRq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VFn9jaMy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VFn9jaMy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0198C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 07:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715929343;
	bh=RMin+kl83E556DwC/xD8tLmppuPRmCqOjTsk8Y9lpQE=;
	h=To:Subject:From:Date:From;
	b=VFn9jaMyROHUksA5ZP3plC7JpXN9lgGtX12sdmF9AJzStLShpxdypApDamdsSIyvH
	 OsyrXCDM604VOTvGIYkcP+X/CtBx35oaCn194Lw0AcwJ4WDj68FGgDJijnJe/fXdUC
	 wQiKfRqSB0tM6jyco9eBmYMSHR7g1mBGX5uIxguxFxmAea2q1+LU7hCwaG8C5ai7qH
	 u7R4acuNP/Fy1Sm8gRp7Ss2EY4LO+IhYFTV5Nwp0gsT0n2qreSS3axo6I9TbX7Nzsz
	 AnYqS/F/jWrBCe9s7mUHgHK0EHs9IQNI5LdIJmbVQRDkfr/06WfPypSvtBsSufd+Z0
	 SiXNoO6U+cCFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5D73C25B79
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 07:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171592934286.26442.17571742318708299569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe8228ce27eca612992515846bb48fe1b813c578e5dddfc0d1eee2490f60ac49
Date: Fri, 17 May 2024 07:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715929342
