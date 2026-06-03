Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A86323D7F0
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 21:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780520674; cv=none; b=Sp26sGExtgOTYX0il/t7LRt5ZMzFwgXlV5CfkC9jOef3lG4Clv5L5WLEn0mjwBTRt/IDW1NIGcQXOqBJfbO0Ga+ZjecL/2Z/sn4QdvUSGFGAwSCXntCqbmXnt/jdzBa842G0mHaVSJCbEklc1Qs7/xTRWWgP09U1QCx7px4J3xc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780520674; c=relaxed/simple;
	bh=k6xDBFxlzkDPGExeLQx5PUuorWoMMAgg6IlVgK+qb0w=;
	h=To:Subject:From:Message-Id:Date; b=Tn+pT+taTXs3hRkklvjMXm3JsMolNTQKnH/0u4tVf/yzcxTjNZxRmXWxQ0sJ0sBsXkzkIOBs9BcMf4NIEo1B3VUB1t7Mkv5q9oJKGb20hT9fdluLqXBYFDl5OgDtmOCIixE67Zq5Vz5uQsmzLIKMx5gIhunEru0MJQqlYRVMMhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pI+uYzvR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pI+uYzvR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7A0EC2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 21:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780520673;
	bh=k6xDBFxlzkDPGExeLQx5PUuorWoMMAgg6IlVgK+qb0w=;
	h=To:Subject:From:Date:From;
	b=pI+uYzvRsfyxyKx7x7wcecWJrF7uTjZTAvngYs+SmOKhi/97haOKPL0ut2ceOy5GX
	 pL7r+6kM0vfUaMcU3NDrsHhsQZ/SNYrEbGNpSlMBwCgcVrORmx5gn7NmjfcB2S8Ktr
	 8xoPWztqbp2znXtmssj1vU3/7MNhvblVNPLeBL/um1YObdRCJ7+pEumv2IpyIot2mc
	 W4QGaZ9mTaQmLQqpqrFudGJTs6XseELGs64oQ2b72R9t7bJQGSbdCdLktsenm6Un7C
	 6322lE3WvmdSINuPTp1vQsP1mEcnKdOTzsLgK17/9FjXChB61yN9CbD3Ypr+z9/YfK
	 aAYYr8cfvtXwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AED44CD6E55
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 21:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178052067370.29476.12572694480955022644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e129e2eb481605d9189d3b7eb05b108adb8a8a1aac2669c7d774fa354c626ec
Date: Wed, 03 Jun 2026 21:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780520673
