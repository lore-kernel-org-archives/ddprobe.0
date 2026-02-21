Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 143341F5EA
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 02:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771641294; cv=none; b=oR3ptXfY+ftNF5RE7Ke73lIOROAqEt7fBitct9L//0pB4id32GasMm4vHDqM7nFsODaJD8j62w1xSlJOuvUcXV0UXWeEWBIEBr6nV2Tjj15F0MdEZ7gwFV3ZYqrYEgUVIQSUd6sA6C7bPqW4W60r6dkdNeTuX7yRkqPB8r4pKLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771641294; c=relaxed/simple;
	bh=2N+ZVo8EYbjSkrvxgKgH2IbaWT3iFlT2xmqQeXADY5A=;
	h=To:Subject:From:Message-Id:Date; b=iMVje/nBKmWGIJysNH9lz1oRaRbB7DPfRhCLNRoHT2d9nPXMSyHulVMfqyaqLiz5v2kyxsd8svrbwjzytOlJ7lat8eiXzB941uUB/vKZ/6xMdUrTEhBLG1mlU2rjf4hrQ/43tFPEAeCN6nHtYmKpf6tXKNIOEewjtztYvHZNSKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UdOyXHya; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UdOyXHya"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD950C116C6
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 02:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771641293;
	bh=2N+ZVo8EYbjSkrvxgKgH2IbaWT3iFlT2xmqQeXADY5A=;
	h=To:Subject:From:Date:From;
	b=UdOyXHyamvuM8zOfGRvbYWaJYFBnRxvSUA2d5OnTQNaAtiWSAzdxqmmRI9ZzHt0ua
	 FkgwajYHmIH1StmPBajUtMPJvv46dviCHtZXmYDmCS4enWN8CxBej4LaXay310UKO0
	 4NvowyWV1fmw6dk23wbWsNS0qCeVQsPe99pGxJKQQspfry3GTuRrO3c/TC8tAecE71
	 GoWnrQGYTgIRnYzLC2gdrj+nq7IK1Tz74oQrc+xYz+nDSFFDlfh0phpylrBpYetA0W
	 I8GT/fAu5u1igP0+ZNQjuZoafhKgHy43ayapb7UDBvtUKMcBXqXg/jsywg+lrjYCEg
	 yjuSkSBqrhFlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9714DC5DF6B
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 02:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177164129359.5296.5840321555922278814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b06a04eec04220e4f6016453d5b7cf986551dba2f0dc287af05152177c67c6d
Date: Sat, 21 Feb 2026 02:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771641293
