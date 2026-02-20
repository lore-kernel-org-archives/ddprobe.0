Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15CEE32D0F3
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 17:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771608294; cv=none; b=Gh2wplgspD+ILP0I3G4boq546hVycbVQBvmmPSUQYMWN/IKWorJ6kaLHXir47eW8Fs0fgXd5J0arGKXvu3QpVroNQwpzsfr78I1ITDXR51htgPmslA2uJ9A/xV0Kax5Du124Td5aiPiTnySUqP4M9Xk5ffYcrFVF/dVTD3YlWxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771608294; c=relaxed/simple;
	bh=iiMU4GrN9Cxepgl6q0RUUD3Udf9ODWN3QTbaeN/7p4A=;
	h=To:Subject:From:Message-Id:Date; b=AQiBeuK6wRt6rGHVU7PhnOfHS/n0cVLSaWe71eQxiXq6+Udmj21Jw9BOt2mcY0Kdjc6T4d5IgHzqvvD85YPUKKb2qPHXC4tFxqzMrKKX7UUZ8kmpa1xIjxsbEKG5sHF1+GprJ234sTsQrYrUVITqXhiFw50DVOcNpd79wAcFPdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aIPW3KAv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aIPW3KAv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6472C116C6
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 17:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771608293;
	bh=iiMU4GrN9Cxepgl6q0RUUD3Udf9ODWN3QTbaeN/7p4A=;
	h=To:Subject:From:Date:From;
	b=aIPW3KAvaH7Kt/XWrhB+MaHdjsJt71ZVXCdGchhMe/LvrgVAKg8Kgo0n/e79kmm9U
	 sPkzZtlGyxG5F+vUvYJ3jYg8do50JNsAvuC2LUnEFlD7rBAq/kqNsMnTPIwF9NY2R3
	 rzirws+V+GkknUdZoAXmGdaR9evC+vaV2aWRJg+yphYmPnZeH3jQ5AY25XGQJxDvPY
	 hAETBAKWJRU+sveyr4ZE2vZl78BdIKWyhfAWYKI7yZfDhB3TFZsVSGbIt/86wyEmPP
	 4/JuvDk9v8JBsWJzJmL0NFT9xSz0g67AUsdxPxT789RQ1myetx+rbW+eMjRdT2yloh
	 MWxSTm1TefeyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95AB2C5AD44
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 17:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177160829360.21946.13649069844810870714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec082ae48bfcba8c565a3ae97026dfdab1aa176d0e565ebe8d2d98cadcff36c8
Date: Fri, 20 Feb 2026 17:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771608293
