Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77180353A61
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 11:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791719434; cv=none; b=JgFeo+aXUmkjSi1pnrdd4mf5OwGvyR2nCWSuUV9/YHz4TIUW3vkfvkB7a/2TgJfVo0yv6x01Rm+jTTip7dWPExXX5bpNqYAaTSGRoPTCyDE7MXwHF11MNhSkYqSSGum7QkKQ9Ev7oneDWWP+KGtH8Zyc2Ge5NzUuXbmhg8l0D7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791719434; c=relaxed/simple;
	bh=lSDAhrUQJjzfFgFNlrkdkGQCuVJWXk52KbhBw7wU3aA=;
	h=To:Subject:From:Message-Id:Date; b=mfeIkRe2v6bd0MqntGgQ5JHWPv/jTSiJBefZGgOiDOx0JTp4fvYHzCJ7zuMC8dHRtTPVcZFCa3Q5CFKTDG2USZVu7UpbfdtJzoucDADBKB2v/x3QOA52yu5n2UpmsJSH6RA8BAOJ90K8K8WLnwI51pwVujb9/P6DCn4dGubWfhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YWEwlnO4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YWEwlnO4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA7FCC2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791719433;
	bh=lSDAhrUQJjzfFgFNlrkdkGQCuVJWXk52KbhBw7wU3aA=;
	h=To:Subject:From:Date:From;
	b=YWEwlnO4DqG1kcNaD9qvyJQwKDlWiOzfreGoA9vLXkj6PN3SVrrNo/Y4/BXsL/w4b
	 Ni/3EuWYEDzJtxO6YE1Efeo4ZuydNNPxJ0OuxgRzbBnmVMuQiHUBp0pdev/XbKG9eJ
	 knmZzDVumAkOUKNBlN6G0MYv8/+7H5TvqTSZO1N9TdCWtGMIudCkNOljJBhBh6DOcw
	 c5bcERV2M4CDOJI0IfnAWP1+j/Y4Da+6zVWGPXrkq7C1dszT/ASAK+haU6RN2l7lDM
	 bSReHDLmGHf/2BYVDQ2CWZKADKX70oajIyNW06kZKcEeV2lNPAffW5+aBMx78lcxB/
	 /yuaqA4GweSOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD08FCA9EBD
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179171943368.26135.6952449528551965988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ad4d0fbb9ea716d12e4bb643fb915c8674b319ce1a975f4583c54fbef1c7299
Date: Sun, 11 Oct 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791719433
