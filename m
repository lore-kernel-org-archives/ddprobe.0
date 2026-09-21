Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86C873559C9
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 09:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789981834; cv=none; b=XbNunCk9oDRz4U9Lq9tJPJFT7rixsBz5PIlGLt5o+/j7fclhtFcMDLogmxfWsSCXn0GZlvMDu2wU5vA8dH5B3aeIueREJDwRYpOV9uEmPcvbaxBF2xqF8VSGXbcShN+x/g6J5WmyvD1RFWg58zp3OIJtlAcaff8r94GnZa3BVJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789981834; c=relaxed/simple;
	bh=xvThxxBFbJdBCMxLFf9f8PttJZfr6ixvAOrU1K3lq7U=;
	h=To:Subject:From:Message-Id:Date; b=n/vbOqgdX0GyTgcyGzJIGCsWmTfI3iopILPQS7rKccwUwcxQ65gd1oo1/zcozKcQlR0oJ/KVh0UDJXbk960QofXayrzC6s0cFg5sMiCkLRW4Nx/6WEkZlSSiA7m4fXLp84ZA0AECk9b4T0a7ZT7+lG6JIoXt/BBTdiufbpdOzVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VI2vMQgW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VI2vMQgW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3B9EC2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789981833;
	bh=xvThxxBFbJdBCMxLFf9f8PttJZfr6ixvAOrU1K3lq7U=;
	h=To:Subject:From:Date:From;
	b=VI2vMQgWylfPkG0bFXmDcqzyiyJZ7geP+tiKKT4fiaIIkyCZjzsfKlVQexAfpKjRL
	 Lgv/3m1ISYjGt7kJnpqy2L4IKVkfNB0qx/PitXLJqEr3udUgbUbhatTQYh+uvTbzFf
	 pKUv5qjR8r+emXGeGWnAXnszppHvyCJy1n1WH+CQAmQoLdGxQV7Tde9mbEqcrMEqeq
	 3UDG9LAGjU/ZJb5H2F4yhAVjNUtG8n4lxqWPasAZxo+bAj0WLNbd+sHAocc5UxNjF1
	 VU47lNMPBJku1lJGS5m8SMDQ7TqTHmuTglfEijU/bBahK2PY70p7IHr0GSB0VyelFR
	 8J59EccvE9Y8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE27AC982E1
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178998183370.26151.15034630985916196383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a6bf03735e89e1e1776739395bcb3a26149e04f15f28befef18e38acd76e738
Date: Mon, 21 Sep 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789981833
