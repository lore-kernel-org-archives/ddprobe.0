Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BB71217F36
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757114394; cv=none; b=ITKJ/OD+QfW1Irz1glez8zU02wZgMHx+Y6Zg40IxzehSwgxTkmcyQCJPWtdmlmML6a0WruPv7qQLYmYnUO87eOsac85qMrkvKQDZ0pIs2xtw8vUSerAsK3z171nk8uCi1uPE8ICuYgP4CHtlYErPQJKE0RWmlELzcX6nKunInnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757114394; c=relaxed/simple;
	bh=OM9LzrH/jDNI8yOB/NLprRlaa0gV2ZWzzyhmjyTAAQ0=;
	h=To:Subject:From:Message-Id:Date; b=lyE5bRarJ3hj+1RMXgOUsQJzeFRteiQrHcMqteyrDTXAXT0gafaOQ4vUe6cqq+9BD3zp2Wrydpzl2aEnCvfTVT9SZIHoiYTcP5xsNsm2Y8OKgvhGgfmRDDGkmdhuePGjo/l65VHlsx4Kkfpik7TqVN/ftC8+q2xYqGNaqVXDtz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hp54IDTp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hp54IDTp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D831C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757114393;
	bh=OM9LzrH/jDNI8yOB/NLprRlaa0gV2ZWzzyhmjyTAAQ0=;
	h=To:Subject:From:Date:From;
	b=Hp54IDTpbiDeotsqLVcNPMp2YMfQE5oVBgWUoJUDSlQ356thW7UC6Wxot1/nKsErG
	 +gNOJjeyl2zvjeiVS9Wxzcbt9POvxm/WLgSiHhzgk/sAcL7q0T3VT8/zc/IfQu4iHK
	 YJdXHfGel3vP9Pws5ayoaD3KHG7S7N4YULrYxysJ/XoGxBgY94PvqIjv2gStp6Wt7A
	 k1+IHddYfdBow5Dxb/vdf0Gu7BpHJutLF68cwK0IaC5m8pGuJokAe1fA3Ou2bD1CR4
	 RVQxq2bZZfOrc9egJ/9YG+OpYN6MEQBJCKR0av0wOxpQGLoHtP/5sPTP8EOPHkypqQ
	 QIHeuDR8U++mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F74CCA1013
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175711439357.5825.9246300523436868320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6baf9fbf1c12cd1bb1a3c50a25cbbac214f12ef3d4613a3498730f1244696a4b
Date: Fri, 05 Sep 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757114393
