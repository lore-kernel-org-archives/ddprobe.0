Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E3C81C84BC
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 22:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786141834; cv=none; b=RbmQBsxKQroZd2qzWJ+SSQSzXGm5szRuCU0dC/VpZvrru6DaUY+79o2orQsf4VVvCfuwohLOYmeOxHVWPBPQYtmLPt1bCYc6AGxdI8rOGIj7OvphnL8ANeXzRLGjWeEiokMubKtbm80Rnj59j2QZJH1iYgtUZqf2Iu6Th1V1zRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786141834; c=relaxed/simple;
	bh=Hg8Ta7vvrbWzZjwBOqbACFUJxonSoKhDwkdGxgNastU=;
	h=To:Subject:From:Message-Id:Date; b=h6vS7VDYJhsICY7faomuLM1yrOXqO2MH03x+IjBbzTgvkrwi/xhIYV1R1w+n9AXq8EDs4caHv30FxhBIzZaAvcrVdDrFtbvFuytpMWnwxGvwCCiO2VbcJ0GllDxZ7Evutu7xIKzcVKVfYutfuJHVdwuXLYoEL+qvhwpfAvIZpRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N1FCtiqF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N1FCtiqF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8DD7C19425
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786141833;
	bh=Hg8Ta7vvrbWzZjwBOqbACFUJxonSoKhDwkdGxgNastU=;
	h=To:Subject:From:Date:From;
	b=N1FCtiqFkKUD1fApyQef+RgaEcq+KWd2IQvj4FvBjJFFMFuEoxLbf00aEk0XF7VCo
	 IOjkP2tc7/Y6S8yNcQ5KliW2MYJm7JXhE64ECNL0dKsmB9S2y4aywqT55deh5c9BwA
	 SlLG6BaKOepmdnPcxjM3jGAYip/OIIaRCdKswNQIYLYqpzhi8s/ZfnPjpn/RPbFYez
	 wwUsAYf1Q/JEnFi0GvmESHvhgmJUWCqC6Xi1HiNgBvcH4xPB4mkqfzV+2QH9LxovBL
	 59i83aAIiDdUkBgqzLjufaFkqtusBPZNiCVHDSURlqmcyTSBlWO6yTsTFcd2n0YDyC
	 jAC+BJ6mCRvVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B10BEC5AD05
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178614183368.4928.12609918806444645873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1c0a4aff68866e1ea471edfe297a6e22260ad087c2bb418324d4241980ad6d9
Date: Fri, 07 Aug 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786141833
