Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B6A532BF4B
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 23:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787872234; cv=none; b=kBhpZFC6R5Alp7nUHOCjMF+OXO7sTILrRPW8kHA3GqOo/1Cdv5SJXEpSjRre5gfrBNy5Le+o2CISGTIvZ4Of6KFhjdRAMDKk/8x5dNHfbnudAZm4ynDMBkwtN4JSziMjuBojDq0Zz4W3d8YHPqpKyPvTUjmM/peCcCuaXOPtDxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787872234; c=relaxed/simple;
	bh=qeLzylwayzYPVxDNZgyg9khbfrdi9HiP8lwlAZItEQY=;
	h=To:Subject:From:Message-Id:Date; b=JUHc5ALwepFR2t08sEIT2lohRhvPsthfh+1Y+whnZiK2k9dYqlb72a+J9UttlFPq9EOLEQ9frdd6k/iZRT0i1NniyRBDmPN0FCAVeTbcLpA8yOvhAjYlXB0bJEJS4FPwfMMJGdII0Vt+1cpYXiRzbev1gxOb+kZFg9G+MNedl/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WwoeLAfk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WwoeLAfk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7E3DC19425
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787872233;
	bh=qeLzylwayzYPVxDNZgyg9khbfrdi9HiP8lwlAZItEQY=;
	h=To:Subject:From:Date:From;
	b=WwoeLAfkZpbCQdQaAdp8yxRANo+ze6QOEUjlksYQtCEoRHaWrnlnsXZConP/Gs4jU
	 wUT1t+W81KEG2o182gNZAwPoFEYa8XtMzZ7cpCuJ0OJGpB6wa2tmE634tF1zv72R1k
	 Jc+xcZBK8dyl7XntdCzYScxdyxm2MXk12nGki3G8nXAgsEFqkvToHZp685GI0eBiuR
	 emhEd1bkGLdJQzjRcA/i/lxk+s93wAzx5jfYwW9/qv6RzlCZ/oE1a0lorrWIVJKb0S
	 tX2cILwye025++U5mwmyqRMJdIjmoAzqnWtLUl9NyqFGFotyLKiOban5cq1MTigh+3
	 5/ohevwyn6iqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B10F6C61DB9
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178787223370.25112.951119289850422222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da0bee58b1d56e4b2dac6d2f5d65b3d5ac730fd83042f8e3d23a94102f2ce4c9
Date: Thu, 27 Aug 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787872233
