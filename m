Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 702AF320C
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 22:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717538783; cv=none; b=ku/qvgQ8XMlw2WwVNIEo5mLQ8als/EbErBUSEENEHuUUCR/jjPDanCQpyJyLCoDKpJ1DVUVUV5qe+kuNL8R2o3iSjPptEnFlA0xC/8bJHQssia6KRapQwj5OA0vW3+oVMdAQyM3gwcy1Vf0ifL68Hxu23or5KaK415kFuSSmFBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717538783; c=relaxed/simple;
	bh=2ZIRmpvF1fU1Z9j07riakMsHznoPq5rou27axWghUaI=;
	h=To:Subject:From:Message-Id:Date; b=hxJo+9Eb/lZbXKWoWfqsv8SNpMXDO38eLkevw2vUr8EyEHNtWuPS36h0mkm5OXBTrXZtmEZbLAUvMGRVL5R4JS1tEZDkm7FAoCpZWwsJn+zysvWUwCtbBzqKzdBz8ve0Le3DMgeLS4noy4ein/2Km6r4UXkKUbqC+GALR0s6Weg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J09qgd16; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J09qgd16"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E888BC2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 22:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717538782;
	bh=2ZIRmpvF1fU1Z9j07riakMsHznoPq5rou27axWghUaI=;
	h=To:Subject:From:Date:From;
	b=J09qgd16fYd+WfIJBghMZZaKKQBML3VDkJMJAMMC4/Mu4Mzc7B8oZooMo7oJRGsgq
	 Vlb2ZFytAnqd7QiJQxmBd2oFpFFkksPmdHJVGDydNIku99xaSxNqhqgFv06mdrhzfx
	 NqZFjV7ckrU/J4SdsF5cI4yIjHGc9BFqK12ORMUXsQTR5GfKUpHeA5ooTknNZ6oBxX
	 rzP7m7QlG1U4d/FK1PhIHmtETP5famO+Ba1l0bmH3Y3G6dGP4jnSsoBdhCko144s5H
	 PQV6Jh4Qm6b3f7kHUrHngCCy49KWE5v1dd5V9Ths3cV3IhTwY4yQXvnLXs0wzfWuxs
	 4J+m1zYcjN4sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9E04C25B78
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 22:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171753878280.19221.10005719319912434188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a7b428df65da751377302648f6943bcf1a9d0dd7e4bcc8f663eb45ca42c49c0
Date: Tue, 04 Jun 2024 22:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717538782
