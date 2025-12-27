Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44A8C3A1E9A
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 21:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766870034; cv=none; b=QU2f1MsTxbvQLkl6Xgdidfve7MRA1ZDYF9y549l6wFZHO6poT/vMh0v2MEKzt1/Pt6hSg9202vP1ZMkP3jOyb49ULOqR5CSggHBg5U80N/Ty7lXNov7VqFkDAc6mpV3oMjv2yuVc/hKBZ2iNEa9TCM85t4vzDcB9v0PI9tpCz5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766870034; c=relaxed/simple;
	bh=GPXsnfc/oqyljaITj6z7miPsNgmDv2k+XubLWjTDdxU=;
	h=To:Subject:From:Message-Id:Date; b=idzWrqQL75JMwgTKEKKc6YWhQ72xOmiECqLhbRa0q2X6IlWeuV9jqpRFgsclaS4fmK9YtKMuy+Lg7ETdF7bTiR443c79oq6W3e02Yu9IyuMEK4XSJQLny8Kepw7ousdM0e8zrK7xW562fMEWdkzBYWI6nHb3GzFkpQ4EcayJQNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BGxS6t6w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BGxS6t6w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE3CBC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 21:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766870033;
	bh=GPXsnfc/oqyljaITj6z7miPsNgmDv2k+XubLWjTDdxU=;
	h=To:Subject:From:Date:From;
	b=BGxS6t6w97h40D6fvc5JC3IzIml5g0ZSO+TfjzklmfKLOYb++Jqld1SSA69zwpVyY
	 ya182f6qO7UJCch1v9xzvSFE9uFaKeSD9TQP6S7ZHeLJdke9Nhk751P4oQ2kSnnRAe
	 A5qtJZkHFIpQBgwLuxWizQthTk6FH+cjnzAKJXnh+XXEPB4RHP2NP53u3RqJ+32NDG
	 5xY6b6/5YBHo+5UOr15QedN92t+JrgBoPY6YTWEYCyXvc2MO7hUUeuyE5Fr5TTjQWz
	 vBO53EkJbVI5EWxarGp0KogqKbVAXJ1hrhXrJoJ8mt1hqR002/4geCdOjsOqmRwVXV
	 7i6v1ME4dbFkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98BA3E9270E
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 21:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176687003359.8094.990532756594940379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f10a169fa6fb1cf4847512a212cea6fd5f908d3d0571bbe3538819742c81dd42
Date: Sat, 27 Dec 2025 21:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766870033
