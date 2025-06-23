Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27F3A134CB
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750646994; cv=none; b=kqi700rjTfuS/5PLp1dRu1KRwY6Ct4mFRRC2CHpPDwAQ6gt5VKSzalLChDY+Yslt6d0ZGlD5JMmFyQFgyzUOizoRi4mRdRKs2t38TFUP1Phig9yD7sINWIJlIVAqaMoXe7siSxSTSW3z4WWZ7QuwKFbx8gCTDkHsdB7osz88Sds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750646994; c=relaxed/simple;
	bh=HaKE+ylttYw+x/1TImqvjW1BqcVqc1aOrkzM0fqEOt0=;
	h=To:Subject:From:Message-Id:Date; b=Nd/u/5+hyp8wV0bouV/s153rcIGjfAM2wCHom/1zhTVn7vknrgnKuuZWBToLP28S2Woalf7nHZuFk7K+mWDK9HSrjqnoXktPjGFBD2oifZMyElPQdP8fmmhWXnBWZRNvBAUc1J6ptCb6LMCoEj3Q4nvWufzghLnEBByyMTOnl8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KMxkcwCR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KMxkcwCR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E35DC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750646993;
	bh=HaKE+ylttYw+x/1TImqvjW1BqcVqc1aOrkzM0fqEOt0=;
	h=To:Subject:From:Date:From;
	b=KMxkcwCRrYhnyFMHRs15QmojWdtc+D1haAKADv6MzgrUvk5ObMSFWg751IvnjTzqa
	 92IUIcmREInOzENZud+EhY7DBw+kM+ON0oqoREdK6vvz52+zf8MjBnDDS3p9N9n+zE
	 MczLULiwKMvgghbGuBC7lajfbJSxRifErNSkrI5il63uIiLPPHt8IFCvc8SRSyn5qq
	 Zbg+qznysSn+T22C3NdCQBjTU7EMjcO8eJ0Uwd+X1VwwpOkwK9qR33YFMqcM+3g8Ll
	 6pUOApQQzcGyVaQFgF3t4zhLHp3UHDGA4D9x1xnNEQEVGo5GDpjpEUPnyntA32C3p2
	 ZC6z9UW9ieZkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8A5C7115C
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175064699357.27692.15401176104045894719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b27c39982f7df68bcf3094de193c1a981272caf17d5731643c9ac1edd5228782
Date: Mon, 23 Jun 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750646993
