Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51EBB8C10
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 02:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713579023; cv=none; b=QkKVV6EeZoL0ceT72Ag1KdqGU1pvkkRxKT5xPW24VrxcCaCLNoftu6VjDp4iFrFPwp19r6rfQZ15UMPrI+xTCEhwaSEP1Wj1ZJN2HwPr/Uyzl3BOFdnXaLRkgRfz1nOjSE9pzJ7/kx7nUXU7t/NQ/UjLUe19Z9YydQMtPd4LnmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713579023; c=relaxed/simple;
	bh=Q+h8CRF5DAJTp/WhU7TKRSsvljcqw2xTSkssSuPj0YU=;
	h=To:Subject:From:Message-Id:Date; b=ADvecfHbyFbrEeBDsQcEzC8Dfw6c3ahThZFMQNv4OP/WrRE0sy4tff8QHr/aSuzxjHA9ZfM0h1P6XRKf0JURS2m1H3BRnpQlDo1kXQEiRhYuqst+wR+UE2LGXHi9gxc0uTt1h8c14SREGVMPaZ7vdWgI/madlGOi2jVsD+jKLYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lN+Y5KFw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lN+Y5KFw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8096C072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 02:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713579022;
	bh=Q+h8CRF5DAJTp/WhU7TKRSsvljcqw2xTSkssSuPj0YU=;
	h=To:Subject:From:Date:From;
	b=lN+Y5KFwqlOYEphzHuN7vR9+UJLJsfzyJSUK7b5F9Vl+vVbTW9q0E2oPBU09RWn1G
	 IrBSnpbtt+60MrT76eUDGfbbTWYVA/sPlAc8GtEfB86Y1Dg9r0ZwjYU+pcG66VfdE+
	 l3Cr/zcdlExUOv5V+2TPhINDUbMFUUxK3VyUv3fMAXf8S2qumy6Ds0Vz15pZ49XHLU
	 kqwqTuc1ruwFU0v7n1mOt24/m8qg1wsS+gigDYbP0Qww+jZacdLDObDiv3QZS75cSz
	 o3HmhajCYGfSfpI7WVibbfRd7AUNCdj9FJYB6jwHfMxLDpb/wIlc8FBwutiZfml7cF
	 IIWuUoIGsi5AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C284DC4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 02:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171357902278.14683.1007653193125236027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa3f940f3f0f6c1f54b622e0ebb16598183614cb8f7a73bb9a81cccccef51a84
Date: Sat, 20 Apr 2024 02:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713579022
