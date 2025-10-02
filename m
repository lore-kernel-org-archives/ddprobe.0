Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29AE125A2A7
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759415395; cv=none; b=LymVmpvJPybhlq68ZQfWi9GsLFmrkCSzgWc/xWg1sVpHy4jvAl4DjG7nfI8lCmH8eLLEfMT5LWcBkiMD2rYCnMj7Te1sNkmISEJOzELBtyOgm1XG+vkk5i+82EX6R738P7EhL/VCiqPY2RX+qLuAt2HuqY1U7Iguf01dYXmA2MU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759415395; c=relaxed/simple;
	bh=L/uvVwQ2xRGJ99NMdUO6f7VhIyDy3eQNBoT5AaxPQAw=;
	h=To:Subject:From:Message-Id:Date; b=bHOtt5JFh59iUHxtTci7l5WiX+nsMhNIKd++8h0QkYaiLXEf2Bi+2HWSlMhh6beJyEHp+I9I6aij872ee6YcmYK4INlhSjmTUuxEygBMpSNm5wvxq7cOo7scB9f/xuRyheT9kB2yqRWzotSVjPEIt1i9z5swkSpXoVok86lmlNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s1hQ38VP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s1hQ38VP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6AE4C4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759415393;
	bh=L/uvVwQ2xRGJ99NMdUO6f7VhIyDy3eQNBoT5AaxPQAw=;
	h=To:Subject:From:Date:From;
	b=s1hQ38VPq5ji5q9WMaz5vbWAcf9A0p6Cy4/60cDj+eETBfWBs0CstZ578jqwNo6Hc
	 bUJnXvadKIwJPNf+hf3/Zx0FYDOjYOC/UBjMBiRdsVaEYid2j021MqoMfdAyjfQKdU
	 UEaFMlsHgaVMk4ooyAZR9z4K1Na2llownue6PmgLsSkik5zps7xqDQFOmkWmAK11fF
	 ycfu95nkbNsWK17BWs43DZQ0m6RfbT3zpWYmzASSZoIcCqtKWgBxuSGJB3jC33Ir1x
	 umxMFSlBL6MljKuvywYUEzAji6e7Fq2WUDEujm8UJkPwu1/GqcYGPfW58ieGcx6fDe
	 q56iFEoqpETWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95659CAC5B0
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175941539360.24328.11883822038362655027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8717fdd8590a33caa4673d8f6a0216294efc6ba6a6042b62c300486af35f09f0
Date: Thu, 02 Oct 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759415393
