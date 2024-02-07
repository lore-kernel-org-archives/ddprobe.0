Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05B8B1D552
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 07:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707290297; cv=none; b=ewjRsJDcqASOeE2M3rRAQUZ4f+D9aHb13Zs7E7kwN/THYCud1iwAp4kAwF1xchTR9oC4jA6tZWWzouuHY2LwV1R+G9nUjUxZS/uq1bKXXVruz6nNCSNMBGDbhWxUMTav7uiAm6da1cDU3w9IzDf3adTW0GIv44rcztAEXkdgAOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707290297; c=relaxed/simple;
	bh=MJDRHUTIjIYFwCrZBiqjjH65LD7Atrojn/kb+1JhkDg=;
	h=To:Subject:From:Message-Id:Date; b=CpAeOHqtIddS2GiO3R30mW0dih/BPSIXaSvM/UkTsz0uk/Ci4mS0tHskv+Xb57BTHhKM/EUleR8ywqhuGf8w+qJKUSuDUl4lbBkCn1CWaMWBjp85omqLNw/hyz14Skh4vj4FMhPxtqGQdkNSxNZbhIfETBVgFluni/vtjmUyyWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hGxemKro; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hGxemKro"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 858E4C433C7
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 07:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707290296;
	bh=MJDRHUTIjIYFwCrZBiqjjH65LD7Atrojn/kb+1JhkDg=;
	h=To:Subject:From:Date:From;
	b=hGxemKro13P3Ut9q8HPsItJ37h8CtcmAXHeM6V5vAucLQ0Vws5i7RwsVwFPRZ4sy/
	 /y8nOpMqtTWzNh7n6JdTH8dGZK2TWyfiLVI5SKCj1oHJZn05L4A9/6GET6czSWaSaf
	 aSznJRM1j6MmhB6/ZsVqWIOTaI5xbcWNpem6XUx/Ecfmu6gxd4HzYjQZjnniMPOFYR
	 q0YHuFlHlTEopNijUorb5jyxpxk+ZbbDxFf64kuu58xGL2785PoZhcGlA0bv6GdRF8
	 Nl4XtEzYD425LZTqdMBZY93MHsJo7MeLloCt4J9KA5eKkb1zgYdAsnh0NgRsjFEktd
	 3tsD2Gn1ghOyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CB3FC4828D
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 07:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170729029640.8966.8106551853423386491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 183efd96027233039c4630eac101950cd1996ea7ec921ed3a1d17ea434ba907a
Date: Wed, 07 Feb 2024 07:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707290296
