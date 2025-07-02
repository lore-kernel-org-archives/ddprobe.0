Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F6BE275874
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751485794; cv=none; b=RDRIZAtPtm3gZOUKhUR6eIr0cIjSgzoAsmUgKJ5DQQwodUncrwvL1DiHUmu3GKR2ECzz40BZJhb7qdM2z4Oeza6tX8uTzgiXd6xizsa3vNBEe3KPh9hUs8ZOCN87k5YK4A8QhUVmTPwWqKFtf8k1OA3R97n5sz0RQd8rPlLJw1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751485794; c=relaxed/simple;
	bh=yegAKJRePYqRmyDN6/0508duI3Iie4G03RgV+90nW6c=;
	h=To:Subject:From:Message-Id:Date; b=if93x5OMthPIHkDYaXCoZRqrA9R9psGm9pEUUmEx8a8kmmRC7j9HszEMrNkvRpl5/uFtN9G1YZJpoRTCSEGklqUXttxVYrqJlDPz+P+Yprffx/gDmLSpRY+vI6+0hQYWnntENuQOepuIK+mYZIz08gWgjPb8ndxvhpTKUkrccfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PfOpnio9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PfOpnio9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D2DC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751485793;
	bh=yegAKJRePYqRmyDN6/0508duI3Iie4G03RgV+90nW6c=;
	h=To:Subject:From:Date:From;
	b=PfOpnio9+o2zRDfwO76jifC+L2L86rMaiba6/3hq3q64hhJVuEFdDfLzKBklcsos0
	 pwytcOkdyVlgXrMhOJJQpm0702G5kOc0zh0oy042SlN5W5J6m26JMZoVF3MBKyGSgM
	 HN15ZBmUBNLJVBVirzR2oBqP2XUQH99uWGXbpUOaX490FO2JIPa9hK3cROpFz4eb0w
	 Dbu8yB4BsJiMWTEpveeFiO+jQnDhuc6Sxoo0ObU8bmqpTWL92N18/c2/OTtWCpEzPW
	 tZBoKlwHohHnZRzxJWfvUDno8o2XhvoplAF18HsmM8TaoHniOJa+hBQoRev+jxc/9C
	 5BppMZDzWpKvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F28CC77B7C
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175148579357.690.18406380743264285346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3936566876ddeb244d1940ce0f2338a21365d44d54277d11e7a9483d1a873fa2
Date: Wed, 02 Jul 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751485793
