Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBC4515747D
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755749993; cv=none; b=P6v+IrE3D/3qOrdeGp/+F0H1M8GTZZ7lqreSZYg3klMN1GCva2yiGI7NGQqgOVp6MkLEPgVg1eQcABb4HLWqg1CgZKGIBpZENZGPXx1UXJLafnWrfsY+4edj+87ysb/2b5Jjcaa8EqJt8fUHECkfqgySxdbDKsfF+h7AWix4aDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755749993; c=relaxed/simple;
	bh=wMwjubTvTUTRzrri+3lHWcJw9cmkhDa+x4p9EKqrJM0=;
	h=To:Subject:From:Message-Id:Date; b=PsDv+fpBe42E4fbr6715kYlfitIJfpQupxl9/7pbF08yjjMzBy7i9ttWpxeH+kYRS1DMrOrzgd0dcUdtLtVKN/WkL7uyuVom6u+zcUsLzCizV48Trwpf4AoeIyTZ9aVSNFGOXPOgav7L+ZB7TLZu5zKKdjrpmRVNgPm+bqelj3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ndl7VSl8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ndl7VSl8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A019DC4CEF4
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755749993;
	bh=wMwjubTvTUTRzrri+3lHWcJw9cmkhDa+x4p9EKqrJM0=;
	h=To:Subject:From:Date:From;
	b=ndl7VSl8IWp8JXiw8I9KK3bmjQg6a3JjiWGaDwbfuD0gshcqqrF9a9JwIx0vWiy4H
	 1j/vlOhnIJ9E9+0308+Hj2I2D100HPpA4cTWVhRqnzux/JsOz3NznnUJasTZivqzXQ
	 o22UgLmVDUrReh6Gg82NbgAPniNYbetk3wBwNjEYPr8/3n6yRML1x9pB/RzZ3wotvZ
	 suymhfx6/sLt+ATV+2apvCmosP2O1Ml3dL6Y/phGRYL7ShrNX9xJGOPnHY3wPZ1cm2
	 2v7BinbDd2u4NqEDFop8Rn5PHZl+GcfJetu4uQyih42elw+tYMHrfEnBF1e2bvZwpa
	 B9D/vbAIwFfmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F716CA0EEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175574999357.29880.8829503316023943796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 664a8510cf805b3535cafadc4bd26ba551714c05313b8165f5930d1c1a48daa8
Date: Thu, 21 Aug 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755749993
