Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CC64429000
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 09:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789378834; cv=none; b=n7kpRAm37lGInX822GeA+j6cMHa96+bWpbfhZBw1tig2ZfxQyV4YYfv7JvHKakhBvSN1FlA/V4sxsmssTaoW6sM+CEP2OUhLA1vJo43kZccxXGdqGKHp4NXwiJeky4bl2PcdcyOeSTTOdO4X4I27JLrX8c5LpFhMq7nACEYM0wc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789378834; c=relaxed/simple;
	bh=8e/KrXzjagNvN1BsXlXm5sW/Hc1cVgQS9HkcUTvrqx8=;
	h=To:Subject:From:Message-Id:Date; b=YGaD0VjsrO/7ts5D2rzkcA5Fq6IdPLGgAl3ID5ADj+7U1EEmMxa/7zTjj9BGb3iLFW1HgtX7FZ1TZgGRidSZQYDm6figcrWPjv0fcBHGO52WGEVezQls48q9Ezj0mt2YKoxi1fFSQ0bA77nSJjtSrw90DZj3zdu3Uc+0Ha4MVcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P+Vl4JV/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P+Vl4JV/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE0BEC2BCFA
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789378833;
	bh=8e/KrXzjagNvN1BsXlXm5sW/Hc1cVgQS9HkcUTvrqx8=;
	h=To:Subject:From:Date:From;
	b=P+Vl4JV/oKYQjFLVmDP7ctbuRqodSK/Ch6qEOuZmuVappYzcH5dBDdaVs2w/l2AJ+
	 ZxbUefZLJzkK42TMDH9cMfOxJbuaTxJBJ9R7ZEzVcO7+d5prit8d+yvtycWt9yFgct
	 VJAkYzAoaoMROhxQadGPP62oJkJxF3NWBNZDdoeqv40fv96ZS7RTtFD0pEa/+M3Q8d
	 96aXipSknjJpYkgsu6Trwwx4+tAPQwclJ3aD/G+J6jO+OEmzR4bE15cDd+EfurWCkV
	 4kAL3dVzLWn/u3XYXDxGIiTXKURxireSricD20ntH400vlz46SXEEHtHqhxX3I8bD2
	 DKTRLFGsX18vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6A05C88E6F
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178937883373.29795.11605300622763543039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03fb3b07d67b8a56bfb7f35ae97a74ebddbb74c5f9cbb53bd562564b00d5aa1b
Date: Mon, 14 Sep 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789378833
