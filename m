Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62302168C4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 17:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720804763; cv=none; b=b70e+2ea5srhAW6Jtu6KSs4Ttg1X8Pa08imWqJq48ibnMgUfGL1WMACOPykQf19i3gagsLbTnAMFmmWs6mbfrhdp9xpwiNPX0ejRWk9ZVm229cuHuoPi+DYVeU1AJG0uoQnv1VReZTGR/TBMiy7M8VD8HdbiFDTFVF6us+6IQc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720804763; c=relaxed/simple;
	bh=a7aeskqHPOhwp4gUIaFcYQEv3Dz1+8rcaKjAwK9izIM=;
	h=To:Subject:From:Message-Id:Date; b=b2T2cmvakdX/qh4k6Q56wnIP9Xb8iZJCtncW3CvkSug+1nOSY7RvmqX+pCHlIlwRicLTRCohXa0j3qy3XyxRZCTRzikJvxeCHHI5OXkQrcoorc8HmhFp7NiopdTXa4sWkOeo4LYVz5CGghUK0ylimRW/UCdJoSVqeUIsz9MQ3BA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AeW30xrS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AeW30xrS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB838C32782
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 17:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720804763;
	bh=a7aeskqHPOhwp4gUIaFcYQEv3Dz1+8rcaKjAwK9izIM=;
	h=To:Subject:From:Date:From;
	b=AeW30xrS50yhrytP4K3Nc9lVf7Zm1I0EdFNDqx/HHqkhuF2JYZqC48nW+XlS61Yju
	 1jJ0gXYrIAqOUJBDWwBKWfuL6RKL4goqWiXTycgJHmYAsrWpQWtAUjqH2ms9IOJ1yB
	 IpXvfveeurW57bXWlaYaaCfGLY3JZKj1RJRPGUsl6dtVVzK+xLiVVvM708zihctoDg
	 4VbnAWv3c8HhaUNjX8BASJRtnmDFzZ8rZCtYgny3IacGSbg8JlUiWbT7XWQu5xtAvg
	 HzguUCpSNKnCQuZncigijo5s9gqiTZ+ZZjDS45CpO4RXf09NscTdEox4Drh/iY0IPY
	 OPNHysY8Ybhsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB30AC2BD09
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 17:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172080476283.13181.7797290895401785079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6831d322fb908e53f0a8db06a21a0b0e14e460b872db91c782e0e0347a44eb96
Date: Fri, 12 Jul 2024 17:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720804762
