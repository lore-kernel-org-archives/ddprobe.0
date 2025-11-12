Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EEE62D6E42
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762935594; cv=none; b=KbA2Zds9yM/PECx8FWU9ZTdXtCT/pRf39wTX+DIQip/6lqb1osAF9+dUcJpu+JtRlXY5ewxvUH+JK8UEvCEsZelpyCSM3AsOsi7xx8Kuxtox7rM2MUnvhMEjlM2kxbjM2mem3A6jCXYWsXR+/79pXs8gPzympEIrLsUF/LnAfhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762935594; c=relaxed/simple;
	bh=n3dXJzdEOJryj35wv/Hs8+umJ8v1v9aqdX4w3ovVpHM=;
	h=To:Subject:From:Message-Id:Date; b=aZ2mBJu53C+zC9reKygsgMg1vONiFMxUr5t/pCt2jLRQbGydgxpqd7LZEYHcH4bwPuIygIREW/0N9tUbTT6dUQNzIona3Vw9q4Dusq/PcQxhKWuhMALIhU9Whog+OntkIlJwScwOPsxiWxZO7KvWKxfRk/sD1V56i5XBQZNMDW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pu7scYSf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pu7scYSf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E396C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762935593;
	bh=n3dXJzdEOJryj35wv/Hs8+umJ8v1v9aqdX4w3ovVpHM=;
	h=To:Subject:From:Date:From;
	b=Pu7scYSfAvk/0reFXlsnQOEUd9wLolE4FFEKgdtD/FA5eDvnsANKhhptrW1rSHtK2
	 81PhDZyVX8BPrQu+uy3VdJh9AiwhqO03lZ/prBn8182LNVjoi8QQ7hu4ujoOm0jhxm
	 aVdMmj7MP30XtzXVdxgpThbDgoBTXhJcueFjhRuxjbq4aZENV1+DGbqnvSPS9JXuvu
	 oCWgRhUA9gNVLMVfYJPdlM+vdEA1HDxCON0GNcXNlp9RLmK4yckX5oJGAFBZK3emCz
	 JXtwMVe+/LyWiHTl4mXDhC8sCu64v0ypUANIZYdcZgplwR+tiCGeHlCeCUpM3pV2Ul
	 L6aw7QaIwpUXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DFBCCF9F8
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176293559358.1834.6448190005219858009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e7252d4c4784b47c76ef1069a8d04cb2a20cafe0948cc25bba718cdc71893c9
Date: Wed, 12 Nov 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762935593
