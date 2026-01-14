Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 177912309AA
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 02:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768359234; cv=none; b=DWLWATz+5cLgRxv35poMV3wia7BgeNUa7ZZSLncVOG7EuCKfsjXupMO2eMbY84BF43PWLCghZitHDTUd52v/D9itBnhxpA8Fn0Z2b8SiNKtRacnAgMPXAHD43NRS1mbIWbdiKOyWUj45NNOaEsUR22Nuv4ZCYa/kA9f0rO4eEoI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768359234; c=relaxed/simple;
	bh=1WdWLa3qadLmA4rVXoS/wKwavY48AOpm51ECAOFtZPs=;
	h=To:Subject:From:Message-Id:Date; b=XjwSIn/DTQzAiLvsKw/jkTMi2leHf9Ft12TMcUjFGGzJlIaa1j1ndDQU2vM8aUK0Kwrsa7IO2LQUbgSwdqgBIJUhh0egYzXPmvOwaDAAH21vTc/+E/9gGPuB1Z1OsbJSdry1MqAXiI81tArIdJjR67qMJOeMsr093f0JMsNKrug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gq2qSDAn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gq2qSDAn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6568C116C6
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 02:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768359233;
	bh=1WdWLa3qadLmA4rVXoS/wKwavY48AOpm51ECAOFtZPs=;
	h=To:Subject:From:Date:From;
	b=gq2qSDAnPSbhjuwFkJdEK5BlPpnFzjw9+ihkFS9A/ML1gaXIBbIBL6Cem5fWDVjQI
	 HEY9Zj228zUfjiQHxKLKZPFQhyPRcNe1Fx3KO05AqEjTdryJ0KiC8Ef+lsJ2H2gbk0
	 UevYilF5tqZ9fFouTI3LKSA/MC/Aj5ngDILPURPGEzAoYr1w4HzRrLytNBsYhIo1rM
	 hDbj42KKbGCYaWyDX0RfKBcd6ztVklOGun5m/czpUw0e/jzhMCZexEBbdDdtgeIWVc
	 oGLOGep8zw3wd3/dySEFMkrSeYji3xTJ49WeLp9JFlaMczwNqD0PoLw0+E5tywQkB5
	 xld33sZVFbXpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927D7D31A02
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 02:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176835923358.29612.18121353745073037090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fa87f5f6a64ac496d01bc20cf4e9b373e1db3ab552e28c511b80612987711ee
Date: Wed, 14 Jan 2026 02:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768359233
