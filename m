Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E27B377AAF
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 14:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785163834; cv=none; b=Y14aiWwnxrP2MScKCT4aT05O4c51aKEwar9h9/nTX8sh9eSEuAJH5WZYeTOE7imi7xUZslzqvETfQ4JNq9N0rPDCsfHdOGpr3fi7w/h0/k9wARB8k50AumrhOOKfCS/2UZmlwZWXLYOUfQLmNMwvSFgWopGmokDraKOnBAX82wY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785163834; c=relaxed/simple;
	bh=eWGyRH0ub4Zx6iDqBcefnoVbmqW461hzNrERKKi1BL4=;
	h=To:Subject:From:Message-Id:Date; b=n2F3HNuz7l2PylRtb8pTdDCc/CfAEL96+oSP+wn/RHvgiWfX08Iw/6mojQxV0IFRqjCHLZsd1HtZQ9RsDJ0l+GFim+/RQ2n/Jxwq7g/xEOfsX0uopv+f9bLM0mVBHUwtU8S6drStWkjanlX/iNtMmezsaXhdq5Wbf1Xem73qBHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QuH0UN/d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QuH0UN/d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFAB4C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785163833;
	bh=eWGyRH0ub4Zx6iDqBcefnoVbmqW461hzNrERKKi1BL4=;
	h=To:Subject:From:Date:From;
	b=QuH0UN/dBxiqsgHw7omy7euFrweqzf/d9QVc4M1mwWqFrRWXh0ejd4gA3R+a5XkCF
	 +21vh2npEqqKtMYDY+0No0zI1DENUii705k8VZE44f+Ot6H4ofa+fV8zR2rUvl52AU
	 NBJD/ivZx9YI9TDZY2uFLUEv6DbToCdJHuoLnGxLx5ZOCvklomQ5uJT/25Yst1Ep8u
	 eV6beO5EPvv/2wUXxh/2wsvfLXa+XJwiDbhfqMIOF3A2sg6xriZ15QDbExKVqpaAn3
	 4Tf4dSLrgBT2arP0dT63WYveVas4719L5QgnwtqPPTJlX9d3IXMatZZoaxYVgRI5j4
	 zjId07YLw6LPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD8A4C531FC
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178516383370.29570.13654626949954550336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd29e1275632dec147a74e3d4816a75243221eeb4bb575a925b2307b0dfd1f85
Date: Mon, 27 Jul 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785163833
