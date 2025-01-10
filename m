Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2635A213E66
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736529954; cv=none; b=HoAyfp9ZCz+Z+Zb2ULOF+4gwOMsNptf/5HoMAx9w58+MRBfdMT6noCb8ghJqjHbn1lZyKVe1kRIf6JB8nILLUx2oX6g+MPynrWBA/Lf93rL0BSP0Cot2arCnmHu19IW5vg3PQNeAUXac8/ywKb7H3UdXaPVo5fS04TVH9FB7tX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736529954; c=relaxed/simple;
	bh=P2iJCgLPeycL+32djyxAmtTCWO6VhgmvCkHGP/Chs7k=;
	h=To:Subject:From:Message-Id:Date; b=NLgWKg2Eoxi9GzJou78YMky3OJPAxYQLoAaKuFxQrkNvwOz6GJeZva2O0ldtDpg2FKXvd0VCtFimHABcNMUC7XUQxdGf1IA1Lr2D1VCf1dNMsJ49iO64InINTpqPuJC+xHJNKLDxhbyN8D1jkVqrz+jvTvTDZN7L0agoA1FS1x4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j5AftpKm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j5AftpKm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACB7FC4CED6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736529953;
	bh=P2iJCgLPeycL+32djyxAmtTCWO6VhgmvCkHGP/Chs7k=;
	h=To:Subject:From:Date:From;
	b=j5AftpKmTCcVlGwrJuMpl1vKkFjJ7o5Czfiz2uyp9JJ7V/jcb+ox1Fx+1y8MEsu2p
	 LjoYUm974bfyxyYdr6e/hF/7RXNjZheqoDrx/152JTbdLcH8L0IEZTEcKJZQ7v8Ccj
	 9GaxvG3l5DDg3oQqQ2QhWL9JX/d07fLLtXVV26cL8gpZppVCqjtItthgxSHucxVMBa
	 04Jhjs6b7PNkKBgCmb/6OSpXYSNxazpvK5JbE2d5mLB8h/rhPflIz07mFFMVkTUIpg
	 Qt6aNIMjVN+jX1hxn1yz89pxGB9m72zPOV9kc+tCKXiWTfnJI8lRWXT0/Dr3qk/O8C
	 ftR9J4hRAb4Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F71EE7719C
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173652995364.24724.3267700753968525136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae7fa89f71c5b47adee2a3ecb3cf41336c0f9a2e3b598f53e52eb563c3987e53
Date: Fri, 10 Jan 2025 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736529953
