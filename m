Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 531A71EA80
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 09:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719738263; cv=none; b=Ko1ZK1LgSZptUfZ701/+he2I9MCwLOGX95hpSPAWjpJoB1rJ9o3X3TAafZVBRuDLWCLxxaImT6ol/Fb7/C/onEbWJmMqzlR5JxUuWrG5xXg4dAtThdLHelF5lAcf644C+EIB5l3HxmKZVx9QQnvgNijlNizNOtcNYPZhGJiKDHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719738263; c=relaxed/simple;
	bh=LzDH3SADNPmSzBqafim+NugNklbIV3o5f/ZZxU8eXTk=;
	h=To:Subject:From:Message-Id:Date; b=X4ig65nm8p/3D9YRBVSwMlqV6VCEPiFTafRDdLYsjiw4gc5Qpc0kQPUjn8O3cpcl40AgfZZSKol4Me6uYOiGlS3u0GoYLMfA55qYmsmgqL9/fGWGb2hmPbkTEif812ZmK5o0dXlgAUWL/kYoZiGRbv7ushHu4zcQ13v1eJgpbi8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AIyKLQaf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AIyKLQaf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC7C6C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 09:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719738262;
	bh=LzDH3SADNPmSzBqafim+NugNklbIV3o5f/ZZxU8eXTk=;
	h=To:Subject:From:Date:From;
	b=AIyKLQaffNzbIX5SfzRzIq8Autmf31jqeATQZmTIoqjoaSRFSopUpj141uzYD/Uf0
	 +fi3ktwvRNR76IQuo1eImaJmc0jpj1Vc/LGQUIJA7Xxyl/8mASf7p6GAhrkn5RKHfK
	 +Rb8xK8Qxxmvl6Zi+J08KeLbVZEX9x6G/Z7iwLtV+ql78Z50Gf9xPjpgGWmqukTjZ6
	 yGBAtBQWVUfpwl8PjeQ3Fgfkmp27KAj4IP3TQk5T2OG9fikuSYb9iyEqlckMCkvlz+
	 7sLPy+dDGy5JfFBc92vGLF0UIQeUm8EZkBo7l30nqaaE5xvxUgg4xK7qDIHY/bVA8C
	 ixyL2juJkE0Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C902CC27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 09:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171973826278.15712.17377771103289663019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a840f56730ec812228576dda9457cee4dc01be985eb355050ad477f74b0e9be0
Date: Sun, 30 Jun 2024 09:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719738262
