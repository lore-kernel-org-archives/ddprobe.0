Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AC781B6D0E
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735043154; cv=none; b=RcWwMUVDZISf0j579m40UdGS+rLu1YDyJxkPNJSvJsQ/TUYS0OQY5HQ1I+mWxCKBscUDWuMJXfcpEJSBuBHOCYeKYo0oDJJFYqpL2OGIDM0GScGPEyImjTAj+JYu21XrICuel8goo0lzkCj4SPycfFsdOTBCjy7P9da6pjHp4BQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735043154; c=relaxed/simple;
	bh=ERxddQT3wnfnYoXm5dXucL3+QDRQsQ1ciiqFc8ZR7qs=;
	h=To:Subject:From:Message-Id:Date; b=InssJbpSDU3yqznvfhjqyTsZtR2ioyFtMzSzh8hb8aC9Jzeb2zbV5qAciodGdN6krlk+uan+GNRCdnuUn+7xZs5BMYJSHz4KKpuWqlvpLGEj2GyA6Xp75bKofS4p0XRarDu9BOl8RJ0DMh92WqbTj4g6dbTc4cIQyy3fq6ijutY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Egef5Z/H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Egef5Z/H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCCB3C4CED0
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735043153;
	bh=ERxddQT3wnfnYoXm5dXucL3+QDRQsQ1ciiqFc8ZR7qs=;
	h=To:Subject:From:Date:From;
	b=Egef5Z/HJI/SKA1e1KP+53v66hMer4MtQH3sNINRbNLKa0i3LkIjZHR1y/aDMiozX
	 PkWa3u2PXbcwLvg71+aHV3mCtBgzLNAMOPl+yp6f2AaKj4g6kd35gzKvL22f+qjuzS
	 X+BY6lpJW3aU8yTtkoqWdf8eLdL8rtdE+ozP+4+gRZQ9LHJWGZJvrJMRsVi7GrMwCh
	 KnwVvenjxZj5Esq4TeMoS/cgvNFwOazz2Lq5nyMwbIrRb/YvvXGPXVeMWGjFYNfXNx
	 jlvjbGdJPrT7kwSNiisiq4oBb+l5kp+m2Ga+x5kcgZU3+eDvcSQchBUxxJIiRkqcW5
	 BlPS93DIp91vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3240E77188
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173504315359.19532.17740117034603415374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0f1e83635f9e0c5e59b8051efccd79c140f8d1d19ce7b0cf8126ad72119a967
Date: Tue, 24 Dec 2024 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735043153
