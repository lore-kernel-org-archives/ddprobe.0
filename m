Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2949289E36
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757692794; cv=none; b=IDmNJiOKBpN6s+AsqpN/g2sf2pAMhP5gtraesV/2/5TpHzVI5+27ydzB8OrxlvZEgsqgBwalbyfIUy5/tewB4+cXGDPQaCHku5AHM448+WSB8lJS4KAvPZ7NrTc9Aes59xqlInS96yuEwpReydEFxLIv5mpHnjairxjXVfGsfVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757692794; c=relaxed/simple;
	bh=RzaD/AUmRNrmOMOiKD8awozH5NNthRjQFzguKn/XRWU=;
	h=To:Subject:From:Message-Id:Date; b=XDxR38D/q9FC9A7DmPb2OAI770/hbVHvl8xp0nn0mSUScTaJIKCahsxY7kCOm15v7J27mmfkHQLCynAs/hNRWH1x6gGi71XHj62FpnU9DAFifd5hQn4+INyqbvBZoJ4+QgSayKv+bj8CVS/LXbekcNvawRIr5JfvavRhxYgF+Sk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k7KeCHMs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k7KeCHMs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30ABC4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757692793;
	bh=RzaD/AUmRNrmOMOiKD8awozH5NNthRjQFzguKn/XRWU=;
	h=To:Subject:From:Date:From;
	b=k7KeCHMslitu5RN1VztX5KkB3GUKO0P2ma6VEzMqP9+RqEJX3mAQfehXGhnsgj5UG
	 IwF49Ux4NMEFta0Av+77G359FQECNOoAdZymw8iSCjh41jSDGNHvogk7XPVwqpeCuG
	 99wiQ6itv+cY4L534Ef+zXVXqLwVqCrOecL5ekmmAcvR0yjVe+Y6A5+tKJ8C+kMTPc
	 9kAK38bPBEXKzcTYZEr/CF0qX1u22yQ9oIVKdFUMIOvCHnbpamg3G3hzyp6lL4/9rQ
	 QEnP+0ohYT53YtOBBWBbja5fNG6hz9Eb2jx5N0q1P9oy7ARiUOBrTEgE7qwbIuqUVk
	 iiuGy0ymOLAYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92027CA101F
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175769279357.2429.6874464469684140334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42ab4668c73265bc9a5d6817fdf97ea1f1736276a9be93064b7ef3d5245dc7b2
Date: Fri, 12 Sep 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757692793
