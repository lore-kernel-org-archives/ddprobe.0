Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28C5015C158
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 03:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772939694; cv=none; b=NJ84K46NrGDPun/jDOUuP4WO976k/hddOHOvnBgUASY5kMNduYzb7wmy251IRj++uWRMdHmbfU3nqThUznzH4i7T2ZkeoDj/JKGmKG1Z0Bb9RtcEW92FgViONCLcYepZ7eC8grHiPehI3XKOozTw7mPP6ToUvDWnrMORB8m/fDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772939694; c=relaxed/simple;
	bh=v4Q/LmiHASSpHQtsEDjQT0z5varM0QQ645FJzRRiAao=;
	h=To:Subject:From:Message-Id:Date; b=Jngt1i/N1ogaxU+j4W+8cSdrAjosPuYtv3P7+0OqLZwJtceHc6oH/HrFU01xftz6NFW9t1Oi+/gXTXWaVlTX23gpFHMskTGn4ymurfWMu01eN0HWBbtcc7tbLwaoprA5xqH6V1AgprXHbZYNdFqZxBk+zTYxNyjnkJHIcKpXqZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GwbtwHT0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GwbtwHT0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAA71C19425
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 03:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772939693;
	bh=v4Q/LmiHASSpHQtsEDjQT0z5varM0QQ645FJzRRiAao=;
	h=To:Subject:From:Date:From;
	b=GwbtwHT0+jALwChqzm79360SOPazNWOfnQ4dtbAuarrfdUlj/e/5DstysLa4NBHN+
	 51lwSM/yFEu7kWdDkeomo2kD5JpcN8vtYLf6y94Kos6BNGLYpujFKnewS87A40nUwR
	 Zh5r/kzR1HlmD5a0Bl5i/8jnEtpVTYZM8q3d7lJ5maDjCQ/Z9p5UXneIug9/ikZ9is
	 S74BJzsOQDZyHfFRJUsM898gbQZVQBeG9JSJqD4bT99jfZ1x1uaX2TI4oWwtpdeJJe
	 3l7dptCwXv20YOhmNzFkH6Q4I0J9KLiFQl5mon/Bh+Na9+abp1nU1RwZdzHvdbELW5
	 hAOClleIngPIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93EEBF55106
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 03:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177293969358.20302.18007719193871894981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60ae569d718e424909d8ad9f6f06bc8844814e15321d6cd462a740f1df7bf37d
Date: Sun, 08 Mar 2026 03:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772939693
