Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C84611FDD
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754503193; cv=none; b=qyS7V7HeNDrBLjl/Ql3OQFp5GiabMvQqAWt8k6wZn7B0DyTBvoGyfLjRYKd2XempBB09699CtmpKiWVCzPzKb2pmzNhlTS2jb1eVO4Ds9N7DojDCxR3VYaAf/FfTBNqI4pPj+B+toKKujtOsNiXtfu44gMzVlGrAaopFbpqbN6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754503193; c=relaxed/simple;
	bh=nz1UdZO5QlbJP7rIHQIYGOCECAhnhRINmRUsOzscW/E=;
	h=To:Subject:From:Message-Id:Date; b=CcE+L9OKQN95QqXovpGFrHdsSNgnXuhDXOoAMgDAf6z4B+IePwmkRUgXNmTuICzefVFYMz2vxFSxK1JHChtt/tx4nuPZ4W0Q0LJDB/stZxIk4ijRW3AumQgPBKI/z59HQqXDveiym1cAMx0OwXH5X7GoeJ3Gp0zC4d0/k4xL5Xc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T2XmKX/J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T2XmKX/J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF62C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754503193;
	bh=nz1UdZO5QlbJP7rIHQIYGOCECAhnhRINmRUsOzscW/E=;
	h=To:Subject:From:Date:From;
	b=T2XmKX/J1YPYeFMBC3oH4FSVdgM1iTUr/Lu6fEeJoZQbcESPhPySjObb19W0tvTNL
	 CDGJ6D0v5oDG0xK6jogW3eKSIj67uiw4UzNCHTw7KOBnd9qI3TOVfaJlttgAi8rWZE
	 RH4UvvbCX2S+J8cGUFZUJGoTdNjHxiG/aAQvea3Auc2tc/E1r/gD6gFzXQ3IzERhDp
	 GfsZRyxMjruRgRn3foFcloO7Np71fpqBs8dpQPqkuefHj+KKjc7yP97L2UfSiR+3yB
	 elTBAgQ4dW6GTJ50WHD25hciSZlPaIgS6fUiNVgGVsJTCrrRA8xR661Sm2cTCVMmXO
	 Upt2rAj5Tv3Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED8BC87FD3
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175450319357.6840.16335936491405364013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d4a9cf8b931d730df85913b267140ecff6fe33c41e7ca49f901285a1d6ca058
Date: Wed, 06 Aug 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754503193
