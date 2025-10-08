Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB2D129D29B
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759907393; cv=none; b=MUZDBuY3FfGRlLZBflOyRFEsDPr1XWA6UiT8oE0d9m0RyzQV/x4sN2oBhKzp8SDLEIICllURM6CZBcd7tgsBx2DwVX5AWrDNgNtaqmgr4MO1mXLgt1/RLfiJiLvZKhpr12PO8YxkxXxuRZByIYGUYsKMVO5fz2xQeCifs/GXnh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759907393; c=relaxed/simple;
	bh=sUbZCtdcLG/qoq2fitcDklF6rlpefMbqdvXUp2UdIPo=;
	h=To:Subject:From:Message-Id:Date; b=EwZDapO5Ibxs7i9TSfmkF7INqa9wRQ5g2M4GBm0vmnVSpgW6lyBskAlizatITfdO1LOAO71DxN8QNzCwrw20FQ4oQBtdfAgmoDPaex1oP5IccbjHBmANzCOIavmOKNCoxqM0mgSgEVUs+aRKzTTEi2Nx2pcjdzDlUTIidsqMIVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M6aNWg7B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M6aNWg7B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C5C5C4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759907393;
	bh=sUbZCtdcLG/qoq2fitcDklF6rlpefMbqdvXUp2UdIPo=;
	h=To:Subject:From:Date:From;
	b=M6aNWg7BLF5N4viBpM3UgFC2AOHGFdsqkoQoEp8pdUPzDcWqSlHquS08joiIHW0l+
	 HN3SobjBewi3gTzYSxqvVPLrFoH/SioncB9x0Aiu3/jMYRIclUcLwJZZbrEmw9zDh6
	 6vjB03C2+zf4avNhC3YBl/y611oSDVpWEHkHa0wwozVn2W2LQEhHurYbvzBXG3UTrs
	 N+O8E73CB3M9yf3pEd2uDmxlHuAcikjqHSHVO1YrFFO5U5O/tZr2FJRGor/CjLq9rb
	 UNQcE59H9eEy/Cv0iwBcyGiHQ1Cyfbe0TmokNlZUTQIHGmda5va+NrAQ7thKtSqzcX
	 oXTrRFplGS3Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFE1CCA470
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175990739358.2671.10862877443540890752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5eae458c4897e5dd35d18712c6aa78690186270c4e4848f52222e4f6f0dd74ec
Date: Wed, 08 Oct 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759907393
