Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 251BA1A2545
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 15:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777045654; cv=none; b=oGy/UgajSlYlK1aUf3zQL2B7Q7xNQFV3F/g3XMLo9Ewll8+U0f/imiSp3O/Hp0pVyYP4gTC7Vz7AtoLLYJvaieOQR5ME6AhJdRrjXa5PpZH1mTfXwa5YFt/BiU9+skDVk6d4BYelvrDm1D4BtLhyWDiHTPRtq+SklhqpTbbPXEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777045654; c=relaxed/simple;
	bh=UG9l+LusrucqEo6IcQxUEM3g0mvG7Oqa4ChKVbSAkKc=;
	h=To:Subject:From:Message-Id:Date; b=bTWniQj9PBlHqEJLZgADd7kfq/FLWNO7quFoXqoR2DyfD9BPqfhgeDAOIHcDmRYZGgdvqgVHLFF5avlv0hmFXQFfG0KuE6FrGqCS74v7j1zZc7DZ/et3rGoHonnbdd6T9KXXr1g6OjsOwCkZMdecwBepLpex8F2Zpnc+o3xMDY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LfhO2ln+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LfhO2ln+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBA6FC19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 15:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777045653;
	bh=UG9l+LusrucqEo6IcQxUEM3g0mvG7Oqa4ChKVbSAkKc=;
	h=To:Subject:From:Date:From;
	b=LfhO2ln+n/wQNMh6rJgGlqyN1/9LUHpF2Cw86UUEdYDJPRf4C6iAJSE82g82v5A06
	 qZ7V7fUTbauiPNxueYcZzqop9l3he4nS7wtmNqUA10ucGjZktSWFdegM6g4eNkYvB4
	 lIm20+/KfbmmHl/8oBS30Bv3n72Cpo2G9O3bfdfbIluns4wRJQS6T5jVjAl/vFb068
	 sSkp9Rs53cdIkk+7N4bs5Pf9lbPtCJclu8ku4BczpFKVXu1ilWrSACPymXErJKS6sj
	 oN5JN0DZ83pfmFLoViE7mP3znNTdVlokXIMFonZgGgQs3KD7gBG84/KKQ3rzRNozsu
	 gd3l8hqKZ9Fow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA036FED3E6
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 15:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177704565368.28413.6321159478255922956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddcddf91109a15bae78c6ca026a7600485c5f753a4202cff9d8960562be24b06
Date: Fri, 24 Apr 2026 15:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777045653
