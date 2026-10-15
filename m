Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 444AE48A8A3
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 20:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792095034; cv=none; b=eJFL/g/5r80Myq9pNZNwAv01KOXXx0UP3h+MiXJVaWDSD5+9WSbVl8tYab/3Bru3dgFciC5/vrAr9UdXVzsF53WhB38hh1VWRHN1aB8B4MyPstvNPAG91YS0FXhrcW72EB/eeUUnuF3rvhyZoAO4Rrr55kZ5HtNAgzdGC0IofWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792095034; c=relaxed/simple;
	bh=gyI10ek+H0xbCmdXnvJln8iPLrn+0cl9Lui/d8QK0vs=;
	h=To:Subject:From:Message-Id:Date; b=uOLCYtlVU/oWtl9wB8VCweuDevmepSMH7aEcjuHAe2TAl6P1CVP82iRMBiqMC9sugBjAhbX7mNqhfCwwsJbSuOQHqvAZYQ1ZfoIxbjtCbZLL6iGmQ4ZRN2aQ14eFhfVlUgtLDvGi3Y4JtHcmQgOa8flKhUfutrUo8SgjM8wcM5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iFbd7RI3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iFbd7RI3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC35FC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792095033;
	bh=gyI10ek+H0xbCmdXnvJln8iPLrn+0cl9Lui/d8QK0vs=;
	h=To:Subject:From:Date:From;
	b=iFbd7RI35/YwfV6GQ0Xd/XN2nS135X3jFH6fxatNfn8GBzaQwkgIYc4lHP61TO+ZJ
	 aSsnZ87WG4wnJQx9pyBwsQYsmY+Sjhj180+O53VXe9VBww7B1wsvk+ulq2tuaghcIP
	 t0YvqtXX+YGa2N+CqS6H4L5fXj3t9VKiN5nC1i4qQ7zCMHYkynaxUBflIXyODEgfEU
	 ZUkJ5geocRMVpazfeOpLyA2UC+810ptgdDixkiUiatKi7B3qjsUHwTaAi/He5ACD2N
	 DTOYOXYLY63Jdl3Pdm0Ii/iu+85/EhbZJmDjbkKng18KNsnQZhBvVXHUCl0z321ftF
	 fpdIe5e/iZMgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9660CCA464
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179209503368.4265.18406059321664575398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 709d3553b9936af2b66f012e76c0c8acb366872537557f756641a7c6ef8c5604
Date: Thu, 15 Oct 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792095033
