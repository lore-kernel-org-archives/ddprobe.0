Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 272F13D410A
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 04:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789620035; cv=none; b=eVh+cTR8X1JRQGyEWOcr4sbCN+PzpS4qki3Mjss8tAAh8vlDtqxU0w3Si4p1jNwRYPMyFdc0kmc6KsXPRfqHKy3URUZKlgkmnalqsefINWArLzApeTbCDjjaonlMoLrGa5XN2oM2cevw8Ft1FQ/Vq3fStsNV/hr0bDVqcej6/nI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789620035; c=relaxed/simple;
	bh=eRH47iy010Nvpq6cqnbtLP4JxZKVeUrfji7T5EsUPUU=;
	h=To:Subject:From:Message-Id:Date; b=Q7rIb3L41I03paWGZWMPMr3P3h9y6ftMCKX1pCtkTrJ6ILTsYEeaQ78PK8ZTX+mbqwVwbWNXdheX8yYnm+y7Ni5Gf07JRXlfXGMLmKwHHeAEBnSLE9vyvZduR6XuJJ6Ysk+w08FU+CFDPGwh3xNkgGVQ1813RpjyUL4rd2pWaxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kEPD3DO7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kEPD3DO7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ECBCDC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789620034;
	bh=eRH47iy010Nvpq6cqnbtLP4JxZKVeUrfji7T5EsUPUU=;
	h=To:Subject:From:Date:From;
	b=kEPD3DO7CKc8u9wteavqoZcyBDBj6cNAFdFKtyJikJbuO5+QD79Vw+mFObcZvfXj8
	 bgpIXD0CcTUh7p7qN5wUOdpmUSimlmxbYDioYJXDUAlxitdlDepQgnBYBSZhqgpCFe
	 ZgXFiSpukjTH11hMFv0p4M4ukujmpcDddve4+JTMyHS2LqB3rxHDooTmbswaUVlRgb
	 YG+TvQeiRC9QT2WOr2vxPBZ55GyuYySLR15dunn5hvXnGZbvaUH0hy0XfWYm74q6gs
	 1ml/N1LCjsAcKu3Ce3Thd/HcqxxKV5uhvbpjwnDIkG4O4UZJZ2CS7af2FXfQh8BTOL
	 ZRx9FldTpnf/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1D34C982C1
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178962003371.14734.2194514115640165454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72a0665ccede04092a351a14084fd45d0f0cd6dae5237fce64b9eb308638f86d
Date: Thu, 17 Sep 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789620033
