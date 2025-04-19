Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3969B4690
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745098194; cv=none; b=BxC+6SIHrduZGwsyR2OCO3HumoU39lrwxS8N3u72hxc9OE+I8r/0S1GDnNAo2m+hw/Od4KCS22LA+hSHRixS4bVaeLErj5IbdYvUHpalRjl5fodB1f75JPF/voNK1QMSdPZVLyTjfxarqE/r/FWrXrUqoDyCTbFMgKbSkevkFnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745098194; c=relaxed/simple;
	bh=2KYH8o3XDelCF5B3XRvzbGXQ5HA3fz4Srp/+EoqUJ1M=;
	h=To:Subject:From:Message-Id:Date; b=RdLcqWdrSHS2IDKfh7F4CfVg97j38VKUUa5kssY42/rBx+y0bgNQaMrXO1H6ZvMjg+y/GgsqlnQ0Z+XOTtiztHvjBeZgmUbVtkukSHBGdJlYkxIWcrCD9hHOELFpcWFPgtwi6uQWpLY/4RMCIDzT6sca0xet9LxrNFnMzIWQGP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=si7gZS2N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="si7gZS2N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB322C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745098193;
	bh=2KYH8o3XDelCF5B3XRvzbGXQ5HA3fz4Srp/+EoqUJ1M=;
	h=To:Subject:From:Date:From;
	b=si7gZS2NrFSGXhhRTHw6EJzdVFdxiG+Nga1ebPkkjBqzSB3SB2eLxnSuZI2MSgtyv
	 7COxaPHmx6MEq6EJG9ybMlk4rsOF1oycw2P4zfLDw1wg5dG42nL1Ob62A0tkptMNZB
	 kCYUHcpAYNCAAnscwXSGixLvCN9iaHfsrUMPNOylDdfmitSjH5Ad91OwJ2PDS6W5rA
	 mfh02KGmhiuzdZr0Z95pKSyuQT9c/6Rrf5AtZsoQNk8FzN4e7+TJIeC+p6K4KZkXiU
	 05IJse927JxWirfNbXsDgd5WSTWqKbWfQtenesrFVlienMsFlfiJN7OQAl4eMS6M18
	 oFwrsu5x/29ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B81C369C9
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174509819359.10440.15315464359408800031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c43e13151f8c65322e8725b91a26e18a9c875db7e3a5f4ade45d4f8f974abff
Date: Sat, 19 Apr 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745098193
