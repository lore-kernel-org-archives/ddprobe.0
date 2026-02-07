Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C4CE1E1A3B
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 20:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770495834; cv=none; b=MMEIgmBvZLJeWIYCH9/elb0d1OolDbSDsurN6ZECPwjo09zWgUIc50lyL+dIoiVN/GSoZScddocQ8UsdZNxRMrgo6h0PNXAGFprdq+Z7PSVYQIqupBGg258tJBZtfcmY2oQjDUqCgV++KB5OAptGF2Oj+vuiiYHwMJ0UHWtQ6/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770495834; c=relaxed/simple;
	bh=awciw6b28OAPAfFATXKxXBWzg8bTkDSDmHw9XPf9okg=;
	h=To:Subject:From:Message-Id:Date; b=eRBDO8Is4pZf5Hoi84gnA3bHV5Zrf8il/kbhgiaOyppa7ZcHAzPwsLU1IWa1RLOEerfxAFeQVsZsiJamTJO1A9eJDiwMUFrgZQT9937HYAu5Cz5waTACUHOl+ZWSGb36RxBxdxiSKPazsEm2JKo4HouXaAKyHYvkKFFkTFCLNLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=riqUjbcA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="riqUjbcA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE045C16AAE
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 20:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770495833;
	bh=awciw6b28OAPAfFATXKxXBWzg8bTkDSDmHw9XPf9okg=;
	h=To:Subject:From:Date:From;
	b=riqUjbcA/9HU7SHs4yqHxJNhaysoekoFqKRC8N2ZRqEHTOXSP554T+ESgp/IDsss0
	 e9jnHDmO+weLIk0wX8rVpBEKzYDCyseWP0mqmXbMMZrrOxc69Iy7f4d6KeAYXjz9CL
	 +SyeJ9iyAIdwDKGSa7zdKTJjm0POrvnCOGY1Kukv9hsF2JU6/cZMIzjo9hFEt6fvpE
	 /sAF2O1PENBx0J5CeJtMffZQkiliAXn4JGn4yIFpMOuN0k8mIvI98iugdUT0UuTPVr
	 8kzMOewsICJtqMwdl5lFI43SaxQeXGf09vitpumenziDJkB346ajUQScgXhbJzFfdB
	 N2H8e1KdPe6mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97541EE0AF3
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 20:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177049583358.1005.15654277760591093603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e894870819183f53d91898a85c9ad109e7d48ac7fc9b51879ab2539910a51c1b
Date: Sat, 07 Feb 2026 20:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770495833
