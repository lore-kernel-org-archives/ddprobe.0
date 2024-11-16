Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A657621
	for <ddprobe@lists.linux.dev>; Sat, 16 Nov 2024 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731735954; cv=none; b=C/cjH62sca0577oepN9C6y4HvPBiGewhN4RmESM0ubcNTDWDdZoChcel7w++tVvLr7k4mVz1upIoOO47P6XaKnjm2wLfhvT+YV7Qm+jowRRkmYuXr8LvdyQLKPw9s81U3+C5rBmIa2/DnJarM9pOsXqoEfTPOIulAAOeGeSTi1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731735954; c=relaxed/simple;
	bh=KR9aN1rYywsY/lwNYxsg7+5HL9IXpNVBfBK6udgQJDk=;
	h=To:Subject:From:Message-Id:Date; b=I74NfVhspaBuN9ZvsqhJVu4ilMTITQDn4W7sl1dZrGjFDcHYSbEZ4zTC59UPto9fPf0kyE+Stgg0oKV0KARwPUDri0diEVZCpcpLb5ytYH7G8CwgJwP8Tjb4Y9Z82AuZvEPI3qPah0k29N4KKu5/+KUqrydELPQPNHwWIizZgyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JbYTOs5O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JbYTOs5O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8CA7C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 16 Nov 2024 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731735953;
	bh=KR9aN1rYywsY/lwNYxsg7+5HL9IXpNVBfBK6udgQJDk=;
	h=To:Subject:From:Date:From;
	b=JbYTOs5OzsoteCQXwsfHHRtARhkKO7UwhsWplBqiuGjZJTv3dIA4jz8HnGc4nE+1w
	 OwEJyByTVUTmuN193ETM5yldltntGKnFfE76vfq0LOQlileqhfbqajzWYxeeqJmuih
	 bhuWv2xg8cNPulR8NDAJKRqVGoDirG1HxTuNYBke9kB7WbWry5S1OnkQt/E1pYZ/gf
	 vqwo3HU7t5Q1Nw61N+RtPYVISn2Vu9xyQT9nx4UfnhzM1UmfGF1kO9Ws/fh4N8u9Yq
	 WltJueJASRg/X6+UFz/ND+xiVTAqlDkcsm9eBexDjNgeDM2jx43ogbbaBKroIrisbE
	 A6NzsCTY9HcEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1A4AD68BE3
	for <ddprobe@lists.linux.dev>; Sat, 16 Nov 2024 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173173595359.14394.11129136768061099877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 890ab8c8d3cb7735b1fb03ac6881012dfd4920277e015e4898d72ffd02acb24a
Date: Sat, 16 Nov 2024 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731735953
