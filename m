Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10CB94A11
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753653594; cv=none; b=IxXwJaQNwx1KPHW0huipItbQ35G2TP8fl+Tsj4DrGNK9kouklTqxdR0GcxQ4lCPr+mRw7wTU1kykzx2L4YH03MqrVLd2zwM+oEECxpHrlhHtVWxAGQZgypfOQBpJBEobYSg8fePpFGdW+qwIU5dAVIHfSWDRekfWui9gYBdGEBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753653594; c=relaxed/simple;
	bh=zs19e+gypO5Rn3Qm/FdR/9jQ0KMfH9o1s5cBksoodY4=;
	h=To:Subject:From:Message-Id:Date; b=JF/PHi7jXEwCvfjGRvuoS96+v2z2cP9R083ZV7whgCwtGCuOdk9vKv/ZhBq7VanEjeBLl1vjNpdFImr5BD9LZvpiAa255WAmCYrh8e7QENTT1UWQ9Ro5UzkNqOlUwvjeOP0diuqjji8gGLsr/jLc+zU5Wu6WImvJg+FwZi0Xabc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tbS6Kkr6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tbS6Kkr6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6187C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753653593;
	bh=zs19e+gypO5Rn3Qm/FdR/9jQ0KMfH9o1s5cBksoodY4=;
	h=To:Subject:From:Date:From;
	b=tbS6Kkr6iZbiguKshXjKDy5dIdm7rq8+TBS2HjyKcyupRYl58/aq9Ot00j2F9h2+k
	 4nXT3HAl30oT3KDCiGv3PTVSjZVP5GKLNW8Hi5wUHVnl1+Q7eiNTkuAxzCVc3An8zM
	 C/XGQYaFGsaouNRYjCUR3dph33PAJMNXXjr9Zm9vC+94sWWmTh+/MxfreS6EX9PpRi
	 C9o3jl2mHX28XcJIs4ikAWefqmr4GtFCU/4ZkfeXy4KHm8/EPWFN6spEDNFZRj8uLg
	 Sc0V97OXyJX9CxCqVYWiY+15AjKjF2vqZyt4obw2tXdsEWmqWJX5RctREBFjcgkT8b
	 kg1rjqp3ahZNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9448BC87FCE
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175365359357.3547.7338273347151364900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b8171ffc22c402a787dfe1e3c4f86a9eaf424806374031830edbeed1ab8947c
Date: Sun, 27 Jul 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753653593
