Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77EFC16F0E1
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 23:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719011543; cv=none; b=dP4Em2akh9IErol7eUN4xpQPv4RK6z/wR8MT2D18M+7PcCYuASrunGs6SIZOPGJ8K4DtrGrVKivZOnvmI2mhqf0aKRqMFTf/hCkv34TaV3w7x1sJGBBFtnlOuS2KO9HgKtOKgycYv4/6VRaTfggy57R9GYKQTRkbfRKfC0Nm/SY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719011543; c=relaxed/simple;
	bh=G47fOd8Nzim+tVxaKm79xBFTmJSWO9Vm/r3zB9CMn4I=;
	h=To:Subject:From:Message-Id:Date; b=O/WcHpf9JhCARJw9B8pbGuAwb/YKA8sLY/ywTKUsm19Xwp4JNuTSqL0/G+5/vZSFjAFdtSYLieeOqh1tJlxSXvNEKt/dlG4+ajdfNrVPrQkkjAHl7+/zrPEjQtAfzMi+ELZdU6OZuxDiV/1p9qiq9acYjr/9h/1XuyolfmEnJ2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mYv6hGhV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mYv6hGhV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA26DC2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 23:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719011542;
	bh=G47fOd8Nzim+tVxaKm79xBFTmJSWO9Vm/r3zB9CMn4I=;
	h=To:Subject:From:Date:From;
	b=mYv6hGhVrvhVJnE82ZfLxtzDGctf/r+e8vhsbaF72rCTjtGtFf4RvJ+gtaFtPRC/G
	 pHBSWBc8pTPpjqBvJwPPhjXb2AsNceQciMwIkuo/YWPQs7VhAe7nJ/TAIvDOJ/SGAz
	 C9wrwiTS870vDVFof5UNbUwytl0i1tJFoPGcxaPkgnXdizA/wTqzpGvC50u8cRwNs3
	 BCS2S1WV8EyGzUjqkXTcJKooo7Q8rf3B3ZN/Pdlf3cvjhY1XGCZ0CrtUiRNmHdHGpa
	 zAiRw9n9DQhMh6zLDJ9IToKCMpQIN7aamfM94vKkATCFpDqg3XSj1XgzvlvGLU8qio
	 E9rLL3vc+6S0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C50F0C27C4F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 23:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171901154276.19241.16745246500542557056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab8e875c47c90fe8c63ecbec0f6ba469843551ea83a17d3e60e64343accd5c7a
Date: Fri, 21 Jun 2024 23:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719011542
