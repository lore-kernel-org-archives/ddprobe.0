Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 451623655D8
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 10:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790505634; cv=none; b=LnVRS2NQ1j/Gt2b3oyhwlRVBWdn1+O5F8fmWK4npKs7Wt0pinjznzQY6+Sk+oO2uhWvsdkOaES4kiWNwTYErujtOxHK+oRtiYwwK6crKa8CrMgMrwZ+vurVbM3z3l1IIT3T9N+ryOkjViSlFQO07Xt9JA63F86lhue9+zRhMA18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790505634; c=relaxed/simple;
	bh=pFRzZ0byixuTs0uKwFvVafsvdoz+I+AzJBXUewB6NKc=;
	h=To:Subject:From:Message-Id:Date; b=aSl6Ii5L9rEVW55Odm8QhEpujjLYeCBFhb6nM5087dNcXBL8eBOwoXQxA9kj4aYUcTkvkWgneqeSK1TQ7Gf6uXamv1LeNHhQi4B3Sl10ATv3cHbdomzutlbJFixwSMpe6G8JqDrBF0FqftoppeA9mPFQCGDNOqTKtwqby7p43dg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GFe7sy2c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GFe7sy2c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC22CC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790505633;
	bh=pFRzZ0byixuTs0uKwFvVafsvdoz+I+AzJBXUewB6NKc=;
	h=To:Subject:From:Date:From;
	b=GFe7sy2cWsgG4muM1C1J8YRstD3HvlIJqtRlF8y7eAHRTx/pDMjBbou3bMKM42Ixb
	 aChQN+AfvfRsTcxu/Bu2GjjGV+P75OLtaGhV0X9/WKdlgCW0BEVbKcX36MMQTDZ7dL
	 UzxVM+q4Q6ETpGcT5k5WpUIa7XRmasQyoVvgL/HK6e7JfPUc64nmK5lCJZhS3UJP8o
	 vpLgFdkj/c/FD9/QU6Fmx1m1lp1bgOWms76HYxSspzBnnRk9T78hAh6NDk3/4Jz6bI
	 wznBszgIbglTSAOjgCJ9NfcWtynhkv+SZ8Idw0ZYpR2G/R0b0Tx8GQAbCLXg188uLu
	 56fyk3u9OtuWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3067C98324
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179050563369.4491.13210636698319102559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0407d66fd3c80ae347b998af00cc593129a78be30d89b2566e1d90f6a3901c9e
Date: Sun, 27 Sep 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790505633
