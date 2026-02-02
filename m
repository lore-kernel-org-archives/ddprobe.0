Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FF355D8F0
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 03:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770002634; cv=none; b=X0csjjvv1luO4/2nblfY//F6kX/IGhx4QBWKuy9PAammaxVUHZB5pO6zlYMFOw0Y1F7BVkXMt7A2jFAhow13uhq4m8b6kCH7oXjFIlqtGhq8wuF+L178gmH+L3eyu2bohHSn9Zw6s/4Cwfe3LCfm9KkU5L1s9dypXl4EJsVkgm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770002634; c=relaxed/simple;
	bh=6AqPEijNmudnj2iDksfWkgBe5htCdbeLntDSl3dbkvM=;
	h=To:Subject:From:Message-Id:Date; b=BCEXgQENBMOuFQuoVlPawsuXGyYn5ztLjxvDNiJZ9buIOaaJwWuYTDP0pUM15xyQeSzZOZY7DVfhksrz2TqELimieEgIaDO4T9LoQlnSjAO3xjPR3Wf71uIHSKRx+yRXY3Pc6GjqbSoJw/Mr8ITGZ87EH8+cneY+Zyh0mxl3VPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=umqp8Vez; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="umqp8Vez"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADF98C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 03:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770002633;
	bh=6AqPEijNmudnj2iDksfWkgBe5htCdbeLntDSl3dbkvM=;
	h=To:Subject:From:Date:From;
	b=umqp8VezoZeRoL2RpjSguukVDLbCIn65TggRE0995suBeJxp9uTQSJ0slNPqQ377d
	 77WcLJwMAKGile9GO+siGauW1xSKANDmkkyiegcv3qSYGTW/p9smZFjw1GIeIU53fH
	 1MANSZeAlFXcXsdQ0AGiJAS1MnocBQlEaZvRivl2iT5AdaxL/kpmCTBMrdplWRiwWm
	 /iN+yfNM0q9/JueT0nThgQzXGP1GJwmwO2Yc454ONdOpuZ+hTYBNLEZB/KG5XVeR9l
	 OfwaVqajf4EKO/1SmPF9uK9BYsmW1j6JfkX8VQaA1fnGDIPmMF3dRZLRYe8hpz2q48
	 sFw5XP3+WAZ5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C39D172BC
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 03:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177000263359.21959.8872995256709571357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74b5fa9a5088500a20dc4d4fb263eaa7b43bc0f2d128946e9744ce9add598751
Date: Mon, 02 Feb 2026 03:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770002633
