Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F1543B0AE5
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 21:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778101654; cv=none; b=dwXMMJVprchiudJqsWixLHIhvbToHNT61JXWxNE4JKUVCd1NDm5Dloh5IMo9bwKas3ThERxyNSwNIzsTrkmR9j9KG3v9x7zt1DYwX+b42GxVCqivFnj95Puzyq+nD4G21xzEzj9ePZuicAwVE/h4B7BgJWcJICYRCSnX5byJwvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778101654; c=relaxed/simple;
	bh=3c9mjXznyEHdjKsMpgfy33Z438aBE9jY8EhC/Ilwub8=;
	h=To:Subject:From:Message-Id:Date; b=V2gYjFygfVv0ShkCCvKNehV6Jip5HrcGtHoIJXN59AmPxeKV/CHXROCe2rewxzNj/V4FHDHjnq5XEICKU0xkke+VccvKi5X+iAK9uj5UT2sQ1U/LZNz/KWLYVnb5oXO0SIxAVdr98fNndiHGi4ZZe1Dz/p9RjL4lxLoeFy8YiEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EdmPkcXP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EdmPkcXP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1707C2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 21:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778101653;
	bh=3c9mjXznyEHdjKsMpgfy33Z438aBE9jY8EhC/Ilwub8=;
	h=To:Subject:From:Date:From;
	b=EdmPkcXP+qqx7tfjg7NSas5r6xv+KvKBcLrwcig+KReQbuwpnZXYl+L9Wo+dp+1Sl
	 X9I4Fuo8O0cuvcpF9VQfeea+lJqEAAKycMGIMyCo0FYBECWZgW1KYvn2W+7HfCEw3f
	 Zll33owd6lbI5OJaiN4KW2lDpxGEpoXcFnMrQywFbAlg4PUsbcJL5jvwA1/hDtpYtW
	 0tD4S7QU9yEZk/CUbW0EEXtPtdQYcDpf3FLMQ+tVAGBbiEs7zWp8rjsmaUvSrlXZ/W
	 OH3MBBEAGIytKucjjMOLPX+OI2dYrncK3PN0K2xdPuJLQIY48l60r2/shTFNj5cXjm
	 T4WI2GsvZhzUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2296CD3439
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 21:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177810165369.20604.17560547448069546060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46f2d1be8667e7745319ab48d4bcb3996c440f7e056980fafd477a55c46b4807
Date: Wed, 06 May 2026 21:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778101653
