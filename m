Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 579C9357CFD
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 03:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778643034; cv=none; b=XuqdeZl8BZ/NMhhJceOLiaQFs0un8ryasg0KYU1CK/OWoSXaetK/4t1RWumlnvVlR0EP4XYvOHxIeoyXuCh5f38k0qzeAMwU1DKIz2KP7/wqrIHAJ1h0l55vpGc3RyOzwY5XjvuTayPyk6ike01B+ruJGeDiQAth/gbPpnnpA8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778643034; c=relaxed/simple;
	bh=NTNmvlObRf5d5NgdCxGeYfdlvs0FtOFA4yiYYd9GwDU=;
	h=To:Subject:From:Message-Id:Date; b=PC+IckI+u5p/4zPEonLni3VSUvwpY+bXmIQmrAHYr9g5ay7adwDHdelX5teM7fjuBk156fxJhj8iuZXi4YiIbNYU5hSzVjhRr3nCg9bhz/3ZQMNZBqgnm0e6CdW21/OvrvFsayRbUORQm/n7bKLVAzyw2jgh8NEs8kW+uze7SdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nUHsokbB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nUHsokbB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0C93C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778643033;
	bh=NTNmvlObRf5d5NgdCxGeYfdlvs0FtOFA4yiYYd9GwDU=;
	h=To:Subject:From:Date:From;
	b=nUHsokbB7zFxvEoLvOmkx0y1wb7VmjRa0VTwhkycsSvpJM94Abvf5kMMcFq6dOlQz
	 ShFs1KV7bHELoBsJS3oLbhfLSdsHii0M40H/HSaM/sCJAlmOX3UzCcSlimvWzymgJ2
	 NJL93oehWLLIAZb8ygx60Wv3o+ylVGfgSe0UQ2XSYhQ3YzcGViCNy2zIOMutqTrQ4b
	 YTedUWQrCOpBgGioEtErNgf2P3k52xVtmc8e1vvSucYc90X+luiWKAEJCyARs3pWzr
	 mBq8yBq+FysU+lAeo0+50I1biXFzjQ6VWCtvwBVld+XSToWd2u9NFIOGMhWNV/t+aw
	 M6sUA+J7/k6pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF8F6CD4F21
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177864303376.30818.18351397177216118451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30d9f24afce66e5d2fb27a1f8ba3683de9afea65c0e8fae9a9163f15f48428be
Date: Wed, 13 May 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778643033
