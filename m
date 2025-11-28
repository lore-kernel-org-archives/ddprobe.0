Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C6E7288C2F
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 23:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764373374; cv=none; b=BeOhfzBrmv/oseU32u7Gx6i0cDnLVIDp++DXOyTnO9fMwE+vJmLT0MCAtg+6m1Z8Wy6W2/he0fx/2aMaqiaq+0lDvRsfzFdz8DRNCQwx5a9qV3QBs6PVAr39jCwzuccugfRSAUjWbLp6bLb9Oa8Smfnr4B6+5iB6+OLXuPz5HFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764373374; c=relaxed/simple;
	bh=nfECuzfMLxNb1d58b5KQ55Oa/BgIiiNy5f47Mn7uzM4=;
	h=To:Subject:From:Message-Id:Date; b=tOLehdNRP9uiykGeNJOlXJHI0AdisDMz6M/PPVFyNpU7flIFoubJNHMiRR4wVz7Q2JxG/7RGjBKjhSx52hjf7d4x3VepYhE8AuWHbCLlyhjc/NJ+ZYdyvNc+1svJmh0GYqsLvLNZ4zIMswkHi6w/MsMwU/VruB6h9QN6zUF4mVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M+q8QUHp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M+q8QUHp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A823CC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 23:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764373373;
	bh=nfECuzfMLxNb1d58b5KQ55Oa/BgIiiNy5f47Mn7uzM4=;
	h=To:Subject:From:Date:From;
	b=M+q8QUHp9JSEQWad2tYdYVQktSN8pFQw9Q9pU7cjbugaH3NTO38cfeFDxcAploF4O
	 3is8Nhh/uHFZOcDoGUT/B0lgd7BEBXr6AdDZ4yTLT0z5lkbKmrzxfAMetBqGM1L+Ek
	 VhDvlqCJcKyunGTtJXQgDCau1cpw4JRLJfPY7HfsXSYoi5741cEHjO3NVuJrfUy8Nl
	 5Zdo2PEMfUgCv7BPu4Zm17qM1IF58aM/brPfkoN1oEaz8U3ZA0oHEOFYdp68fuTam/
	 OWVu8kTGDErlDCPT/Yz5plvjDJEML67ikW4JBOJIkebjjE3PFqaKJHD2AENxOXks83
	 2792Z+jkXaUKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FD4D116EA
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 23:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176437337360.27758.5541297705406956637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d37a8bb7068b9ab55e82a48c3b94d9b90c262e8c2fb47fc8f0b2f066f1231cb
Date: Fri, 28 Nov 2025 23:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764373373
