Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D61493C455C
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 09:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778146053; cv=none; b=BE6xqDeFYU8yOjL8H21ichtd2Iwk4T0UsyUtwLoHOO+gHU0wEAuvIwlHQsflFAVNpykMPnKqcHgDadcEsxFsaNe3BcieP0jSJQk/4GpD0dCbZQVs603BxO3U9WF4x6maiOCKW6kHNQONUB93k6Q+olDUE+Zc47gswrXcSmPUQdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778146053; c=relaxed/simple;
	bh=E1nwAv00gNxhOiupH/v9rB8nUSyT1DMU93u2HsSEmMQ=;
	h=To:Subject:From:Message-Id:Date; b=DDz+SAuBt+zkc1+LuEIDPLzfV5sCZCXrKf0RwznPEL+waZsmHrbRCgKYtymeqNgZUNx/9tZniHQ6dsl3LRggm9r7k5gD7lK6uOKUyBa18TQ9x88ykK8ELnhYN584sOtKPJsNeBCrXMrwkUW7/czF0YtCeoQUB094ZilOCmlBIsc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eNKKbfcn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eNKKbfcn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B941FC2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 09:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778146053;
	bh=E1nwAv00gNxhOiupH/v9rB8nUSyT1DMU93u2HsSEmMQ=;
	h=To:Subject:From:Date:From;
	b=eNKKbfcnckJmnFRQ9lfIbbRxI7MfHVp+GKXSS2nRCEopoTuSjuo+XoluU9SesAFBG
	 kIJBnLYNxv3+qtA2TOTFg4oIfWOwWdcAFeCjTy9j0I+tkLHo9vWJ5L5TSy+7DKINgi
	 hnIdks6ZS0tAVwHpSe9Wjq/o2wGtQyjKB12njD5Wh4GC8F+nj/8nBrYsDxVvdrj+Fd
	 fnWeQTRG+s2/9KIfO0j/cii9MLznsMRDgfY1jfofbG1Iqm1bhXu/mW50VHAuVKOMfc
	 sOjSSRSz660J5zoiv4T4ii43+2X4XMvgJ01lb/gVHiSlXGyuLgidyilwbLo7UHptvF
	 ff5RGP3rrbK0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB44FCD3427
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 09:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177814605369.7509.1855284588835958135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce6ffb60cc13a133a0dc1e9da4070f1042ec28b21601d741a4b3eabaf65dba4c
Date: Thu, 07 May 2026 09:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778146053
