Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 517304BEE22
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 13:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789219234; cv=none; b=HPUgRvfBK93E4mpllZTJADQtlDnnpbBtb+cBLfOyCmelDk99NFoNF3216/qo2fp3IX40iGtVkGOPmoEnQfrowSVFheOrVHJLdkfJouzU9Mk9tTennDbXrNu1xTjNXOAwOzCDAdTO6vtVSp9oXp0ixTVKP7wR3VuQbrUP89SOhaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789219234; c=relaxed/simple;
	bh=fyDe6M8pMqL+hYGFpQc3t9xRt/9Bsce4PBuya7pQZH8=;
	h=To:Subject:From:Message-Id:Date; b=k6Ke3kk/bDvYKabaI8sdnsXUnE9UTRAGTahOpWVNC6BT5GYMQLDQ9Kxj00Oxnt0QZ8QpYcaxaigcKVW3/97QCpFLUA85DVyhICvAQO7S+iPxT+wdNl71Nn+OUb2PSOystEHJrULR09R+/kvsugZW6lRR8wQaywrRD3uaNob9fYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JYQPfSMx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JYQPfSMx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D08E6C2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789219233;
	bh=fyDe6M8pMqL+hYGFpQc3t9xRt/9Bsce4PBuya7pQZH8=;
	h=To:Subject:From:Date:From;
	b=JYQPfSMxlvRkzYT0KxhZwJGbidm7xdB2v/XgzsUEZ568R8QIWF4hANoo7P4nbBux8
	 mfKnc/woznLH/bA4y4t8RGK1rWb3Rt+G5QFH8aOqqlLN4Rr/tvWNo7z6/LBAQncK7q
	 h4UC+hmwePDoQoA+wCgDBP3xY56aLsrNBboDx3m5F5Laqh3S3RHtzbU+QfugqhW3jf
	 lWIXU/h1R2WUW/VeJAXJKrMYyM7DVdyEMZyy6Peu6MhWk1dv0ZNGSzE+m0IJU9tTMi
	 JDnhmWO5hoqywdLCMwB3Lz+UM++ONafTKO079cRTS96zTrY85ugimn3ZvpT7NRpaFF
	 HMxYCtksnN8Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF5E9C88E53
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178921923368.19671.17437367408019906479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c59b4ae68c681576089889bb3b76870edb674ccad2dbf3e2127b23ec63ea9a0a
Date: Sat, 12 Sep 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789219233
