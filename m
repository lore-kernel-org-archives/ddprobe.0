Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7079332ED39
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 04:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784607514; cv=none; b=E1GsW5KITa+cC4xa7pZ1kS7XpZpfO/ZU6CPolqQhyr2EJPC2pWaJu3ZceuQRKRT7+yDtIs/wnzTCoTwgGo6VLis3Upm0e4Aeo1GEJ3mCpAH8x7XsfJiQHVeTx+e3gL7UIplhQZnL+weDdFlFEb7U5lUBp+p1o2i4A9WlZW90IyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784607514; c=relaxed/simple;
	bh=CxJgvuJZkYiz28PDBYj+05eXdP965RLJ1MudwwdVX9A=;
	h=To:Subject:From:Message-Id:Date; b=bvpYjkG/Eb40OxhRDDRvgzPKE0O6C+wQSVo7CYQIKQ558cKgLa5zeXya2DR47e/df0nRhlSb9lchjVfRC5zi86GBIThPwoT6VJsHzbAe0YvZiiH0qrfQwVJO9x5MEDJkGAWA9j870zK2ThTn7tMd00UWAXJwZh38m8Y4QSONCgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m4mxl+eo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m4mxl+eo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2185C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 04:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784607513;
	bh=CxJgvuJZkYiz28PDBYj+05eXdP965RLJ1MudwwdVX9A=;
	h=To:Subject:From:Date:From;
	b=m4mxl+eo60k2+4Yo7t2Ye1rkfJUrToe4E5SwUYG/yCUxOD7Iee3VLGYueExo1QD5o
	 w8lkx5SBl4ThpUf0uadj6cxMzlY7gKjR5b4rQvDfU08tWl0xwZleeE2rszannfrM+j
	 v/ydIEyWH/u7ZZ2WTYsizae7+iNib+4AtPQKSHYQtV5EurF4HAL8kNlSL8OjG82MsC
	 BxN9wN/IJ2vAp91lAdUtLUyfIFVKYjL2CK4e0+oCZdsO9YKQB/7t0VaquLttGtiubI
	 7E7TW9aRuKyqPk3zKp8I4nOsfn93y60geIaPYIbvzFom1tB6e/B56n9fo+umMNeAf7
	 1h5qb586dnGSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF1FAC44529
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 04:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178460751369.20745.8097491040252287831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4ac7eb4b10c2ab8998e6339421994fbff21109e4ed18ab05ef0a0da500ab590
Date: Tue, 21 Jul 2026 04:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784607513
