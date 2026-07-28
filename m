Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82BB947987C
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 14:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785250234; cv=none; b=LG0X3vhrVwjbhf3mnzUrv5670cezD6El2594bcaIDXAqmoWknDqRpFH5bYKOTVJ1lv0Lj+7Uicn18/zg2q7hgdLcXpAvvwtu0oyCM89QKg4Iq/Z4b579L1f7G/bVFQnS9ZDgejEKCcfjlQe6AhYilBemUypLvQB4XKD/HaA5K9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785250234; c=relaxed/simple;
	bh=n5wrfW9d0l6liKeBlvfr8eCeloCM8PWcubj/rxnlhEw=;
	h=To:Subject:From:Message-Id:Date; b=B1OOrgl2vBIOsGNvcPmDK7w5Fz2jmfsT/lC/Z670Z34pS2rSowMxQ0gxpfIRsNjQ1ut2E9Es30O2U+KtPBHMdcno+9O3YcQ31plVz4ld4XTU1XgNiUSnbrx03tT5smj8lNKrcZZiYe6VDswtDO+1sGZZyaQoASqj9lZhsHg8pFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=COB1ZzeO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="COB1ZzeO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 08A4EC2BCFA
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 14:50:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785250234;
	bh=n5wrfW9d0l6liKeBlvfr8eCeloCM8PWcubj/rxnlhEw=;
	h=To:Subject:From:Date:From;
	b=COB1ZzeO12RHFLkbOrqJSn4RlOIy0kvVgZwHP5eMjiMOKAaKAhshfQ0q931ipTHkZ
	 pqX7HYjRi3otxJQsHLnBHVaVaRM0jz/aEjSdBO9qGowycOtWpHSprj0LI6I+5rFM1t
	 ivekut4CwIkiezhqpFpeZALUZ0ERli21DJ/adY5QYtND6n5wvxseLoq2jEkcSsw+iG
	 3Wl85avJCIKewjnf2fc+e0EPomsjjVXrmZBG/9Gl1ijchXbcF4W0+Lw6D2vNbCmDT+
	 qsAyjavD2zvmvcIUMROLTjkVhnWW99VJf7GKyTctAYgSbXuj9XKvriUG23om7FyQby
	 XlhcfkNtCNlfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D63F6C54F5F
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178525023381.3444.84292456784369631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04068014754e871cf734cfd252b60fe63482c6e2f28f8586fb647d1cc93e1504
Date: Tue, 28 Jul 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785250233
