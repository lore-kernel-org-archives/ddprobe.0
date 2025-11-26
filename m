Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B4892DECBD
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 01:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764121374; cv=none; b=AWl8SJc++eHlOoilE/2/upfueiFO0oNHyBUQeyk8k2mTSZ/gAS8uAHw/IthODDegYNsmYOhlgeVNHx4nj7txvjjwX/v4fs9ZJjYAVWGJMpzIMAd4ACo4e1RMcgvqy5w5iSqj6pl52ApKxFuwptgK5yX6BWx2vfm/eAT4+GISIVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764121374; c=relaxed/simple;
	bh=rJ+6ncxhio/2D8rrsabLxIGH8KQ58tl+Z6iErwc/JcQ=;
	h=To:Subject:From:Message-Id:Date; b=fX+IbA15LO+xvYZTPV4dafX+8yMAy6/uc0dF/sKV8wa2vRMw9NyMO9/zV19JulcEnRgYag/jpY1QNrx4P0AmoJNg22jQjiM9o8/wzxKTdeq5tUSREgMJ+ragIFXzYFVKYBPUeIpS/KtJZWQh9Xl+YUTQRgis7lUhdAPKTSgBsUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DDMuEcgO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DDMuEcgO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B26D6C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 01:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764121373;
	bh=rJ+6ncxhio/2D8rrsabLxIGH8KQ58tl+Z6iErwc/JcQ=;
	h=To:Subject:From:Date:From;
	b=DDMuEcgOMjKabotoXHBJ/dKuFlFW8+PxVT+K9NtLTwh23GyI/0C14uSxBEL9Wd6Nf
	 ybVCRyFDbk/r/wG+ua8jVMiYDiQxaXjImB+NrZ6osqbZNIcrwBO2AxLAdhwEJ0Uard
	 SnnXeojHdsQVsXDjgQzJiXi5psJ1MLdA2xOzJwrbxSwMgNyuabFYAoGrQoctP3L4VE
	 5PHGTCJyaOPPGkjLgWWe90e9jztBX2+ZU3kCCpgwgjBW8UBEVGY9jOh7lXX3UyoAbS
	 AT3i/RHBVoBK8tA0Q1dr2E6+PwqIQsGD+KpWhx/OgYp1JaNwa3KvYEIRLoOLZLsR8J
	 vmR+HXl+m+AUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BFF8D10372
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 01:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176412137358.5635.756824167758676156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e681252a8d77788e50df7ce6bbd0736c1304ef8979f7f3643f76d7bbb5f29fe7
Date: Wed, 26 Nov 2025 01:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764121373
