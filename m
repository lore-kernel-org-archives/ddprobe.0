Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DDFA3BED33
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 12:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777033054; cv=none; b=m84y0zXkxC/T6PADlyWo66i1CO7pP1EZeMClxW2908xCf61nAZ2Zgpd7GqNKuNHIPjEAjHYnXGcNMjkp5wInKqfXypnlIY7Ic0WimFSqVI+Jlxm1B2AEQjLb94Ji2PvaH2f0su3khkaIAla9eWJKj84pvFAqsj7zxwDst6hAhNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777033054; c=relaxed/simple;
	bh=dX++8dLnJUpnsxl7IcVJMz7Q8fxiYMGoqpRMeZyqFnI=;
	h=To:Subject:From:Message-Id:Date; b=rny1wd1CajQwzvjcXloEyn+E0DrjqMpMcuGXe2f/gqz7SqLjre+J2acgyTnDEWfuLnq27ItAfXQuwcucQCLIRd1XwK5W5eVOIKl5ZSS+FLtodjcXUs+4Ky54EkWyXVrvWwyY85/BjkfulcO9cUEWqbSAI5BfHwPaY+67+CUz3M8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S2/9O2bL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S2/9O2bL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC002C2BCB5
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 12:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777033053;
	bh=dX++8dLnJUpnsxl7IcVJMz7Q8fxiYMGoqpRMeZyqFnI=;
	h=To:Subject:From:Date:From;
	b=S2/9O2bL9byhNqCIRkHMYBWpyeP5fQOv9uRMiSNntXCTFvpyl0ZHtBd8o4jhI7NF8
	 JC+uKcGfhS+xl31XsxjdqvsZQKkGIub3RRtadkQzEXUQgleR+iGM5gdvtAJJFI67HM
	 uJVx1Vw4fey72hHvhSJgp2660gA8dTtJ1udpIxP5JtUu+h/A3eZL144wDjib6r/SNM
	 jvotP1EKVgtXVJdzR/y9T0PhwjN4ovcJ40YDebkFKEosxaH46CystwDGITMKLz1ueK
	 HZl58Fli1vFAR/ZAcwgVZ4HpmNApusynfNpALO5bkvUTbSTMA1GpwSGFtMbjY/USDH
	 iIc5hd0q7egtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB5ABFE5215
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 12:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177703305369.6321.8422522032698790565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cb7cc537237baeed8042312e42b11e1ec4d2b35365f68861b9528e86f71418d
Date: Fri, 24 Apr 2026 12:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777033053
