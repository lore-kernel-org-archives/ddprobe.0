Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B9ED2D661C
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761932394; cv=none; b=I4yHEZTFVBonqQj6hhFsEq3pGqYBMjPRQxc4jiBrG80xp1cMZLyjVWckhPM+llCYIXCFPT82S7WWaTqnVLi1APkOp0V6oxBfhiwIE3ABPaXr5e7TvplFD9cCP3TOk5Ew1UjQ3vL70OxrvNWC+FdePJlFPr0mmZHLuMc2siirRj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761932394; c=relaxed/simple;
	bh=V0y48IyJ8UVhv90IrvX5V1fY7VGd2RL2GKPynmg4AfM=;
	h=To:Subject:From:Message-Id:Date; b=sgaiDs92FUTZT6pbTY4tnnU54uonllJjzp3cVP2zntHwNswgmdwZwdpVRpnTR08x9X1pYZ9msazILMPMFuaixv+aTZVIwDaoLDuR37MphvvJ/A3nzwQwr8PiNkcEFSU+AOAIUj9gNZSFWL6UGefxiUlKnM6uegj2XiL0zoTZu/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gjZIZIqS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gjZIZIqS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23C0C116C6
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761932393;
	bh=V0y48IyJ8UVhv90IrvX5V1fY7VGd2RL2GKPynmg4AfM=;
	h=To:Subject:From:Date:From;
	b=gjZIZIqS7mrH1yJD+r1uOVum/u9z+4r1/5hLxYcpXI1lcEmBn/+WoO6oE/3Cs8jsM
	 Y2ZJgBvVZly0oEBT63w3uklxEprWAfsL67L3YzGu+whQxX/KS1XvRmuC9UFhJoQhy0
	 vuqEdjttSr6rb7vltDoD45nXp2RPxWj51f1C4cRsgIcghvHYJErGoGvJ6Q1m5p8ZQL
	 A8bs3NnfvjedLObATDIbVVn65egqTiRS98yxxHuDGjhRa1vDVGY7+e9QmT6aK07750
	 ByxjjwhvaKP7Ow9xysKqdSsHOMJ3FukAb+sW86+uaIRbgZ0Vs82ewCAqopZD3e1QZ/
	 odRB/pjfn+JeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5DFCCF9F8
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176193239358.26675.4222459683653089833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff7149721f4d19b501d66c1d7ab4b911f52936a07ccf8a71c1806c7d256346b6
Date: Fri, 31 Oct 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761932393
