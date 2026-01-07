Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 126033090D7
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 12:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767789234; cv=none; b=TZvviyI2fnTKfDJlzpmpgnBsECmkGf9g1aasYkv8I1me2L4sySNTmLdXTP/kdkqAKZU5M7ipFwWWDsKBh/iaLldmsqOxm+8ZqZFycdrUZH4k01vQDnwNMCQG/37MpDUsUppxFJI3FQy7HCSLXLaPiOeY2yxaBM/hZTuQ8yvgnRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767789234; c=relaxed/simple;
	bh=RQBaF9as+XlLNFpMLEz1pifI4dkWcdJMYizv4focN/E=;
	h=To:Subject:From:Message-Id:Date; b=opBHvshNJL3ilwcd90sWTl19RrxErcMxSDhc77qJ64e8PrYcGPq3moI+Wk0yWH97w3ZvRSE2So6wejo0qiDvvDvSq9WUpADK20BWbpzx8szl/cmHYDEqrTRsxpt8dSBrcDs9GFud6abKvAxcD61lh3kKYtuu8K0fDa0fgTvcK+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DE9rT+/Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DE9rT+/Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B713C16AAE
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 12:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767789233;
	bh=RQBaF9as+XlLNFpMLEz1pifI4dkWcdJMYizv4focN/E=;
	h=To:Subject:From:Date:From;
	b=DE9rT+/Zo3+kZDQHYLctN8KQ173LmhUgbJA7Z5Muk6SfxQ3pE7g5EnyAhlQE97cFM
	 76cO6BN756tSqkya9ArlUCxLA8xkEk0LZ2y4vCB9uC+x4cw+WFqnR8/BAbrB7pOyG7
	 kbyX0Ei/+JUBiJwNd/JF7VX7tlduNSaeuIv2SAg9I8gLueh41ZxFNx8U/+UzGdrhzJ
	 RxKdS/qAVFLWqr4iyQ2CK3oXhx5ocIzSVId7HDpLP9DCoItveda2LWYe5jX92Fyli5
	 jvLzDS4cidAs2lQBixJ/6VKymXl1vyIbhWti4IVTK+A9lwGInn5v2g2avqPi37GZOc
	 7Z+BWQruM6lHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E177CFD621
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 12:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176778923357.24045.16537951450409527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 415355f96057f00eefed013f80e3725299441ff2dcdbd89a85841950e5c488ea
Date: Wed, 07 Jan 2026 12:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767789233
