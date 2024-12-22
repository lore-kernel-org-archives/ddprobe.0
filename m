Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37D481DFF8
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734849954; cv=none; b=f0wnETM9V5wmQuGEwCPr2GjTWo5xApKWWVxU394BJeDnm99rDQLL1U5SV9HA4O7T3vQ0wjsDHkfOdbRdrZQpi+i/t1+MHCGE8yKq+etP7XXE3jt4D2kTLmycSTiFAM8MNeWxM826Fbnah5hDdqUlM8g9G0XFt1rO/u3k+V4HQX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734849954; c=relaxed/simple;
	bh=hn8bxYoNVKHhG1328g8+f1JAmjf7q4g6Q+CwBQ8dkp4=;
	h=To:Subject:From:Message-Id:Date; b=J5UI+Bh4gUY2VRw3V6kZk4+42gINRA9V+PjtcMID/o3eLz8e2oQwwTWW5dz7COlrbPCgGPyJdpokStRu9CmhPlhfSGStZKgVI1sXLdlTGUL4Ra4wGiTU9I9CYZiZ46znkSdTLRLzN61ttRLqq6w+qdkLKSlTj0+tOVtwkvSk5MI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I5c8jQzg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I5c8jQzg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BEDC4CECD
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734849953;
	bh=hn8bxYoNVKHhG1328g8+f1JAmjf7q4g6Q+CwBQ8dkp4=;
	h=To:Subject:From:Date:From;
	b=I5c8jQzg2kqYHSsqiTUv2CLqSHhHw75jpP1kjwGmS4T28yuA+sGXGJeLx6BWJNqeZ
	 Lu0rpgm4wPKuwtQ+z4Mo00bF6wisw98b6LI93rxCBg0/7XggqZx9AeqpcBztYE60Q3
	 qjjgU69+Pvfn0mTssf5yoZsy+IdJsUn7Q2UFtGKHlAnM+8FmyFtB3qYVxVKSY4hjFb
	 MvBniNCKynlUHpn3CPwAEftRY6tclGhHFFQoqeCtor8AL7l1NFEuFpZ8uzcy6SC4vq
	 6C/O94lY3VdJs1BmqCfVz2YS8ImxAD5AQU9QvIwttJryTbsJmqG0DkmitgH7ciMDa+
	 o0Nt8LeNhANuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91921E77188
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173484995358.9312.1336229352411620535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df371b85767aa898657ab3bbaf80936bb1a870fcaeff6c151c58c576e481d3c7
Date: Sun, 22 Dec 2024 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734849953
