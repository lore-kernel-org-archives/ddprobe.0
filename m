Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C99D1662E2
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 14:27:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720708043; cv=none; b=NTH8h+ADwitRam0PHuK1WrvKclcIU2R2l0D8WNIodswaqwD1kUpFSRA0trAiNtdnikH2seMzEO7H13wx2fUb9isXJTJRJlTU5xN5e6qe67g+RWHgXud10R9vbqpKeSDLxIdCT6Qi+lGlcKNx3UuJ2tcBvJwKszeOKzmV+X5GkT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720708043; c=relaxed/simple;
	bh=6eNz8+Zxi1AS3J9CoQiK1yCQynlKHD0AUxPwJWlkyfc=;
	h=To:Subject:From:Message-Id:Date; b=TFZf7flNHGeYV7c7vUOGEIK9ISBlGrmhmpU2id0iv3zLvm+dcIKt3H1FZFP65NsarAP4S60Yur0cH0LzN0+V+hpFvinSNlG3HNG6IigohqVIuLUjakiuUX4penm15nkRPovYQpn2JZ4b+HTmdWEOr6vLH2zoaJnqsNpUsJQHOjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=of2YffE3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="of2YffE3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEDE5C116B1
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 14:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720708042;
	bh=6eNz8+Zxi1AS3J9CoQiK1yCQynlKHD0AUxPwJWlkyfc=;
	h=To:Subject:From:Date:From;
	b=of2YffE36rb9ryg0R6EcZgx0R6mzxGC4rVjaX31JaJwsgPEHUqV8uEy1qrwI1Ih99
	 7hECHQbcct4HC7oP29HdZ0WyopVC+THP77too9LrePkjd56RUyGn3euB3f2RHxRW71
	 KHUsCNKY+bArYSQAM22Vt82zT8JtMiNnMTEz3yJbqUhoapi5yvhx+tbVpBjetVu3ZZ
	 pQ7yjYZ2+gasZ6RYwL1megwl4e4WBDhqOArlMICWtkoq5m5OLZBNm9Bzqx9GjyRwez
	 SOel1o3EW/69oVluzPHsTV9Nsw/1wlRGjObFJ0UXccR3YsMK34UOou7lNLGHUGLgm+
	 IQHUxzt1a35Pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFDFEC3DA45
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 14:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172070804277.8263.3650804961492748316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a08cc16a1fc2831769c98d588b1ebdef28bf4cdd2e38c4e8a8f87531e9cb1d86
Date: Thu, 11 Jul 2024 14:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720708042
