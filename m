Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED819215C68
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731435954; cv=none; b=OjK26EZgkvXRMMeFzPSjjhPtUIOzEHLf7Oz3s1IEZbdxHiYIAnb8q4sbhnJFthqBE/jpZr6jwHiCGFF1pWqkq72vHsB6hzgvYVl8xtKDeIUWFpJndbxGGgzXdC1pWjQT85sn1QPQRiMJU+Qa4nIcz9aKVhSjCBHrdscFjb3Sko8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731435954; c=relaxed/simple;
	bh=3JXSRaWtAIpMzdUEMgjawlK58nKEllqrP5qEKoSlR+E=;
	h=To:Subject:From:Message-Id:Date; b=cxAR52S3GLOX7Xo6v8k4rppVvRxmS9KUW7gEwDJVEGYnq8aZ4G+gNPO+LoGQamgBG7p+wC5noO/Psrso3pZVRxMInb17C2fii0bdYYSrP1SaYrVfTpQw7oxuM1XAeCe16fEIj2GmVS9jFOb+zM+uajYEDBMk2Ss5zZqZnd6K/qU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OuAyhj9t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OuAyhj9t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA4EAC4CED8
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731435953;
	bh=3JXSRaWtAIpMzdUEMgjawlK58nKEllqrP5qEKoSlR+E=;
	h=To:Subject:From:Date:From;
	b=OuAyhj9t/s4ghxA26sF7pNWWk84iaCgbd3sNkbNfK+4v+SMgWwMuk7Q/QZbdxAIIt
	 8B1podbwhRgprxRulAqiaSYY+GrRh0VgdYnLB9+vKerskaTFZOX4UCrcChdF3CYgZV
	 bZIA9caEMaN7jYdsy/vR/cyKN7OwkoHH2IX0NvjzrH9QBzVuDIYmMKjnrzirkRUzNk
	 R2SJD5U4JcKkbR6Wck43qM2kOdFNQy35AFhTw50bN0OnBkXC+GUzJypQBLlx6azz/K
	 ZPA2GLHLHL6tAhnHJ9bosj1TbjdKz7OEDEvn12hBJA5zjOsTdhAwTyq+R5ML3DBKHj
	 NiakWte0KtO9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 997DDD32D93
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173143595361.4081.3864268476136131490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bb309352ff5f3b22610fa5047290adec6652984ee5f0847f136159523f2becf
Date: Tue, 12 Nov 2024 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731435953
