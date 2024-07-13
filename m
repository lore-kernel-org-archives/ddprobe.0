Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 709EA1CFB6
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 23:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720914023; cv=none; b=tG1b5CY5GR0PftCr+Jc4Mc/IqK+Gb2KuEDdRp08wV9rqdeqVwgZOYhSyVX/+s5RZGdM8jd2vD7DbJnEc8T7MKJaWF0lN1MaifxceDfYjRoN9rNkryUs66SFwYvMRNj+bS2didM1tg8hUA85EPJII0DaQXhXCJtYewc9rl0HkRws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720914023; c=relaxed/simple;
	bh=P38cZ4tCAMBCPxPPoYdTrwMN49Bogqf3UPMBaErvr0U=;
	h=To:Subject:From:Message-Id:Date; b=YkCf/QeqWIqNeABIfLywTwaI9kfKxyZWeAGayM0rv5tvWcd9+Bv1yNtpHaNSwvqhn8blX5hhixwMRQdBWQE5qGbrAnCi3OafbYlCLkR+7MztuubyVhcoQbgrKaqNW7Wu+mGLGjfLC7VFjcgInnGCbhyXxAHqZoGuRjrhFVbJxxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WBPeHUAr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WBPeHUAr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E329AC32781
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 23:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720914022;
	bh=P38cZ4tCAMBCPxPPoYdTrwMN49Bogqf3UPMBaErvr0U=;
	h=To:Subject:From:Date:From;
	b=WBPeHUArWfx0uwOPPbRG9ntPaVc0/kr67X3EvXB5WkrcAvFOJ/dj7sUw3aGRv52dU
	 nwSQtgBjWMDyW8nzZygd3DJDkm7I2ebMXT6vmcvNJ/X78xO8nbChtLoL2fGdvcJD3f
	 cQAhxhDUnSCPKpP5eIBOWz+vxZU/VkB5Y6ZTyhBvLdDmSUuEvQqcUd9yCUs4JuwSlU
	 I7Xm+yuU7EJY4fpZFzPNmJb+kp0AZckxwTFNfaQGnZ9MUzgaPkKB5zV0jtt1O0Dwdf
	 Ej4y7zTzypg3LabSBiORS6ZpEW/MSgqaes5Ri9t7XEIezJBGCk5kEsZIrnRtkt8K2K
	 0TagmD7lLdP8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9217C3DA45
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 23:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172091402278.25733.208221667770437556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8ce12dad42ce8f51827c071ee0a1ee5ed681f45c4b9bf4a8db85c76e0d30351
Date: Sat, 13 Jul 2024 23:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720914022
