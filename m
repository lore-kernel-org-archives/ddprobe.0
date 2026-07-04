Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B8DE1D5174
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 12:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783169914; cv=none; b=bU/kg58E2MseQDrAkXRl2p6MypWaoaUggERVHrIaGhBqaCr8L0G7eR7vPHkhG1Y8PTQCvqK0Sq9jflQsUo4tKuhLAOYy4MpDs2K/jHCW/saXn1fTMqQh0SUS9EuQm+ytDPUg7ZQR3TbueS128/rtjQlsUgB4ynOkQJWKh/mN1kY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783169914; c=relaxed/simple;
	bh=B0kAkd5ADAfPRiRhpXjGhfyUjjCaQy1mkHeyWEHJnQM=;
	h=To:Subject:From:Message-Id:Date; b=Gu/fUEKL/Wo6Z5XdJ6cLj1K+6J2tPr/of6psB9YX+kuoyqxpy+MMXMoOCRrTwJH6Mx31tffYS9nL5gljZbemAa4e2FCh7xWI/7ri/tzsEF5bbxkeytRQbuYohYyKOEyPJ5z5hCQ094QuVU92Kw05tzL7q+/ipGCjxzBVbFAntEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s+WlYLzt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s+WlYLzt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE7FBC19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 12:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783169913;
	bh=B0kAkd5ADAfPRiRhpXjGhfyUjjCaQy1mkHeyWEHJnQM=;
	h=To:Subject:From:Date:From;
	b=s+WlYLzt84hFuVKw1W+hq43f25q/XsnC8BvwI15rmDmS3Qv/vVfRvI5NOKUnJea/q
	 UPhqRf2MRPM9LilbjMNTzyIiTbLqkxImMIr2MTNBIORpyBhzG4zQkBMTnLE4iMhIHM
	 +Mmd2Pn4qMr3ZznSTJxOTgRKTQO8Mr9sInIJZ1bJE/eCN+K1xqgjobM0EWVrbToGoq
	 mKpywYyOc4ZdpKS0taWN5ixJZ8sszZGiZX9RvQ6aAbLlzqXURvuRTU4CO8oOgGwUc7
	 HHQ+cZ4ag+oLwZeiMk0O5zYznJEC+3kE/T78gePV/mJjQRl66USc5SGaytPc/b0Wd9
	 EL4Cu7351KaqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD95CC43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 12:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178316991368.15635.13916963882472649083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 789bbb84b84d7db8c5765c633bd6788d073838a511bda816c019aff8ef5717d1
Date: Sat, 04 Jul 2026 12:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783169913
