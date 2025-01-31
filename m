Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EA801547E4
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738351554; cv=none; b=EqBKpl3dsX0sJIgQGt0H3jym90y1UZeDaIlMrJqCT4PmvkIIDhdInMgKK42ahtLD9vF8cB+uMWOf+aD03K4+Ebf2OzeWuLs1tRUHEla5bL14oeCL+TxG7ovbzsFc4gUM57SUrhkeCxcGBGgjUs+UCztA5hlSV0yd6PIMZXiII8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738351554; c=relaxed/simple;
	bh=kgkJUTaLDfguwDSoQYOUFu948+QOQqpyZbw0PbOINDs=;
	h=To:Subject:From:Message-Id:Date; b=oOLUr3Rzp+g80szrbhLtxvb1IALsblS7NRiENR/Pyc4g9WL2GURbfWT1BmKXTDnk/96Td5xijVdU+h9RhaNtCO6aTKzJ5NnxuObCQ0L+HH2wcT58ZWMsE7vVQ39OeCWiayXl+VxkJ21Ro7FnFTiH528flOOnb7glF1WkYk8W9dM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ascixKBi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ascixKBi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCDB2C4CED1
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738351553;
	bh=kgkJUTaLDfguwDSoQYOUFu948+QOQqpyZbw0PbOINDs=;
	h=To:Subject:From:Date:From;
	b=ascixKBiPSKmN5IkiweP5MXc4nfxiZdStpbMv1kS8+BSEeu66g2dFadFnXbra2g41
	 xmxIUkW1GU4nC2hMyfG1m5CEzs13cXLRXfcLwbmjkSUZGkQ1zpYKZdojXgBr92fAOl
	 65UBKLE7e4SjjzKXYR+F6o1DjNV88JlAKLy8WZ5HROJWyNDpQ3FVHzRuKNPyj8HW7V
	 5X2Zmv+ohe0q90C5V1vr+nVPoOflV/m9gc907tJFbSpnjg5l0M94A1p2dajxt4alO/
	 ZWpGZ0aTx23jbJOZQQ/AD+pXnSyi3O/gS7PZTZ9IJ+VcxVoP96cVyAE5u2n3DqY6FF
	 AmzQD8K0I0QEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1183C0218F
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173835155360.11005.12377337489894066954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8404ad512a20515f75e54cea2881c05af91755538e7d1bac44a1a6851411366f
Date: Fri, 31 Jan 2025 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738351553
