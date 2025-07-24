Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 320988F4A
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753330794; cv=none; b=k2V/jyz7JizU8kDLlFv8l2nhxz/F6nTtgOQf3ZG+uYljnARJNgBsHA26YeUJ1vuSpWZ/t0V6XWt0jcP0H8HML8J13VlKBB2YzcMrFwhaI3M/hpjpZ4/JqaRnDp7eQq56Lmwu7FeRgjgXk/LTx1Q7zN6mGnz6ODKK5ZQ3T8bvoxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753330794; c=relaxed/simple;
	bh=LVqf2Npq1uzZtMFwOofLXYAn3a6uMRzpbeSojEfzX/Y=;
	h=To:Subject:From:Message-Id:Date; b=B+LCzTvVt4SyqLu7TdHjg/z+QnJhF7vHaweSdQvyUbdDSaKmM0bPQsQp9eTwL+1bcQTCUWGX+8l3Unc1etJQpiwTl/Oe5ebaULyqoFq8RyoxxV+dVyD02+yEWYkkv0hjZvTQEHyYXSOH8JFdSI93XVk7N4L5yzcgmVdeGqa2pPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V0mkAJDL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V0mkAJDL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D6BC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753330793;
	bh=LVqf2Npq1uzZtMFwOofLXYAn3a6uMRzpbeSojEfzX/Y=;
	h=To:Subject:From:Date:From;
	b=V0mkAJDLZ6NuTeIHcHemLGAjs6f0JbOb9yGhWsmm3WPxU+MleXO6oue6Q1sCTcoTb
	 GcMh2u4XeJ8oWB6cT3s1tdUvPZpBFSjf9ooPSTdb6wP3TbAmqdEHAm/BHV5Zu1bnJ0
	 t1qyyBRO+aw55dYgGRBdDQx+nDt7gvQFSNmKJiSxACPnUEZm0TG7f5o5YtVre5OZJG
	 aKK12Zk3AIZGUtC9hupA3BIlKAXsvjJ3aKLcXhiC8cSdCw0iHI9rQQHmqk6tJRT3xD
	 BUDiLRqN2Ycy+GytDKmg2UVvzu2gxiht/0cGmAZqQb/41amMsXm2c3pWBdU6zGp+ZS
	 DS8LovXcq0HGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F25DC83F1A
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175333079357.12390.812105461811891705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c7b9b144736231cc9b7b025b4087db22f016450b36c8c2404eee02e6209bd02
Date: Thu, 24 Jul 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753330793
