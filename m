Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87CAC1A9FBD
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 17:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782495514; cv=none; b=bU0zga0q1NpoMroyeRQe/Mf+bmFw9I+EKNY+URQDxE43U7QbJfNjTPjUqsISUux0jlQqHeKSdyhJnGQG3wT+BVmq/k3PtqdYQT5ksqaLjOgo3EVJTv6rLXWIg/gzeA0t44QieYlSM7Ek4P99phIR/0RzmO9GPeeYubOR2GEyNQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782495514; c=relaxed/simple;
	bh=7smmzCJDKE9ivLwOBx4u6/y3wtB57sk/8q6/4+ghWeE=;
	h=To:Subject:From:Message-Id:Date; b=f+2sfapIZsD6PC1m1ZSHRhkmueUW2arguQWGNuu/tV6hQKaT2wY9ymn6bpsAGFLrHC4/5JrlO1LvJPfmLy6A/9capSH3iU5VXtXptgm7LnNhsPscSg7vyfE6Y2L7+uSJvt3dA9ezAWV5S4vjZeCOtG6JTTVfHrgiYony844OT/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bbE+xiTH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bbE+xiTH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 21EDBC19425
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 17:38:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782495514;
	bh=7smmzCJDKE9ivLwOBx4u6/y3wtB57sk/8q6/4+ghWeE=;
	h=To:Subject:From:Date:From;
	b=bbE+xiTHyvIfJDaSud0MQDD3ayA2LVSu4u4NURZQgdwJ16rN7LxgbfBjFgnoBXrFo
	 tisd/L5n3aDibIOCxhjt8x9z8qBgg1Ukf3lyndh7ixck9TWyNyhLSnrFUn7ug9kr8L
	 b2skE1hWyQVaTXMUKP32ACfNpvdGXe2cNo3r4qM1fS7iOU0CLSeg/9vSfWoaqXo5Nu
	 7RbDzxSEKDflBOE8wY+ZUSW8ZNq4c6vQiscbNunAysMXoag1GWUiIF+wCE8UAdFdO9
	 CQntEOShy/ph+GbguRn6Lxa2hOFKw5OF9PdS2WMFC1lYRj6CqL5f9BijAIJvAt+VPv
	 clnRboFZdywEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E1306C43458
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 17:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178249551382.26038.4094352541376042880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33c100e9241e9c0fa2176d0a37ba6ccf98a0917843114bba8ad61e78d4116d99
Date: Fri, 26 Jun 2026 17:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782495513
