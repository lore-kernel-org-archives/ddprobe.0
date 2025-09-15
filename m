Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E988230BD5
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757951994; cv=none; b=O+jrg4ws0qhO/tkhQNpNZ5zAh4iCUjIXpRYqm6OQ3GNs3ha/fYMSzRJlo1o6RI29vVIgXja5CW9d9wqBIIK/jirbXZXjc5jfyGcR/s9ZH74AS7OhFfcxmTIbvmyNxWcPwsphWBLGi7/Kw4hAmE6FugGPGK8EtdnQDB72lx4caxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757951994; c=relaxed/simple;
	bh=C35LQc8asB/BIYFOcTSCSazbErL3hPSZdo3o8KQGySQ=;
	h=To:Subject:From:Message-Id:Date; b=U3cN7VPKVEg17kITi3YIPRseDjkC0dtmxFSxWUmu3RwyN04sPi5BY/tdFxi9oVbeFjc1Cb1iIzA9dX3ZfBFUJRpx11dUeTDf25sWAav3qSGZI6PwL1oAfpy7t7zYRodREAQa8bsDY0vr6cYkgb6Z9m8D4KtoFf/YgJpggCubJeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QFob7QYk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QFob7QYk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38E9C4CEFA
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757951993;
	bh=C35LQc8asB/BIYFOcTSCSazbErL3hPSZdo3o8KQGySQ=;
	h=To:Subject:From:Date:From;
	b=QFob7QYkJbhyIKSWthEFHvXb4sIt6/IHQMQ480NKj4dj7gG8m4rytxMTfG3bmzsXP
	 j27vWWVa1d82B+YBJb/HpN93mFj5cQJOsMkjYVPZyD5+QPewdkw3jMAGSnCddS8VQk
	 qGgfZeR5KukJiYHe9IkabqftzOcRPJebzIS4m82FuG7p8Z9EQ5kHxQA0QL76bjWtIL
	 J8NZy7fIWKTjKoDxas/8/qvKv57XBAwY9bvqTWcEI+Ruppfn7qQ55m+tknxzBfYkL9
	 rGV/xpb1+hjLhb1zqqcPKCL3+c6Fm4ycuyj8tdO68bio+Y3gGxUxA3t1jnYYKh5lTl
	 pE0NUIOPtF3zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C84CAC597
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175795199359.24670.14433523622655754361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b635caafb3278a05f0803a041c9e5f5088a83a3aefdd724bca7f937ab7dd7d46
Date: Mon, 15 Sep 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757951993
