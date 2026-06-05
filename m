Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F2E03659FB
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 13:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780667074; cv=none; b=ZxVOCqQcFujT3RZIg2LIPseh81fWrSTq6+d8lWAtZgl3e+GME6e9ivpaNyqIGyu/Q+Pq1YV+eJTM9IFUXlIhR0RBQfYqs2t5HO1dg7FjKS4EI63wDcIh3ZsY+dlQbcWYoAdpwJeZvIA5l7+rB2ZxbdId5PKU9GB6vAaphajXbFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780667074; c=relaxed/simple;
	bh=nlghpovxhka+uYf88ENS+qDH9CXqMv2Ln4S67/BUKxk=;
	h=To:Subject:From:Message-Id:Date; b=cnCkXZcrx3rAs3eQo2mo5kFcquW3LBVYy4g0wqXMvi8QrIOeUmvP99YOnJjueQ+uEsTOrSiXSUCfPVeI9Jv+FV8t18AQahTEqWR9xWxbDMdrp2taKQvVxXc8I0j/RZ7qhjQA4cWozKvQxvvRCyQkSpXvEHrtd0XfTaeTwrMXskI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EnTD534y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EnTD534y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EFAE9C2BCB9
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 13:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780667074;
	bh=nlghpovxhka+uYf88ENS+qDH9CXqMv2Ln4S67/BUKxk=;
	h=To:Subject:From:Date:From;
	b=EnTD534yJ/PYEYDGxYRerQYtj5aybBx5AKXgdiIUc+YCgNsuwqZrEvO9w79LJxqfw
	 k1sGlzcPmuPJSv7azZSl8g+JOKfXvjJRJzNa59j4deV+QnU6OZFXrU4n98rlBEpzOS
	 3c5v0pGCS17L1WZCJ79kpjVR/+0TBpeQUmm80M4BV52jwQAeGmRFHV0gtHT0zqvb33
	 gpJmYE7gfZdZB9EZ52tzYHZjYFO7k12HgFVpGE6OnqYw7seN6y0Ln7pD7qAGAVdooe
	 PMBXQt/diiT4JIeDpqp2QM4BLnE8tpHYaZHfmbFEoGPfiujn47ipuPGz5THZeDAKZ2
	 Y6Y2mk6Bh7+Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4E16CD6E79
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 13:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178066707379.30819.11285388005569211110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 675b7a65cc427ec2fbb0465d1ff1da8a866f86f16176991b2add82bef40b2f0c
Date: Fri, 05 Jun 2026 13:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780667073
