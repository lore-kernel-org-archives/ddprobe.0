Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73282631
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 00:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718151503; cv=none; b=grgJkx+nP/8usewHttdr76jXrBhZZLMRdkyrrqQPOcD2O9hMrlFvVGZQEtupLoouPnRjRXpI9U03BIYGqkalVogGUXMfoT7pkRr7q4wIuBBjc+8EycdObQncIwqn0uj79uhESuJPY7TQmsychvEAcQYwTFz05BvCy2gMTTNp8pU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718151503; c=relaxed/simple;
	bh=eXu1zhA0Gpew7yQrGD81EME2mOJTJe5U8yKCSEw/B3o=;
	h=To:Subject:From:Message-Id:Date; b=NOoIXBiDssg2YdvSOCntJFnRL4zsFQREE3ztq2vz4ynZC8iXhb+jbLihz2XWCHI7wgDbSBxCbOehgKwbmcKo93EJeqdJakns68agWpVo0DHKnwWWvNCB1kyBrBaqvv6zaCAGqtFj643BrzpF6cUlknxcBd52mjMdCvszhNctf3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T9U1M2Pb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T9U1M2Pb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1F0AC2BD10
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 00:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718151502;
	bh=eXu1zhA0Gpew7yQrGD81EME2mOJTJe5U8yKCSEw/B3o=;
	h=To:Subject:From:Date:From;
	b=T9U1M2Pb6/ZCD4brvUMbzu5OhkUS03lmjQfpqAw3RlThbL+/o0tXEbQrwE3ZdA3M9
	 QLmNMVG8Cr6DeTGY2YCcbd8SZ+kiP/eMvtMyuEq+RZQNdRcXUUtxtOV3BljGjgwNYE
	 HqQqz0MVaL60tpcnofqxtcfRDpxDyDNwF2B/1NDA9NwsbokmRgrDNf2R1OSF7D/xmn
	 oJa0mwYWtK5aZMcEtUKvyrEoStOgeQPWKeKAAOyJNjznO0SreNHpjMphnazKmsQV8P
	 u46ueoYVj2k5KeH+RbTpq1TDxOwsi/vo8be+qAbv5RGewvV6YByD7RzL0TK3Zroksm
	 rboRoFWDEAtAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE8A0C27C78
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 00:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171815150280.16095.3662716746355975252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc2bd182dbe3f0c90a4b1bf370034bac959d7769b06d3f2181904529a7053cc4
Date: Wed, 12 Jun 2024 00:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718151502
