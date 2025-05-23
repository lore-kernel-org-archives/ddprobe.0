Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B88427472
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747961394; cv=none; b=R5jdIYgsnWdPRek/3yKh4e2JdWR1CqjFTuJhJutp8nqKFEo4/k0plNSW8kA+7rCAvN1uLTnZygyy5JT3hnvwzeKaBMl3272TdZf4Ah0/4OEFEKFwgKfohlw6Y7MuBVYGCoPs7cd9IUIsbejyfS31gjW66ExT0VJhvlW87u+jQgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747961394; c=relaxed/simple;
	bh=5dfN/jbPg94gAiaopuoEnOQLnZf1Gx3KZGF9RVOaT9s=;
	h=To:Subject:From:Message-Id:Date; b=hw0AOQduf6SDTKB0adJWJqWE/IgrlGZ2vLe15UTsrBKMZpPeKb3rjurmQGI+J8paOc5dp1kARlE/UkKWUKMgqv4cocmDwvRSLixAlGp1heN4MQo69f0kKptc5/vCXUMRIWB9pckItwOWjkoaUmxZRe102YzgCb/9nQr9D1cT+Jg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O/jWc/sG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O/jWc/sG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9DAEC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747961393;
	bh=5dfN/jbPg94gAiaopuoEnOQLnZf1Gx3KZGF9RVOaT9s=;
	h=To:Subject:From:Date:From;
	b=O/jWc/sGyCxmaIm/mFqETvVJJ88b2oYzZhwHuJD7cGR6jO6zh/ZlOg+bz0tVPEoSD
	 j5mlQfnS6YVVpavozIpSg0ZQnpzHt1Xz/Zlq2/KANVg6pJh1in5N7uXuwqnrCLGXmH
	 Wo4MaY+VNV24c/6ATo7C9bVfSJlUN8y5rkwvNwQZZTFtDMYJ5iogVfKGijcl7ObsZh
	 +IkgDJp+qjSkLz5t0+gFsPtB30iEiBdVOKT1GMQl32ACCNEuSBvccsp/WuLCwOOtPI
	 UOUVODhAp1SdqYwsKYvI/WzWnnW9PlLcHJyctmcY3UBsh98R6CotU3123RB4TcdFqF
	 XKxwn+PVhoCPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95961C54E65
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174796139357.20215.8720866465241238264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7394264cbb8f9a77ce06d2c1ce2f653092e5d83e513d992304400b6648df5465
Date: Fri, 23 May 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747961393
