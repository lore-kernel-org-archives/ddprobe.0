Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23EB513B293
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 07:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767425034; cv=none; b=KYmX20F7UA92/6RnNWpWWZFzYtBerpnA/bzrHNQR5xZS6CwegdEVXH0hcWPITcpTCICTjRSmSFmUgkp3q4zZ0RyrXjpIG3xjgjEYrgYT29c9LjlcvoQPu+lWU1pQ4olNrd4zJZ8yBCDmosD4yKR5r4rm06RLMw0R9E8BqBsWNwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767425034; c=relaxed/simple;
	bh=B+CeSlb06za0PFEMwRWKswcyVgO9fb7w1EQkn3wNR8s=;
	h=To:Subject:From:Message-Id:Date; b=LNkE/FiPnW5HwJ+Qxe5dW97cRzx8PG63AbPSdsBMP5aq3ILpah4R2FG/GspBJcsApZvh5nCRmjapcLEZTnr+ULLZoIyc1Kgtkzq+nxG45zcEIgTvMkjvG8byJS07l1cOOsSsraOsjaErN4Gz+sWAoOWWAPO8rvEw4Vl3b+5Wxhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bhyL3Fh4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bhyL3Fh4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F34C113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 07:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767425033;
	bh=B+CeSlb06za0PFEMwRWKswcyVgO9fb7w1EQkn3wNR8s=;
	h=To:Subject:From:Date:From;
	b=bhyL3Fh4oBjQ8V7ldtrbjziHi1ygn6NnDes38AXJ312Fpo7xIqq/5j2Pbl0l9FFZq
	 9K8TbvFQnFWc11N39f6zF4bTXv0i510DNJzVpTI9aK88F7S2BWmRNB4Ltek6dMUjRD
	 SnVj8FkGUXIDD96H3BeIjn0Z+auJ1sQQ+zhD9TrxxLaqr0aCpWCtjCkC5L+SnbT95r
	 4FXUa4iJDbvcMwdc29sxXfkSnRe27ct+kBn76bqJ4yQqagowmVPEAItUBnKDAjuYRc
	 Yy1gLSlv+7JZznMmXMRyK3iBh5FFKRjs0P6OUMf4P/xXn9FAe/1Qwy04k/zcd4I55e
	 fBBnrJklMByGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9488FFC6160
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 07:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176742503357.26308.7843699294375748318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0964272db83e212eaa5b687b8bbf60b91537d748e72c2c80feda853f1b10ae4
Date: Sat, 03 Jan 2026 07:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767425033
