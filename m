Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23EAC145B07
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724658954; cv=none; b=MGVTuFKnZ8urwQqGohyaTtQgXTuG2pCYYB2nNiiFEgAu5Qe0/KzYo+5cwSywIe0TdOXKDQLps1XKUVu+fRqUqtZHkMUWlDo1xaRXmjWv+lceI8ZBu9WAqTL3X4jR3BvB9UEai9c9QMzuwh9xyVT4+PbDsC3hS5TfyJ9QH7XLYkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724658954; c=relaxed/simple;
	bh=3YjkMgKLQpl1IAp+xFKm05Iek7VhdBClWF/oI3u3aSk=;
	h=To:Subject:From:Message-Id:Date; b=JYK2cQcMNOmOcBHrohzeYrdM2NEwlnOjo/j5oiONPXJWWPKAPzhkqpqprPynUJNPrsYAp9g1XUCONGYSeNFYlcALi/GOWmURx8o06ly2K+LFLIBb8W/n+HQHYsXX8FfL1krcad+b1Dw3IsFDVtWMr7MWJRHiBcyy2oouUau5Lgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cj0+UCzL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cj0+UCzL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A046FC8CDC5
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724658953;
	bh=3YjkMgKLQpl1IAp+xFKm05Iek7VhdBClWF/oI3u3aSk=;
	h=To:Subject:From:Date:From;
	b=Cj0+UCzLbEe+mtRTkwZV1180awX9pCKgxqrHKAqzp41ugCGaZEbr7XyfgxlUGjgVj
	 MAReJXr6GcXSj+kbv6iR4Nm91TrWbfmnJ52mtvLqjt0skncdji2anjn6hIT84vMXiQ
	 DA8PCrsmmaEjP3NEYfWhScrPv/3nJUhxfvQ/f0BgLiHldPtbKsvL7/LbMrVyd+HUQ4
	 DkSHBuDZkCZ49ZPIxdLHwhO256Lg3tC3wqFfS1nzrNs2qRbHl5v089GFu6bq2yzXdY
	 X44l16ScaTJrA8mzbYoUq/vevwOatXsHmZcT7+TjSCUn41Zq0VCRf0RCLQX5KEh59q
	 JlMAslby8Hu0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A69C5321D
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172465895359.6124.7651483861443865809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9419d3d98dd9be269bc8abe9d63fde7b844d21900428a89f7da4c1d10bb4c7e2
Date: Mon, 26 Aug 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724658953
