Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43BDF4A08
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732236354; cv=none; b=LXJej9kim5wB8Hb2rG+LC8I6u4PLI00nfoyH5hEJb5JKDgw9btJwHIxfZ/2V4zOY4uHtMkuNhVL1s7XghoAWCBoE0M9//wLiuTqVfoB32g8Ymsq2mY7AowQotCGsq47uB/8O83hETShIVwQ6ef+uKg/JfJoFrQjIzmC1dd+I66c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732236354; c=relaxed/simple;
	bh=NeXeWVT7EKyEldZPeNu+6ehbGCwdBWykoPRYMvsTsLM=;
	h=To:Subject:From:Message-Id:Date; b=Z009FB0m4qoxAVslj/95W6Qn5cNz7N77iV+YI0cU7NkLN07ZlobT7AhBKZcKCjF2jFSl+8S/bJLzhRra6QHdFQDD/gQnw8Ot3XXufag8YEXILAO/T/4yoKkAOTou2W2pIL+k1HvdxFIf4ZhL305ITGXB2VAYXwEkyvok5w5gIWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V3hspx5s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V3hspx5s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C28ACC4CECC
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732236353;
	bh=NeXeWVT7EKyEldZPeNu+6ehbGCwdBWykoPRYMvsTsLM=;
	h=To:Subject:From:Date:From;
	b=V3hspx5s0bkZr3iIL7QV/tRg9OMxOBepVZ1FFxFzckn1Z4o2WTeAptTOhCg3aP5tw
	 K3YzEQuvh/kkttmUNS09OMMLaH+GiNPDw61l/U7Es6ZxbKPx2hoXKppH0G2ZMEjoU+
	 kMy3g8+ht/WBM/vlphNne2t/77fiF2daX/wbsQVbCyNB0m/SgAkhvOISGQuSbLUjSd
	 vNufLXf8xBh0Lau/qabdvFR3gIxuZhNN/w6+oG6qy7yaUhPX5fXydq0c9wLqsVVGDU
	 E9rFEtwD3FIZcV4p29BcUNjEeAWRyLMXQeg1BKDdfJwV5K8+agS24FfMs3/V1Zd8b/
	 /UU7t8cyXA+Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC711E65D0A
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173223635366.883.18287860804100567023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6647e93946bba7c93b59020f627d142d6079124163825197817144d54ba86dfa
Date: Fri, 22 Nov 2024 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732236353
