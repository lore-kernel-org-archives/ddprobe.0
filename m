Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FBDD261B9C
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 22:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773268494; cv=none; b=ht3/p8pH28pvluu5s3l+EUQVv98vrk52O2aiPA6YsKLBzXfONcEfPiGFTe92vpNx7wt6D8Hgnc7etogVKVlnJpx6MaTpSs7K2gNHLTCuUmF87w8Ls2GdlzXYOg7L+p7rKCCjBA01CtiBOOK9pR1AAxTstckPJd3IqLm+R6Wv7Qc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773268494; c=relaxed/simple;
	bh=5Bt+hPSY5pUzi9ZiKtARZVEJWP1PS5Al4+3vWbszeuo=;
	h=To:Subject:From:Message-Id:Date; b=Kto3b4kcFQY2g14j1k+geQGs2TXtlKmX5E0BgvZKLVaXJJ5MYnMZtSOxNLSX+rAoR/rMezKKNJKrjbgULMiXR/Jr9N8onyIYdiM+DsKwgjXGqbQjO2d6ZndPbXKWgLyt9naR4u7UXnowNvEXpErd46ZbVdKDrcUJuglpNVWDqiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oiKFN4bp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oiKFN4bp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B04F1C116C6
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 22:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773268493;
	bh=5Bt+hPSY5pUzi9ZiKtARZVEJWP1PS5Al4+3vWbszeuo=;
	h=To:Subject:From:Date:From;
	b=oiKFN4bpiMLYDzy5QcZV3HnYh4/v8I2UsJ/2Wo/LmKwbVukfzIzJjmHUl8HgxW+kg
	 oMl1R8P4jm5FNd659SmSyfrDDjJD7dJkvVX+pS7N1YLz7y3UDZgXdl+Db7ESYtzyKj
	 oMEx7HZOt0LWClQ+jUTV+uYBoj6omiotllPsoE8391ad6NA0CfY+TXIMRo2ipMqw07
	 SsIOe2tl7poWOLbM6FuKogQBzlPSvaO3laTQp62DoVnbQ4CxxrP1IRh2BxBi6WAA7n
	 EkFvTWkCXeAaO7r9LcrckLfZ20Iv+CkHSfk+rEg/zLxsRzG0KKppvSdjD78Dt2DRPD
	 6QShGUDGZIQnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A410103E2E4
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 22:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177326849359.27787.15472788956406616326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30f2336449cc516c598ce8ee7d7aed9d404391f8e127abebc7e483462155d6fc
Date: Wed, 11 Mar 2026 22:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773268493
