Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1F52184540
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 00:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773362094; cv=none; b=ANqFVBLIskGRulWBD9bho2QCb7XSotO/i4d6hH/nY4h3/nycoV7MpdGHebzu1L3aW11f6AJ8ByOt89y7jSnUSequm2+VcKmgaCEtfKIH9MV5kO0fQpQnaofQKFDhqIye6LQXtt9pGUjcjfASQLy/8T4cMDVu8u+NqaJajINq9Ck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773362094; c=relaxed/simple;
	bh=dNg9xdPBM6N6fzLw+O+hoFAZnClrBLptWTuKyCftB30=;
	h=To:Subject:From:Message-Id:Date; b=tkiU+yqb1JMQUUlygejnBIMlCrcKaHVenO+8fHbnGiCXsBGP2yIqCGK+3tH4pUWBuXvjJnv6kUIfEub5M/GDQqp7s7vZrbnxTdh6jHTroCpanSpkTIplWvthcVJxEh2GQd/cqJzDwvKisldbEY5oGvstlk+jNnohbxG8EF5rilE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=de5P9+iB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="de5P9+iB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A260DC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 00:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773362093;
	bh=dNg9xdPBM6N6fzLw+O+hoFAZnClrBLptWTuKyCftB30=;
	h=To:Subject:From:Date:From;
	b=de5P9+iBWXxFjm87PoM9P7YPDmzRZCqoK2fcXH7MD2cCx5USTFxQqFrGHTXHV0gHs
	 71ZuCva1/cu9UrTaYxO4w/HV122oxWBmxw3zTgOycvIaTmN/MvlR0mrx6Qxbvz51d2
	 ZGrLzjsZrmOMg3LcdW5cdcS8NWsj9N7q+nR6kbVWu2wIdng+B4pbUMTNBE/eVV6DoK
	 hOhHsamfIxW/nix+UZFuYou0uConiGK0h6tAr+CX6JXTQOR8yvARivL5l+IkhQ0QlC
	 UqEAM7rrvGA0XYLJ1kA7xoSSxadlyk3QpbffHF7P55agvihfl+z3L6JNSoGxI3smO9
	 rFQOopaiZekuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96168106FD61
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 00:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177336209358.27260.9758081689243439077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 043e391ac18c484822a055616a660a6f2bedfdcd00d395e5077d0d2d948abbc3
Date: Fri, 13 Mar 2026 00:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773362093
