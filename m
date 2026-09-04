Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54FA74AFE12
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 17:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788542434; cv=none; b=RM1Q99gl5ZO2EgKcwTACkq8wCcfhwVALHsN5A+Sqp8sxAX+hGqT/wziRjfqvPYDs9nu39/+W1WF+2zJ8Z7mruO+kjfgxoAwkhou7+3pE69cn0UrGDKcQoAd3oXj4m6P3WL+PXSVGzmOpiMr3JV+uiGJRm7GYnoAlmlBQpQh3igQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788542434; c=relaxed/simple;
	bh=3sft+ZdVRc4iAVyPf+5ACgq4Jhazk582JjQ3TbK0oWI=;
	h=To:Subject:From:Message-Id:Date; b=YGPEW6hePEqaTN6pYh9Ir2U7lzlcVwqnT3RpcbaMq8KLr0XlyXr9LgMNRY8wWcx6vLFSRIA/DqSkubZfAShO6mw8GWHQG0fNaTLtfiBtcsoaM7qiUThw9UZddJTcn8l/IOZBKhMUm7x11W/kmcgRvcxvFdk2q9cHWGVcXKzfam8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uS7J2h+4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uS7J2h+4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5D5EC2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788542433;
	bh=3sft+ZdVRc4iAVyPf+5ACgq4Jhazk582JjQ3TbK0oWI=;
	h=To:Subject:From:Date:From;
	b=uS7J2h+4FBTNjoCfmxu4FuaSeD6wisN0cwMEpIycCOagCOH7tsYeSnOgUbxQmrvXq
	 ZsmtuRJcr8PU086uP4KIXBPpZwBdr6SpHAmc4TLGmTLgiid0wCsOVxkZlckY5YXa+g
	 KNCewzFYnNZ+k0gT5Og5r4ACK/4D6rq1ZBL2zEZJviVcXZHFBbBW33EFINm75aNHsj
	 iyz724G5fTUCv2jN6yjq0SLqR2VZ9DjtxQRyJk+UifOuUUk/ikJ30w4um3PmqLkber
	 8J0zCPepQDAeDAwvZQ9L1/YKwjDcCqjy/+o6IVAwImiBO6vpuBhRmhanwMtvnopkct
	 5WZo5kxN0MQlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B220DC79F80
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178854243371.31133.12398676416763161989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d6cd5b2b9dff8d45a7594de989933b0a22c68ce2cf1c4dfc8b81739bee82fc8
Date: Fri, 04 Sep 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788542433
