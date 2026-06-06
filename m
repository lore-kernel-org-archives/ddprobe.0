Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39F711A3157
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 02:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780712674; cv=none; b=ImA2cRRMCora8O/IV6EO1vG2Xi5n2mDoVZFn5OPI53sTuefaewGPxiNXqAy9hfBZRXFESRouCLRv0Odj2EJg73MiAlBwlcYu7QSAZODbhQM5rS36Cef1Tv86NbfDQ7lctfNbB4q9gmQ0FjWBYRmGDs5QIS79pko/KMqZJnvxDs0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780712674; c=relaxed/simple;
	bh=DbSD028+xUr+CNCyu7D8p1s/BlCcg9OCdv6zjxO5nVg=;
	h=To:Subject:From:Message-Id:Date; b=LtvDJ1e9bfIeWp8Zi/ur97GImKlm9+X9G5oIyAN1gci1gdwXenBtavXYtnajuYYdaSUjfUE/v9VFtQGVBLOP/LfFMLOTXRGozoR+jYJTt5BbMXqgeklhjP6evvJSHaGrsvheY2stnrxHUcDZFsRcwLTTZ9JYqjWMi3rX+EO0pgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PaPP6VbR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PaPP6VbR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C97E8C2BCB4
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 02:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780712673;
	bh=DbSD028+xUr+CNCyu7D8p1s/BlCcg9OCdv6zjxO5nVg=;
	h=To:Subject:From:Date:From;
	b=PaPP6VbR8gl8NlpzREmtTgbMXcCNCTpGcmOMbaqJiAaudpSu47jtWLdvvm2TGdtPC
	 hMGCdK3RW1I9TpsGKmrVWQUFSVo1h9Xn1nGs4d/yxU1+m+ieVekS3jRIhkv6DfdPo8
	 c0KsuJOK84L3f0js+ZyDEmZvW0+uqqDQPjl9/pcQB9DZL4WQ7JWYa5+ArkWgq3TKi9
	 FxBIKS5HF1ifmR7RzY97Zw3C+K4aGdCeyhmPbX2kqG2VJeC5/sVs7aHugZrGXCpZNb
	 a4X61gL3+lmClNtMKwlZmwh3eYWdUxb7WxeM9/rQ54dFj6KiYmhjAP3eimDCz0oDvm
	 RX96v+C4aGdOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC238CD8C89
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 02:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178071267368.9228.14563372464921318857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eae681f815f346ac561459631a015b6e192a6153708aec2086b62aaac6c0932f
Date: Sat, 06 Jun 2026 02:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780712673
