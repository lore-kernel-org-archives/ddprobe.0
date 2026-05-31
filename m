Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CD431B4156
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 03:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780197274; cv=none; b=ssodKD0RoZMpeQ9f/kFy3ymv45xXB3jNxokZ2+QoXisZJBoAqdXb87nsuiFS68v4I4NPPThGymAK//bnhOW3eY+PUn+6KyJPQvvFIqM+aqKqTdHhPoU6GR+DPK4QI4lsMRwLXUZPVZV/D0XlqxouVU1/3KuJDCFATeA/I9IZVoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780197274; c=relaxed/simple;
	bh=HC7Lg3wjxkLDaS9Kjwe9NSOVqL+46SbwIp6F70hx6j8=;
	h=To:Subject:From:Message-Id:Date; b=Vi9RxxPCu8E3pT+mqKZDqEkr1pgSrpBUg/6GUQ4aFlRYhnQrrn+/qSBQEmpPV7pHLPh+8lU2EwX43zvtDxu6DMyYAFSHAWLz1oH10/Ig5ldm9erT2ZmFvwpfUtlL0nsgaVXeX2akCmpW6i8ag+9ln8RYeIojGXfssDpblTkBYwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TbX3OZZN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TbX3OZZN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6363C2BCC6
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 03:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780197273;
	bh=HC7Lg3wjxkLDaS9Kjwe9NSOVqL+46SbwIp6F70hx6j8=;
	h=To:Subject:From:Date:From;
	b=TbX3OZZNMv+Yg9xR3UEvNWB8IhRgIUsZZlBChtBLuIeRhOSt8WSbvVSELQAMVCaee
	 x8xQlz7+7ZO2LR1h2cNMMyp3ACT4nDoUz3DrSDLVHQ1HdUPrHj8cRN3D/6Q7nPbL+N
	 Cjn+pLpneajB4wmsYxIDxuHQBxDZ+UmEbYAPQxRhzeRgpr+afQRLJvGMpPbTEBSZLt
	 OX+7yBPCYP2is3HkpGvOBsdhRowtAW56e8fwkGvzLVIWXhzrGDqOgl1Bzg4r8ZEyji
	 u7Zw4uMsbLQNZ8tByC2K1N56sZo+e9AHafC5X00xvEAyFVDTW/ZRvqaFTpkG5vCDmP
	 AwYEmkX9Wl8xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE92CD6E4C
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 03:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178019727370.10672.17233942769005623317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21a4a879fa7e72aaf4ae619e9f845bf23df412653ff1dba9bb4e30a39b736fbc
Date: Sun, 31 May 2026 03:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780197273
