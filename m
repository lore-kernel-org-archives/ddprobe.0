Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FFC12E36FF
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754804994; cv=none; b=HBfCpm7yh3E42L3oKWFtPwp4k1wewrP/o1oeL/7rpLT2jSozlUkPDVTDwm2Eg7fTqFRGWOKmm/Yo6w8JaITjfTaXAf0y+fnOAoU4xinD5MLw8s9nsDqRNTTWBQtbsJvEPTvOb9S2YAP1nTDWNtvu3ugJ1FEDU1oOnrffx4zLn4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754804994; c=relaxed/simple;
	bh=fVGqe0ac5rexDycuf94juYHRcoOXMwcVUX5tcplXXiI=;
	h=To:Subject:From:Message-Id:Date; b=d+7lPjyOJjkX1ZfM4iHM3isgWR9Z3FT23CRYNdHhSw3SnelIb+khqftsgGW/errmtd6Bh7dtl1bmIQRJXwH6dYWiJi8aTYz62ScbWzcgqnZ9pCUv5LTuKOU2gV+0oKfJwfAmNlanEyo73XL8wpbdYMBvH7EpZZwKlje35unbZzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BqWOMYf2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BqWOMYf2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A195DC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754804993;
	bh=fVGqe0ac5rexDycuf94juYHRcoOXMwcVUX5tcplXXiI=;
	h=To:Subject:From:Date:From;
	b=BqWOMYf27S1fnYNcuAFwM4Uxn6jLXAHE7ksSv0McwRt4AHQ8LNJOxyq43nZhEzmON
	 xF4rC5UH/N6fRo+gmg3ILzQPe0K/Br4prZPi4D/ZKyr829wSSa8cLQRQ42t3HFulpt
	 dvzUdoJu138wBW56xqYbDxgc6yfDfEuI6N6c3Vu8c5l5/QlYDWNoCjcVVWeNtfFWaV
	 +eVb/d6s0YUVRkZMSDOve8Qn0T3GWvMH9eTp6DWqfD7VwS0M+eaLagVnXK90XRbfUv
	 GTdmV2Xae93uyBYXB7Ig6y6IXJ/p+Z4iCQ3GfC48LqphHP+hDRRNkMdA/RYHy7dpBA
	 XN6GpzrQbCOew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C35C87FCF
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175480499357.16678.8694182809018599625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e99142c754fdd53835e98ab9cfe3ba4bc40fd4f1a5c06189a8f8c957fc4731e6
Date: Sun, 10 Aug 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754804993
