Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D9E319E839
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 20:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772397894; cv=none; b=uMFkFCd+Vyjuz7J+W8io2c1f064K6MHyAR0zYwB0yhH2j8rGxG4eX7Nv+rdNymiqLlcHIQ+fK3aOyun5SdsxsezVxIkUu1ofK2X0CharGpiE7Zy57WtwOZcb0dK3bRbBfrRcKR1Olr117m3oxy/+sbPU3gI97o/LbrXcl50xgcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772397894; c=relaxed/simple;
	bh=treUNY6HqDz5Fka1euYvGa9ce5yZqWEJQ9NSD5guc1U=;
	h=To:Subject:From:Message-Id:Date; b=uEZkT7hvpNm+ZqvkfxLHWMmGSybctQfzdv6b3STMnx77AMqRtaaAujfuP0mfrtFNR4ZGEKY63TfjBcltHAIGu6GQvvCUjCfahXyO656hlrYPygA6fc27k0Qb+P19V/tFBAwaIgAd7UU3DZT7tQDNElOVo8YwzqFz5/1IaZNx0lo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BCCLQHmX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BCCLQHmX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3102C116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 20:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772397893;
	bh=treUNY6HqDz5Fka1euYvGa9ce5yZqWEJQ9NSD5guc1U=;
	h=To:Subject:From:Date:From;
	b=BCCLQHmXTht2grTJHFnT4yq3aVEh202cqs9NQ29v9NLs3fuOi6+w/zm/RRAAKwvZ/
	 wxCiH9U/VrOrguoOJzs9NCmGP1fym+JUZmWFCfvpjscxSGvmvSbEVQMWMtzMmcLzpl
	 xQNQ0GWbGudhMGWo9HblgnXfTBkSvvk6uYh9GOAoHpPv8M4pM4t5JZZbBNiTZTajco
	 jSxNTMdp4eDhJTGpiNISAqltnN+U5kAsbRCPW+QuxS1GnSAYbhLLUQ64fj2c4LYt84
	 wg1g2wM8gWewbX73pNq3Qc6v2Q4gKPs1LZzlndgZeVkATfl5oRCgVUctn2j9NMRhlr
	 OtlVDGy3V+bgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A60D6FD0078
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 20:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177239789364.12751.15943615730891323377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f796adbf912ca541e15d2376b0402fa254e53458f6f3aa6347651bf491cf2558
Date: Sun, 01 Mar 2026 20:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772397893
