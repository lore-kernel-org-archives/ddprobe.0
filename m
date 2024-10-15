Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17C564120B
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728954954; cv=none; b=dmZ4XqXCNa/Z+NpJau1NZcAFmaQP/rg2ojMk/UmoGtTK/egjssOItxbBkd4b+PfzMqFKtBgY+5/Aa6z7X7BcKcG9nhu/2z1ebnIrP2mmqgUbQ/r7JVhrS08ni6zR2v3GQmz2jty6eS5+wkkW71LopECOJcmkZNfQCC8loX7CKC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728954954; c=relaxed/simple;
	bh=Wm+TYm7FpseRqQa1p69Y/0oT63U2gIIVEGute1tgCSQ=;
	h=To:Subject:From:Message-Id:Date; b=ocOLqrfWvcrHix4JeEuVvh1ze3OSzdpmCK+jAyFgBxB40p/+sVIVKpp64OGr8s4onLUUf3v2Zfq2THsF5Nu54qwij8gp+KmTnUcS883V9gc9AUgsTlPVTpZ8gWjAV9zDSBliT/P/xej7eKaE13l9dH3srwIdsrvJwlQnBbbDc6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uOZeelG9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uOZeelG9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CE7C4CEC3
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728954953;
	bh=Wm+TYm7FpseRqQa1p69Y/0oT63U2gIIVEGute1tgCSQ=;
	h=To:Subject:From:Date:From;
	b=uOZeelG9HOo4CBUCrWGZWQN5iqhq/BIsSsStQZKMtkhMmgC4mkf4++BJKpi7ia1Vi
	 jg61+iYOMGPGREhu/G3ufORtQiy0Btup3GdOtnwP+ec7yVYPZZU6dvm7JW3Uhs1vsJ
	 k3XAIYMB0GIBRjgIzpUjdtd8WBLQx4McVkcJxKEzO4+jys7LnsfUbWZpl2V6ZiiHAa
	 fMMOHVz0NVYHgkV5DBwBfPwUmQEMgyx6Y6ANoJxi7GHDSvw3npYZrc7D2F/0Lt/Tp+
	 PyZ5OJfl2FyQ4p4MJ/Mtm7Pe7WkAuj9LIbwXalzN01tAVXvy+KVXiHqowPdIIbo+EI
	 iwQupM+p9uogw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917ABCFC501
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172895495358.22457.6587652457269101273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 283de4bedda1d57b63b23654f24acaa4acf0a4a34fe014ddd2e3066dfc7f0de0
Date: Tue, 15 Oct 2024 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728954953
