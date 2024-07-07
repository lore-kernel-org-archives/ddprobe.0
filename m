Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 803DE1D52B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 21:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720386983; cv=none; b=P+RYAN5Lu3SI+5M1uJPK1al6Y1usPTXJYbyLZqO9WLYkokXAEMFGQp730Q1DPAXN3PY6LOLDDoG7mbvRSX7ZADeh7RkQnb+E/S0e39XQijf5KoVzHiVlXtpPp1UzR3hwAZJBGTB5e4GvKY75K8OD67CD3Cx0eAGRi+5QmWdr4B4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720386983; c=relaxed/simple;
	bh=rwoRZhiLjpU7NQNjl6pru2hpm6bghGZjQ6UG0sAjQjI=;
	h=To:Subject:From:Message-Id:Date; b=NZDKI4cHtJHHXPOcmtJAZ09WqriC10qZueGp1BirmcbExV6yZcMPypc/1QpMz6jLRGdb+tYbAjk2ewNjq0n8kkFlioSCjtRdxPtzn4vhdihE/AD2rqGqsChO9YhgTMkrkDvoC5yxsRiAZ6ePPK+hNcDqoAku7gFnrWnRSRW2gHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ibkREDqR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ibkREDqR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1BA9C3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 21:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720386982;
	bh=rwoRZhiLjpU7NQNjl6pru2hpm6bghGZjQ6UG0sAjQjI=;
	h=To:Subject:From:Date:From;
	b=ibkREDqRaXC3EyWtv601l7i9zBJx9kKVTKKGmQbCdSejaWYUfYn0+KkRz+sNBIA/k
	 sqhz357p79bwDvIXjw5ZjpbGQ9bInb26ha2idGH23s1+P145EKXVBlpVbYxQu7TeqU
	 fXUlxhqxNrWrG8Lw7gk2K4JqvdNwzSjFBQnmHhSXo5jIlblYv2lvW77IbQJkFWMwmi
	 q3Zn6ZC5Ql+uJNoN2ndlTdBrzhYl4t2foMrT6nCL9dHPBGo9xUzo+8FSz83TSdBCUy
	 ht5cey/sujmG6tdYel1oL1kRfLBxW3wMccNaefQALMiEL6EaplktrcHIzT/z5xdx3B
	 ab2V/ON+nE+hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9F7EC3DA44
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 21:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172038698280.17186.7758598959435514834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1de34319af16e9ac68e9420e2be8c4c3290fd8486d0fabe58b1cc02205fd8ed5
Date: Sun, 07 Jul 2024 21:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720386982
