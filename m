Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AF6228682
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 20:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771273494; cv=none; b=aVpoSZ67kwGhFi48zoZXc1t7KaadZFepk2Axbtv+5XixOUrX5GQUYkNCfDxNX3g1wfUPUCTipEnU+HKk9Eb1NFrteGUNbjC1+BZZ5LXQLKQHLsYQXU8/dneATMz2lCgEkMdWmjC3vXX3o3fMoGw7qdcMjznaKVb0S6rHOIDf8yo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771273494; c=relaxed/simple;
	bh=ng4j9mvT7whj5Cwuuth5W1wL4fvNF+qxHEmbKvt0MXQ=;
	h=To:Subject:From:Message-Id:Date; b=EDT4HUzgCCIGEJwXuvUJVGzmgVNBkICLnEIacQzHe1Gttrxjz8rbtIrh9TwpQCvBXQbGIdXk4B7iPR6XQk1aq5U1xnbYW2Bd0N2jtn5ImxFvh0JTZCMYTEEwe3mVOCZ5VE9FF9zK9r+QNeHuUPRiHvXXmlrbUiAbRstR7fvJOTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hupCOu7C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hupCOu7C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF86CC116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 20:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771273493;
	bh=ng4j9mvT7whj5Cwuuth5W1wL4fvNF+qxHEmbKvt0MXQ=;
	h=To:Subject:From:Date:From;
	b=hupCOu7C1L259gPu+1RsVfWKdKI6AWCTuNaob8ypuXqyVbaWumpXEhpr/mlyDjZ1d
	 7fzi+vCRKCKfs+L3Vadky9euxLCjJ8fKdhlmk1cHi8KC8UpDnUP+MakFzYYcZ/mWI2
	 DE+oZXWuicOKzmwGhzle0UQgT87PR2ZPWOItLhOGrbjY9x3mUogU97FfgdvY2EEVW+
	 GW23k9EfaOU3LtlCJLEyYXVRqqAPNnXPC1pAes02au+TKSE6+ecsUvI0hJfMdKd8xx
	 4stAOlmtExA27WB5Kv5kYIj+o3SXeE10d3+kEDX6g5C1fnnkFdoXnwvuFkwa1C2y0u
	 mmGvwnoH6KEzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A502CE83830
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 20:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177127349363.6659.1301272744024705539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c86f12464f3e38ff3a7303f7df0e01e0b0a10252e01190004a365856cc95c2d4
Date: Mon, 16 Feb 2026 20:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771273493
