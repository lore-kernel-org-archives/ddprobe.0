Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19AFD231CB0
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728835554; cv=none; b=GzDirKl52/M+RoWD5/te8SvCYFKU+5MsBi3TP0KDJe60jvylmk1ySFpGy+nrecehClHiJsbZxUqo4GsM0ymP7Gvr6TbngL6mxbjTWeR+xT9DZsrTA3h2679g0mQHbreUmgaKzRv1Jld/7eRWkWwPWbigevWQ4FVLAAXx3BQK4sE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728835554; c=relaxed/simple;
	bh=s8qFWx/t+Yr8sd1QtCFyuDEX5GFoeXFYm0H9IoGrPWw=;
	h=To:Subject:From:Message-Id:Date; b=UbR1x6WYmvccb5i7iGHxIpqjqM7DrP+RKIMu5pt+Bi9EY+ZyFJ9W4r7bK64WILjfZQVZEa0U7zWtuLifB+LTH311saxtNmDG6rQDKUytL2sqpbhdMr9tWqaMadB/dMjI5sdxgA+DL59BfRNC842LsByGKZ9DoSLB++UDyPjPUVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m3o/ztmm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m3o/ztmm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F2BEC4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728835553;
	bh=s8qFWx/t+Yr8sd1QtCFyuDEX5GFoeXFYm0H9IoGrPWw=;
	h=To:Subject:From:Date:From;
	b=m3o/ztmmL8nWDTymPFMkiCicyR66K7GngxbirumikE/hZJuQAyhdsDzMWGVS6k7xR
	 SF2AvN/dDe0fqaX9Sr7WVn3mPU6IxxE0OsyiXMVydLxyRyir8YPSq3dl9Of1v19+oG
	 hTrt45C3xEO2F6/uR7ZXYa7bWkbvlB5zXQ64EnnPwKnoQF6fM+lX5NRUNVSa8Ts+ME
	 k9mRJwQM/idA+wDt5FMnUIwF94QncvcWETuiFQsPyrr4ObPniE4jO2Fqg0jxcX+H1l
	 9yY74sSTUT++HkcGke9J6odkfux6PrLZyShy2daO9GXqJqrlaj5iRuilUQB8avl6Lz
	 rURHhgwKEac4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92185CF2579
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172883555359.18627.2982268867322124698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e011bd67726345a1028a546ea10766a0c393dddc32c7d5039b9b5c98f88df93b
Date: Sun, 13 Oct 2024 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728835553
