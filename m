Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58BCF4D8DC
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 07:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717054463; cv=none; b=swOxVmCr/kUoaNGDd2MivNovQ+Bwg5V5xeitJQ6Wr2ZG2xS0ntWslSSZJgY+c03uxvWmmdTYIiepRXd+TgDfm1fZ7uSJufoLUQkIAd0bVmZMs/Xs9qWCQjrJpb0OS/b9YG9Tgo5p5JGdLK0r9bhG7bOMoj5gXg5K0j/6mxUsli4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717054463; c=relaxed/simple;
	bh=mZJ3Qau45WvyMBGnHZd641A3GYurdg/XFEhyRQ+EiUc=;
	h=To:Subject:From:Message-Id:Date; b=VN53cdbzV3RhIPkhE0LG/GAynce6eQnl3VWwGr/ft+gvdd1ZmnKNJjSvpXH4uHIrpUMQSlwSxYIG7fCKKXwquxE9+c2lkcM0YlOaEdyKTHnyFRUn559/ThtnN2UGpQjdyFXdiUvro2jbIWzEROMXHlkjKEBn/BSbPbvLrhOKm2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RGBjMnLM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RGBjMnLM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2602C32782
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 07:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717054462;
	bh=mZJ3Qau45WvyMBGnHZd641A3GYurdg/XFEhyRQ+EiUc=;
	h=To:Subject:From:Date:From;
	b=RGBjMnLMyqUIaM9bSvFZO5QmSITVdCA0tmAH4JijxUnqkBHllJ/srieuobAc8WXQp
	 erQGQcTQbo/Lzgteiuwjp1aHtOj/50i3fCxBnpD5ZhaYTNEZBAIEnvrTAPDRESzF1m
	 vAeJuEf4JCq/fouXqhNZw5tQ+n4Bz5hXoulUouhj2U56K9O32pbnYGlM/W7n4UuxJz
	 QBIFSrBBdhJJ5pSFJHblfSAxf2D7o1IHq6X2QFm4yuyKQZLZV1/ExyVqaQShXX0ZG3
	 uYuLdE+Gq+TQY9onrw4oFQdJfBxemp3aNmix8kUwCqBkBHm1zY6nj9A2T84zpJqmya
	 SNbefEwNAsx7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB8EBC25B74
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 07:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171705446282.18925.14277179728995385486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5f8d5f2d46e71cc714fb6f94f080b9badc03f5552f58c05b39821b4c993e34d
Date: Thu, 30 May 2024 07:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717054462
