Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9BAE1E7660
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 12:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775219733; cv=none; b=nlKCxX7RdmGyrnnMlLQIkU6M+JQdYazBc0DRTh1QTkbEG0xIfq3RlwEAEMyDHI8ugu8a0NzGpco88KpOrU4Xv7t5YgGFAQnYhJspkannhdWyVOxf5z0KQ8DtnSs3TR00v5lzjcOS1bgC58D53Ms9Lv6UER90PIoxHQ7Z+A7tNts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775219733; c=relaxed/simple;
	bh=ZsRfv5TSzJ1U5WodH/FgqDP1E37mHy0frVifFIGjFJ8=;
	h=To:Subject:From:Message-Id:Date; b=EdgEHiAZAJKUB/jga99toDBCRYTmoQXVX/ZRNUoxlv0JgglKBm30jEFT6gsVPi8SxFwjYuY9jkgn4vuEFnFQQ5VTHOOuI/5n7DWhQ2USr9etmSU2/esk3sfXAtb0z8mN1qA+olgNaH0RASMTkkofprbv6ASlqQ02sohwl8Q8BuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xbmo5rPq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xbmo5rPq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA329C2BCB0
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 12:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775219733;
	bh=ZsRfv5TSzJ1U5WodH/FgqDP1E37mHy0frVifFIGjFJ8=;
	h=To:Subject:From:Date:From;
	b=Xbmo5rPqjgvACzl3FYfvQgfkek8u6S+S/44ReYmRkvhw3KoI51SLaSJ1AffvmUmIr
	 xdUSsqwU3pGnUpV/27SlyQ9aGeDiqKEfPSm1K0tO2rUSWdJ3zZD8OLyZdJ9wnqlUSz
	 tureNZXHu0At2d4Je7iK6NVxBF+T7JIlgpYLDwhWK1rLSAA0Jdl2IaJN8tO10ACcyu
	 +25NVbg6fQcdMEECW5E5/V3S/qfdfyBcc6hjRZ4mvVTP5FL9pga11NRTorbovJEKaW
	 +k8q1fjFkHTkF2DerUTh4ABGjw5cqvui9UfdkbrzAh4OVc3ZKasOX5qpo/gxVbH4Kv
	 JrMk1v/oEKQ7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA28AD73094
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 12:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177521973368.26604.5566746000984222417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f00a5bd1a2070098be9383cc6044170e77ff79765666f65b4770dc6d09cd218
Date: Fri, 03 Apr 2026 12:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775219733
