Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E9CA156661
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 17:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774545294; cv=none; b=jpEyHAge4WDXX3JOjp1GZRdqTpYOcD/tPZEiA274W02SPNLEVKariq+iKxjvF9VftpQxBucvdLW1OEU6KvQmm2NL1zD29eMXifz3pvgcEH7RrGg58PLjDGHA4ugedd7odPKJaeyF4f/fZQYUzosYQ06/jXSzxN4w5aLEeR25bPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774545294; c=relaxed/simple;
	bh=vYQlHAljEfpD6MybiQkC2fNQMuvlQ1/NnkGLsOVH810=;
	h=To:Subject:From:Message-Id:Date; b=ecIJ7H5VlYbntR9EjIPKx9/gGn04Nja9GwGvXiuzYOt2R774+wmbeUMqvRzU1xXJRnR6OnVIbrjv2DnWP/bOZItTRyPB7XCSd5f1vQhaUSxmM8K5HKii8Ftr+GNJ5ivbRVGs0veJR9uSwaBWhV9dq05vPt1CRCpRWkaQpPkNSQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BxQ4C2Xz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BxQ4C2Xz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5891C2BCB2
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 17:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774545293;
	bh=vYQlHAljEfpD6MybiQkC2fNQMuvlQ1/NnkGLsOVH810=;
	h=To:Subject:From:Date:From;
	b=BxQ4C2XzJhQbLNqwHXINgcsogBvOdi28ULQI1o/ZaM6Q3qvGYO8kOV75z8zrD5mDQ
	 GxxXJ3tuzAEK3OtxMd5WLUtjCfUC8AItKQ1Oo3stvTgL5ZVzbltAgoGPtK8Qiyq3Zg
	 6m+dsBgyBYqFkvQiONi5iHDuR+amHOwaDdtNTeqKZSTFnvyMa1r6TY3SC7M+g4N9/8
	 KKeC6QH5v3m59juoAQ9I3OBnUk4Asf366RvUeCl8WKtWmFTF5+cusQ6ABVjWZYDQDJ
	 tDoudHelVvuMdmE0XR7IuR1JPK/k41rkuo62QZmM1Os6j3ZULq1DHozlvaCxn8FCWu
	 +AfNNqy788B/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9277110A88D4
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 17:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177454529358.18265.5111161425840654600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbbdcfe5d09b87081a0df8e046b8637d967c7455e6f60695294e49cb08788fe4
Date: Thu, 26 Mar 2026 17:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774545293
