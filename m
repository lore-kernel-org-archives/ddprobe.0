Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36EAE1DE8A0
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742899194; cv=none; b=AO67pKQdApMQn2vthwpN2NLtnEV1CkHwF3xZ3AgkLZfn8jPbIgf7Aqo5b97sNqWJqtj9NMUhTPB8bl/23ncszpgLRTXb6vhoTAZB99tcC3w79dB60ULchPJq58+Z+34eQS8MSbyk/5bjUkES5lOW/nbiZILh9lVJjte+J+3KkcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742899194; c=relaxed/simple;
	bh=jqYRQtciMsoOwBTo97ZA0fW+m7r8e2TSS+8zz2MSl7M=;
	h=To:Subject:From:Message-Id:Date; b=qaSAe7HvNL3spKF50gleRWm6o7NMVHlJJpId+kJxoFf6P1282931Yl7OSjh9VnWXZfj+ThSteuoHg6+ZmD++vzc5FdBUHPEsq4dldrFtcVZPcy+wUz0OUVeDn7QO1nGykse6VgGeFx1UhQTHyq4MZxmtdmvM6BRcarMGQfJdsGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oc2FEFto; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oc2FEFto"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6A73C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742899193;
	bh=jqYRQtciMsoOwBTo97ZA0fW+m7r8e2TSS+8zz2MSl7M=;
	h=To:Subject:From:Date:From;
	b=Oc2FEFto1NthhSge+BKTsPUZZkptfC+rjnCiirFcQW7ts8TtKuG5u4rpVtZq2bGHC
	 Sqj6oNTslfwwH9ebvQOkzdndSPqSas806kXjL1dZfqKUXARp5u8l9kr9y1oFrS+gt5
	 8SryJJAjB63oj8BCZMjTn282IdEhpi3LM6HHcP6ey0HxkIM0jD6hbj9MboLE8WDRkC
	 vPsiH9uCqsC+L5HIgo9N1jsPGf3Cxw966J4oEuteRarSvYmFgr0LYfg6sUN6YwJu5a
	 d3M1mEEhgvxtJouYTJJzY6SjfJngP7r+maJPdA3HTxdt9LNkK9l2/NxeXjvuVj7pGS
	 uc5pzLx1SIajw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BC81C35FFC
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174289919362.30142.12568973442789385423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e9022432c9c7303e06edfde694331518919918a20749ea924d71a979b8cbc17
Date: Tue, 25 Mar 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742899193
