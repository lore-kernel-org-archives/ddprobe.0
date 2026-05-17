Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 394CE3B52E2
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779043234; cv=none; b=T878Bs86RXb2rM0KLZ9GJrbVqvvMdXLa4vFhcLhXsr8IFAjk/riBl9hTeJhYbN8YmfNaMg5PC+mVvbW60cjzfk9WJL9CndXdbXbqLPwtgUlMV5jl+bBFp/x/3NnK1eq1Fepw1em4t6kdXv+jUhrJaJCvkWvcnL8axlaaKliz+zs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779043234; c=relaxed/simple;
	bh=UNlT/gPGZ9V1ZXAUAIOJPR3pXGhDANkZKbf2wBJx//w=;
	h=To:Subject:From:Message-Id:Date; b=tqHX737y8vyMniLpilc4EYWLZOgCRc3tO5ynxXeQEaPHPDxBsQjYguZS0fJvGmWnlr0cpkZOPrhSZ0msKzzMgZN7NPlsfU2Z5ENkQNBUgHMkFoh4wDyLRySYbawShJs3LFlx3vSw1uQCDWUddmvbPWOlFjVQLsFCfLMhiCQCFvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YdaHmoex; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YdaHmoex"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C14BDC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779043233;
	bh=UNlT/gPGZ9V1ZXAUAIOJPR3pXGhDANkZKbf2wBJx//w=;
	h=To:Subject:From:Date:From;
	b=YdaHmoexy28GU3ol/NdCyVrtxFxxEuzLbc6Fn8BC7GDIwC6TEKxwyMEISYxt3n/Zj
	 QPhmLo8gBsDkeTO90EISvsNDMdkLblGBeTZdquUGaTJyfqDEIrOdcWE7Z36mlJ9FdU
	 EXirn6d4lLuGa9nJGt9wZ9Bs8p7H+xvNxj9QQzGiRdSuuk9EwMClteZ5eWr7kEjadV
	 JpX3fpdUIeHn8UvaQnYw32Xru4ZYEs5r+tESIlZkWGlkch7Uhe1L88stzSAHrIwJXK
	 cNB3+zF2tYqOdr/wqgoSYPqb9SQb0M7ji/4XGqmOb/MadHefQEGvcnv7ekTadwukCs
	 ++w6SvQiWcqzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0FEDCD4F3D
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177904323368.26701.5638896925471888196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e13dc5caa2e6f800a6f411d39941ac6bec4556c70eafe756921dbe1612fd0af5
Date: Sun, 17 May 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779043233
