Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36DEF2FB084
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 22:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776466054; cv=none; b=DIFfYr/NqNj5i+VEDu6aRKcDNRHNmKFPDfythePUh+OV9WBkr5kFw0obkaq3F+XumeMU/ymxrM/oOVdUDaA9BG7+0gPfVHUzmFNlqsndKvTKzE+ZBNkIl8ub0EqbIqpUyzbNyYgppBRD1fNUOC59Vjn6u7BPec9n3w4Pwi55kng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776466054; c=relaxed/simple;
	bh=lzcnJO8MkQGkY7h9y44YIJvXHOGLITuRxYi4uHgtny8=;
	h=To:Subject:From:Message-Id:Date; b=SG8zS/oi+rPMhYhQWXfJOmGHVd4oYwHuol7Py4NC7eJRlJImhaP3m5Mn8J0es1OX7prybMPGa/ZQBobJ322N0hmYxBPEumlDCmyiKSBA38vvZpxlifDsWs/s/PTbzRTr32TuOLK1ZloyH+bd8ICgdqdkhTKeEkSs+xbXgvLezFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tf1Io0Mq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tf1Io0Mq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8E96C19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 22:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776466053;
	bh=lzcnJO8MkQGkY7h9y44YIJvXHOGLITuRxYi4uHgtny8=;
	h=To:Subject:From:Date:From;
	b=Tf1Io0MqUmwYRAxT4BOH0l0GTpVSOxUAHeEXXG1QRURc2jM/RmrmkruObjkzdTH9C
	 QVpEiZY7l3YDcH+gH74q/JcTyi42gt2GJr9cTcfPPK7bSXnO/Rn6ilbdBJVmnfWy47
	 z/BOMNeNw5o2BjH6QhZqrYfJSy676JSObOGz/kXaiQPDRGot0JeJIQ+snSqjbtIXzl
	 mYDg99pFpjd6R+FlU3WYPnO7GTq56r/ksPQ6kG772PQRspagLBxSR37eDWUjwSIJWx
	 FnNMiTa2+HgAGxg4kiZ5BtyjRu1j1b0bxs13Rq/MNBiSiAQXlpPNl4jke642UxAHfi
	 5OyNJ0p0cMc/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9811F99C69
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 22:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177646605368.32656.4821685639321069451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0355e6057e80cf4dbc96211f3ca7096636490366af8201ac80bd744dba45b96b
Date: Fri, 17 Apr 2026 22:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776466053
