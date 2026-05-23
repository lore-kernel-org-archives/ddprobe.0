Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96B74306746
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 18:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779559354; cv=none; b=pFXIGigubEo8D6xv4jB8oV7KoUC4dxlDMuaa54okhYRXpzhvnhJGmWqUkvcjr424szhRQRqYB2aMa2d7IJi65ckq9rQZtGP5mQGyH9AdYerV1uVbSeBrGkSf96NCHg2yI03u7wgW//l/11ruzF92S2jNkKS7dx3f4jDUOh+xaJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779559354; c=relaxed/simple;
	bh=PDJX7D3bPGbCF/uvMru2a6eeFm75MG0UgiOFDrcddwI=;
	h=To:Subject:From:Message-Id:Date; b=HsN1/q5BXJH4FHjs3ZQTOJvqjhKJGu6Ddhw/xXX7HE4j3NHIL9mu6PwucvrJNKLl7nKFm7mazD1GvxDYIiekG1e7W4cTuDqQLjK1x6rsbn31hTarZqfUrKXwUmoNoruRJ1Ksz7SdNNqqpmRps0UapVRlqVWYnuLCSdKK4ftj35M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uhRHBRLg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uhRHBRLg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFE10C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 18:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779559353;
	bh=PDJX7D3bPGbCF/uvMru2a6eeFm75MG0UgiOFDrcddwI=;
	h=To:Subject:From:Date:From;
	b=uhRHBRLg1WmL8Ya82KP9KPkQVhgw8cNICXD7fiuOzLP4USZncxvdhAtKZbyYAe6cJ
	 DU7OrC9QybbEZVX3YDWmMVlkDj7RRtJ6NTRYuy9ZL8u90x/TzuHlZq0yBr5DSLYoKu
	 FF2cw7HNJZRvTDneg/21rx1se4FsdtJRkQinXdE5ucdcfGm1uPsjCU4LwVqW6Ry0Uo
	 bC7pXWi1wwTyYNAYqCZu+Ogfn7INHIMTGVOucY4yg0wpkOcaavxYkiy1lIAvIIiZMn
	 uaXxHDVS24WW1hiauNW1MzQ+7YzWahKmBfqhE102nKPUwyJbBoSHBOyjC40vNVPUpo
	 XxZW0el8/D1eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A91C8CD5BAC
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 18:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177955935368.23730.5766486537763988832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f24a876658c1f765f931598f405f0b697faddb81b139253f8b4c6939b60ee9e
Date: Sat, 23 May 2026 18:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779559353
