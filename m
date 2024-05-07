Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38365187326
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 21:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715116343; cv=none; b=KH6YOGDbx4V8PtbhAySK7b3B97+DLucjkz5cNDioWo/6Gs1oi6afxg/KLpDpXG03xBB5XMfTvVK/3Q4CjWxWQigovtSHFaItoMrbrsmiqGoTFEXLXJD9ifbQi5eXfuyM2toAbr7Us0NwgKOyt0A9hWpq0JF2zJSQR3VY/3d6+oQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715116343; c=relaxed/simple;
	bh=k6h672kDjg33eEjGGSqXw1SahnhIMG1jImAMeHDukio=;
	h=To:Subject:From:Message-Id:Date; b=b55nDsj2jtQbxyIhIIhcJK4CUBD3m2TK7mJuhuoizU7ZrPp2BDUgYQ0pVJzMdE3JwPV2cMxXVzADfxkP5PKEcM9ciJ4ei4WRLeSRI6htA/+bVP26Q6DIL/r6vtl+wg+00cxur+U4i+H8wWGUXXJ9uSJXuamZXKCOoxQDccASPOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dvgSKvk6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dvgSKvk6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 17FE8C2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 21:12:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715116343;
	bh=k6h672kDjg33eEjGGSqXw1SahnhIMG1jImAMeHDukio=;
	h=To:Subject:From:Date:From;
	b=dvgSKvk6i5YNIYb96zg005LW/F/KX9tmfFhnTsFfta/VG2F0qUrFSFuESZD+wvG4E
	 EDCWHT668FcsTq6GhKn7ZD/EUz0+ZOaBKaQvjj/eKHx48eNAAiebKFtf0vOu0g+am7
	 gQIfuW7hDYC04kFOpsqx3GSzim8hsEQ0/hkyWQ/MQqGcwgEj8N6kPlERjHRY6pL584
	 RJlvN2Oxv68a+6e262TG34vllf9KhmLK5HddixuZjqOzX7hWXkKYdFKZOYcdobL5Kv
	 Y7dN0TcHLuxiMEbNXeHKD4wTqjraM0weZzR8nwQ6S3YcIbBkd6idTDjQIw8rSka5cF
	 zILwEZk1g21+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0345BC10F1A
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 21:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171511634297.23819.18037677456260490143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bca7d05e0979341e4df547742a4957d34333e5f1a3c4729231d49e6eb45e4ad8
Date: Tue, 07 May 2024 21:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715116342
