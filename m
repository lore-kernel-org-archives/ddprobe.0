Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C5C736AEC
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724402154; cv=none; b=ZMNrctlKg9zWbnmvrDeUyXRaZ3tlGcCyf9XgNQnYJ5AkZewld+YHCjApsyibvgGw/aB5mu3uFZ4JLMnuXrb8YzstVPn8piYaZBURIyRkNndXJ4VGKX7/nTLEyEAbVNaMAf7YL48Y5ci5HLEDQMDAPQRdLxmdpEOEuRRAXGn6g8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724402154; c=relaxed/simple;
	bh=kH0mFhn8+Hc56/sQb4UUziIkHnkUcTSrz55+sPR19Lc=;
	h=To:Subject:From:Message-Id:Date; b=ISeUjY1wEsMKcfwduxBIRoDXKFOo5udqRvcLlIzPA96hFdrauRt75Ix95lLcIrXSsdov6PJglzKpZEkrTTLIzyIzFXkvuR0LN3kuKdr0l7I5SZB2uuE1IGsrMWTtMyO2Vv9wtTeeSzIgYEle+QUcMeOHSRnuk7yY3U9I8b5OJoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G0WIg8SW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G0WIg8SW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE438C32786
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724402153;
	bh=kH0mFhn8+Hc56/sQb4UUziIkHnkUcTSrz55+sPR19Lc=;
	h=To:Subject:From:Date:From;
	b=G0WIg8SWNJI99Y5co+mr+JI5Ul6f665VtH8qN7yF6wm1uTBQb4Ml98jgK0yE6eLno
	 p4zQxQ+cWr7yNK/B2KT9y4OgvA6+1o0w1df+QSsT4oa/CObKmGYwH08CgOe6Vgmqf1
	 mm4ttyijV8aSKulbnDCAlHcJWOqs210k+/ZiGYFMxx8JMVOPvhm/n4PA1WmbA33gmP
	 BPvo+t82aejid50IO00HzYtNd3e3v21PjIuGWeYFWiACtieM1E0s2Wme7JwVbSNKpG
	 O19WuXY698OFr5pvHg3kh8XiErkB38078IrqEIjQuNw+uC2KOM50FvQpo6GqLznIv9
	 IKalu5Qn/0B8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7C53C52D7C
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172440215365.28588.11044929025822304975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8696d4df45963c86ea06c7330d4d267ffbcf05a215367c3768f8ecae1d78ed5
Date: Fri, 23 Aug 2024 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724402153
