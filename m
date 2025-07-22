Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22EAF8F40
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753183194; cv=none; b=CIIKO0DWlzZ3iDIH1r21Z8C40tZ5CuImnOlXxX0xfPS0Y4OZvkdl3FO4shALxahODkDmYb6tERQlFUbIWYi2tP+/StUqlNqn9FE/ll1KaIVygSHkldZIa+e3w1U/61otGhGyHEYEMV2MxbkcFxf1qn8c5jNrkzbnyN1wXIt/xAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753183194; c=relaxed/simple;
	bh=FMFoxymXoK8acIydBZ8TBEHPtU3Lf4O/urVHgFQtLlM=;
	h=To:Subject:From:Message-Id:Date; b=kOTnfrC/1BFfsT8n72hA8HvScjT9s54Q3nxlIAF6HYeMT4++fSOjyeO99slcq4VqiTx13E5tyTSzPXq0AvwFXi1jwkTgYJ5MbXMcgNT+4KhoOdd+H0CAoucyN898XZSl/97De1/cwoaIA7Oz43ZSejdeiIF1xn2dPgTHhzwBTFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VKBYmVsZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VKBYmVsZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5BC5C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753183193;
	bh=FMFoxymXoK8acIydBZ8TBEHPtU3Lf4O/urVHgFQtLlM=;
	h=To:Subject:From:Date:From;
	b=VKBYmVsZGccD16SVzF+FShWbVb4pVANTvYTjV2J+98Wsx/SD5QKVbCc+g4NbvWqzz
	 Tif9M++WjezChCN+Qgxg5edTGOXd7NyWRe9vmQNU/AlaZGwy1U6wIzTAaXGPFLmdb5
	 fZSpSNvprdiFjZnRvnRryU+lADQR2+kYmtUtIelIivFzUApNt3BonvTXVF8609SIgJ
	 m6bY5dUY4VbWgIJKNDqpzo3RJptaGK56oV4zeuxmMvkCJmZtxhJZ/6PezYESAbo4/i
	 E97cCLOaM2+DpXp6w/m5SVV1fSYEHjJBXq24ldFUwj74zs9FHWxOfMBxaMr+qg27K2
	 cVecCabFAXM7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F91C83F27
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175318319358.20098.15766359153670708471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a81332cb22dd75d6431dacefb2399dfe4e65deebc8a5fd2305c8990d7ca16154
Date: Tue, 22 Jul 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753183193
