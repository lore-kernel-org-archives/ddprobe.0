Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E0351487F6
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759477194; cv=none; b=AMsKypK5e4lgmwpdwb7Ark8VB8rzP99+Nx+b1t3o/hj3trpPjv5lUipsNEUQJOVQj48+iJlOHr0Rf/ncnuYWIDcCRMaz9ENAhhTWgdkVPWLrfBVzPXlaJDiiNcQJlKXgV5tA3wcpV+i4WYSwXC5DxhD8H87uiWAg7cIz8Gafc2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759477194; c=relaxed/simple;
	bh=LSuwxcccmGsgKGASUSmS0Y6kXNb2C59L97nLJPB6MSU=;
	h=To:Subject:From:Message-Id:Date; b=WwT24u37qpXUZiZOLM3e7UIfWAnjh10KP5kb4NZVYzR+lOZv+ZKNs0ooQp66olVk9OPzL49e+B6f9He7VgdxerX7YDCS50IPx0KJTlRTJAlzh62tU10srKouUTp8kx6YoVuVFWoW9NB1aUWxpAHmL8LHujB8llH1JzvyCajOdIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=usoAfSQd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="usoAfSQd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4398C4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759477193;
	bh=LSuwxcccmGsgKGASUSmS0Y6kXNb2C59L97nLJPB6MSU=;
	h=To:Subject:From:Date:From;
	b=usoAfSQdsOFaLXOwidkhgNMqu+pEfvph5rZ2PTlwArYoI0ieZ4teDONspBE7Jp6az
	 k5qnnrrRuIFemRxqB8pxZp7a/ZW6PU977P2L7vcjfZrBKxuP3wKFoiKjLk3629brEL
	 5jQfj7YnMWUs1LKCx2l4nPA/8qU/KpVmY6gv33TZBt76lvMj3pPtsLgBdXGFJwx86U
	 Png3QMlg0lwnDanZ/Hg76+fS/tq7+P42SMgpw1DBQULiuZcn53sbnUy232w8ttcjB1
	 /Ph3bwSPCFaGtzLgD7YkckmVmAVyXwSYbKAOUYrTFN+Td+KMCJquIAc0UgsEA8OVBL
	 PxIM7LRtkywxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B2ECCA470
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175947719357.15454.4735827423388877205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5b466d98e18c67c563dbe1b8f31a118566b09f376aacf5fa07245cccabe697d
Date: Fri, 03 Oct 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759477193
