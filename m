Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3379A34107F
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 23:13:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780096414; cv=none; b=SVcIvuTgxD11v1uWWOUaSrHCRIcrFikCKr5pjEbSuKR5Po6bEWfOM5tO3RJ2D8K9BUGfQQ/5A8FH0Thw/YHuucXFrvhkTP9zQwozxiDcz2xF5/+ELRFjSr/WbsB0ic/7AIirrp4dYX9WFOjj08ugjZacaI3tIurTpc3gp+E7cEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780096414; c=relaxed/simple;
	bh=oSWSCimvy42ki5mlDPKQcmj2iozyUurd5fM41327cbk=;
	h=To:Subject:From:Message-Id:Date; b=aJSPedS3AiJezUGd0QgTwBXhqCRsI538YeejBu15rTizhTByhOtLnvZVI+kEFez4yo0Kk8OUJxy2Nw/RpEr90P46iuoupPrB4Q7WKBysL8mFRnRLJpWeP/9fBu2N+UbYvBlAhgC6ilMXXni+kPwbOR6E8G1B5d0Sv/dIOlbWNfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dysGCXqZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dysGCXqZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5F3CC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 23:13:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780096413;
	bh=oSWSCimvy42ki5mlDPKQcmj2iozyUurd5fM41327cbk=;
	h=To:Subject:From:Date:From;
	b=dysGCXqZvHR8YPde/LmY0Vw5fdhVelfDebVewRI0H5BnlI1DhinfxKi+Dsvh9aM13
	 KY7sb/stBLNe+pp4+DkaU1aFxGeq3qogxv92fp2HvC48qly1MJlkFbvRSMaHjbLEpy
	 jluG0R1MAWKAXngOrGs5+fVT5HBEHo5T+GSxvofadqLt/JQ5146NHCqBlCqi5UsgFe
	 grcI64WjjPPU49PktngPJYdqs1awgSOBJ1SQ9KCi6pF0k8tSTMa0x0cDjfDt6YVLmZ
	 gsYKN44pcGCSxyS41fo7//q+y+XOB6KoH6geS2J+mNgrp61LDjglbapx8eiB40KRxu
	 8NoEI0buOxj1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEC3DCD6E49
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 23:13:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178009641368.3239.7865775788795430750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4ba9c3eb1ead665f66f929a0fd7ad049b1ce752be7b5cab93ea3b4aed0dd346
Date: Fri, 29 May 2026 23:13:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780096413
