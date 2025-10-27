Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 365323054E1
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761582594; cv=none; b=ZbqneVC0YfmTafRhZD6VYDa/Xix2kCkuLEiAPLmirwb02tcSYWw4+QDKy63Br0cR3X4BCeYUw/I6ctlXCsTtyCwQciUs/0Zd/4NPMggCCGm7Ae7RaPpUJkTyVnYVO/pGvBsbhL7/an12ED4jRLMxdRQa9MWqk3/jn4ZQNpmj+9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761582594; c=relaxed/simple;
	bh=r8/DO4opx3gK6GRJJvYQyMfAy382nAciELVz+cfO+gM=;
	h=To:Subject:From:Message-Id:Date; b=lCHoNcnj+TRjlLLNC6fFaBXBnqUMSlpcrDet1uzcpgb0EZOriSeCzBO59ad1tnJIAH29E6xld32j8tjwzwg3h/r8nibcgILgQZJM7WraV/t4xRqa1AQRJKogC2EsRfLsG61fEofpSqBU+LpBPf3ONaAUIR7NGY8JNKOghtNeoag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oKqJEaOf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oKqJEaOf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3ED8C113D0
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761582593;
	bh=r8/DO4opx3gK6GRJJvYQyMfAy382nAciELVz+cfO+gM=;
	h=To:Subject:From:Date:From;
	b=oKqJEaOfdUFNTG+ki754eF259jnHvcwa5mSZPXJOPI568oCBDqEpUAwhpBnaBtQt0
	 SB9CQhW1r8eB8fOvVyEDvoM75NFRlScOeIM714xXpBn9ua3MPpAR1dUqjtPbBRLikW
	 wLeQiCZ3VbmIy/rVmQ+bKmPms16U7+Z07CgmhmGa6W1GPG6kRYILktF8YYK2KTofSt
	 fZnN7vx9H1U1FcMEng5niK5fO7XXg3dQqmj4Sygixsv6P4X7JglA0K4u0Tqbg7yFO3
	 6G7ZaElYd7r0+d2BLNy4BqF1mJvrDd94Vb3SoPPdONNvnZkmfU20wGeggHi3bXBtY6
	 o+fsGcvq4oSYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B08A1CCF9E0
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176158259370.12883.1831029538460876426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8deb37002708791841a30ae8f8f46564f018b143fe933a97fa61e75b0443246c
Date: Mon, 27 Oct 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761582593
