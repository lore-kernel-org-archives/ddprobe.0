Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C933364EB2
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 03:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789615834; cv=none; b=Xqt/ogqHTrtu1GAamyM+M+R18d4YDciVk8sj6JO6J9PYoovkdxGmx/xBeEqxYwq3PyqATjoVW+EEk9tRTC5Ag2A30aIHcwdtuLcERB27w+V8Bj+ThX2L7jEn0HF5MnNBxjPuw5WmB4obaZFejl9k92woP07FqYaFWcUgnNRaPCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789615834; c=relaxed/simple;
	bh=g1QuFLmahZVUMQXLId9suyIfEm+jksNNwe6/b1fVGK4=;
	h=To:Subject:From:Message-Id:Date; b=jjiilYi+05QXHKBBYPAyhHAeXle5CVenjkR/mjHfmiTwHrayYoCD30kWhTVPsCpNgK06hBU1Ctss+6HMwnXKc1BAl7LFpDg05c+ftx2uOk9fRUIbmmQBfZm4YarEn+VLS/Zi7WZ+CMmnOhxNFwME0v6+mivb5I9Kw3GcTtKg+kQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ly+Ox50U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ly+Ox50U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D416DC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789615833;
	bh=g1QuFLmahZVUMQXLId9suyIfEm+jksNNwe6/b1fVGK4=;
	h=To:Subject:From:Date:From;
	b=ly+Ox50U+VEMq5PIME5rkxJZVVe7NmC1VO0D0XetigU1fRbAVhkOOa/JnrnBHCG3U
	 Cm19Aer7UvkoTBw+3WnuwdpzDBstyM6W2Tt2EMVh4hLBkxW7SEyLN0CeFIfLU+8CBt
	 ee88WAIoVglT4tNgJP2YrHGvYgm7w/ZSOeBd3Q/w+m8V+rDC+GZWes3UDNh0iVHHsB
	 3+5YzVVcHJynzLgAjrhR863t8Sjgr0xniBeRsQWAm+b8k7MRMW7u8zmhcSZW2eaOz3
	 zbJDPAIA8wlpc+bclPHjU8cbS8UBhy1kKh65cj37VMblmv1rt4OGTCMjvokFUnVvUi
	 R3Qi8GTChmqdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF6C6C982C1
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178961583370.24102.12533260580638911033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89a6d4a00a25c6deed0d33738788bc5b45e0b29ec6d9ef8997e253f8fc671573
Date: Thu, 17 Sep 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789615833
