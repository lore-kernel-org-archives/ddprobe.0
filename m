Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1040910F1
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 00:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725236754; cv=none; b=FhdDhnHAY9m+UvSu0mWuw9tlwAhRM4oaKUAQYoYo3bN5zA17AHSCdvpa+LHKYm4P46BRo6A3+Kyg/sntiHHw1F+qaVyEdZi1SdxRg/cyEMUhwimqCI+vVF9CvDBgjMjyq94kvnzbce+zGj2oTUnRoiuf0kNjtl3B0PZ9X1+hVu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725236754; c=relaxed/simple;
	bh=ij46mK3XLSFWiF6csbPNNzP000tM1/FRyZZ77AMcMts=;
	h=To:Subject:From:Message-Id:Date; b=OhtwFFie1edn+K7O82qRSpCK/83yXf/gldLze55AnJMH7e1+NQRn1WRz3KMw0UvPXOLo6vVR0IWi/+jI3HRSr+ep07xF6SKYHdEKhjZc8ALl9uSZmNhL8AHbQEjdzauzrEeH45h8nTgppiygvTJJo1r3J29WXed9dQlTvFFUYvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HYzeWpWV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HYzeWpWV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD0D3C4CEC7
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 00:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725236753;
	bh=ij46mK3XLSFWiF6csbPNNzP000tM1/FRyZZ77AMcMts=;
	h=To:Subject:From:Date:From;
	b=HYzeWpWVxzQRPCLqVIt4xaoibwUS0MUTsNcU/DysCnrlpWb8jh3qYpMJsZPLRZ12B
	 wbSbNOwjEK/QJqqO8GACYZhnauYPtDXIX3Wo8d5kJq8Vsr1b3eAkUN5r+IJ5L+PkjG
	 WnZMpVqzeaPGIXxMKRRZ1MaI3l7G9nI/0iPVATHpo4/lOc6VM+dhNScwu2dHk6ano7
	 POvbNodMbNbozurMZJsdXC178oDRAtQ+OzMbkgRVKpn1x3sK1u5iYcI8cC9PYIN26p
	 HBaaSeQMJtFnN7OQY8tyqLZqALYzdTYy9B1libinma0yZ/l/ew0k0Cuw+8+mAcDSse
	 bm6fqgc8OcErQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D93CA101E
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 00:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172523675359.18737.17558003093798372406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: febe503590c42081d63c044fa49fc88a3a02104992fe77d8962725aa3624e7ab
Date: Mon, 02 Sep 2024 00:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725236753
