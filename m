Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BE9029A5
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743248994; cv=none; b=I3FHXtbE9DDe/TbJmMPeRqsKPXboMa9ECCG4LwPUEq5xAGfxeB5xUoQh6FcHgrPv1bvtV/QunyhK5kSwbmT9IZLbgwc/ms/Pn3Mw90N2uFJmNU3OFjSaXWhXYrv/h+B1fAc+1XqFvIXAYS0qsAAlIKe9rB2UyKkyWvuBpvqLGok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743248994; c=relaxed/simple;
	bh=tttZqN/WMh4eXV7QH31bCB8oyDpWRQyGR2mfs/ATj/k=;
	h=To:Subject:From:Message-Id:Date; b=sukC5+EJLd+QNRVQlnmTuonLq5r94HkRZGPZtNFEyuZGQJItAL1TtaAh0gI2Uoc9KbYeDzJqwonX1xYo2m+QXUhFSKMiamQTA6QFBLE6Qya7rjAb+1fLqR42rcKSPkMpQDZTYk9rYmyq/euLsfOKGQ/jK61ivnPagdIcVcKo2Tw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QTJ3tMTv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QTJ3tMTv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1245C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743248993;
	bh=tttZqN/WMh4eXV7QH31bCB8oyDpWRQyGR2mfs/ATj/k=;
	h=To:Subject:From:Date:From;
	b=QTJ3tMTvIHAwC7N6vuqpyC/K8pKuD3rQT2rhiIDnqb+11MrHY6xXCEawLiCB3/ZL9
	 X0vuwL3j/Hv/XL1bgYYIAhF55ygnSbrdcyWX2Y3Ii3l19R89Qw966Rx0sNg5DpeCUA
	 JtLK+4/zUIzsALqcMaSWWdfphbQ6rS8HUGKVb4pLcF25gddOlB6O1qU/OAHgwYUZjx
	 JwwY6N8dVMDCj1U5peqFL+oBIAcvOkkzJD3vTxXIh5dcECay+IV2uwTAOlVXWp685o
	 EcIN8cbaLGDIS4PNyuGc01QjoQmG2on4YCLPw6fq5F+3y06hB2OFRqqC7LFogdAP4+
	 iJFjhl4y2amqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA3FC36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174324899369.16574.12188164668527886444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b46a05e750960af0b9a328b2ca8131a4c7d8e136e6575574d735270ab0d7104
Date: Sat, 29 Mar 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743248993
