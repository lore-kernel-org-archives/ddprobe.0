Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 266C82E5B38
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753273794; cv=none; b=hmrWa5yk+FzjuYkgE72Q0LnlFrAdeq/t9oyReZE+glxGatQasF2ndP5QnFIHNvRxzOIUeQxddks8hv8aOASTE8fbH7WNkf9pMnFHDrdzfTGxNeSnzb7FqH04XglJGcU5v8lEqEg7XjInVCKlczBWP2rRGBIjgtxZL05pvSQ8Mf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753273794; c=relaxed/simple;
	bh=91zMtknSmyArLYRhdfLTtnd2BFWRWNWEGGUIDxNi11M=;
	h=To:Subject:From:Message-Id:Date; b=Sx77C9utHy84UhHs9PKTlVf1Ems6NsjJG6uZMtM1UcoYI/IqJpfC4/IBicsJZk8Zvjfbz12kF56JngyuFxYwxfeLB0UEI7Ay3A32bj6FMj+bw8DibjA9a/XP3jBHbGhdw5VUoLnQ4ZeKXvVxIxx3ShYFMy9nwdsfMD8v2Jg5xRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ht14uJ0G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ht14uJ0G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D35CC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753273793;
	bh=91zMtknSmyArLYRhdfLTtnd2BFWRWNWEGGUIDxNi11M=;
	h=To:Subject:From:Date:From;
	b=ht14uJ0GYa02zhJTgOt1vOU++9EcJjjC3hSWHZkfpc8v+Q5R5Cs7u9FDCjBJ9hAvj
	 0plQ86a2gpGf4s8Z95fTDKa3PLayFpwcYJ3uGoOjR/c8kDOuDTz08kReYHVKRRg1Re
	 QCXFdzktwVnAl28Cq9vX8Hb9jdQ6oBmnVVAMS6cpfjCTOT7uHaCs16MJ4ftLNJqcjX
	 9ksoaVNX3JvoakZSC4JCOap0WSk6/y0kEjl3H9UM1KfGyCFfxuyapZAn22xjq5yjWY
	 isNEqTPicMXMoK72Dq0ycCF62bUCpM1AhNq5CaxgpmV1up/5LL6NE3EuoZ4fWtQZny
	 +TULAhM2Sh34g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F648C83F17
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175327379358.13694.646103379625564847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a1984cec5ecc0014ef196b8135398f69d6adb64ba0f2c9ce3220de66328db3e
Date: Wed, 23 Jul 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753273793
