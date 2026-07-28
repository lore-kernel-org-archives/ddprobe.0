Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 191F3456DFC
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 18:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785264634; cv=none; b=cg9CelxwWrL5JKwugqhm8B6an5gaTmTQH1ic2Bz5klZGMptMTduGWA52NOJJ06m1klk46tVZHtZa/zTESIbTPRQj6vvkF8bifWyZznqw51MOnaH8w5zjEnoen8AWFXNiXg0AVWQqlSU4clsvRowtB/biuAhOOGAWDfsZ2muRRFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785264634; c=relaxed/simple;
	bh=jwN+1t30vaEWvIRFlLOb465lMwT154T71W3aX+ac7K4=;
	h=To:Subject:From:Message-Id:Date; b=CUgGJdMGpLXXDUO+rdfjZ9UTg3adBgQqqjON6lm/CB7UlE5ejodarXatbnL2gLW/Ss2Zi5uUsLns669Z78uu5zZ/nrqzty/BQI271CqSzxaawXeOvvu41XmZXZ5m96Y32NljqlqVty5Pb6dPNCmaQBmtKFX+Z1J/lKyl0eJ3J0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mgyax7PS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mgyax7PS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD7F7C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785264633;
	bh=jwN+1t30vaEWvIRFlLOb465lMwT154T71W3aX+ac7K4=;
	h=To:Subject:From:Date:From;
	b=Mgyax7PSjmHAXFL+wGEqBz1UujdGyuvDSMBg3XcaR7xcBuPAh6CVaj+jvTvOJ13fR
	 4BJyqs5VPqUhbmpreeljytGlys9qbL1XA6x/N2Yy0i/NtvH1ib0UJXOOqpAJW9ybr8
	 LuMNx3NGO96clu57L4f03dDzXnH6dTM82pkVD/1vcslAHJO1kM0FwUJ3NJKLZc8kZn
	 oP8YX/3bzvcbCuZca5oVR/Z4Vj7b8k+diC9Vyg1Pha9krDNxvQg/JgLzZJVQy3D+NZ
	 mn3uFzg9SJJ4KHNYPZep67qjvjF0oa2fxd85NH39wqlS2qgli/gfugB1FFrbOPojyu
	 ykh41nIPJRtHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD14C54F54
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178526463369.6675.12354670072790068247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6018a8729c4b0734dc270c71f73e3557e2bd586ea842ed2fc72d6fdb762db96d
Date: Tue, 28 Jul 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785264633
