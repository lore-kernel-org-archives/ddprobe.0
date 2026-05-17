Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 359ED32D7FF
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 22:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779057034; cv=none; b=qWpBCWqhxSzA8sGoVrbgM4uwJdNJigv+bGup9J6iDeMy2ZOFmDrqy4ZCr1z+dtnfLV5Ju5oX9Of9z/bjtyH1gO0f0VY++HRWTjFxgCr8h2fbJL2rJedliOX1DpOW2nJ3gdO5qYNx5XxzxdqC7lg+51dInhvuM3pMa0EqfdbHZpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779057034; c=relaxed/simple;
	bh=LP3NvoNJ3malohjG/ItTr4kUBrkjBphac8qP66FAt+A=;
	h=To:Subject:From:Message-Id:Date; b=DsHCJkoptvak9iM8jr5XHbYafhyaQyTiV3u2VQ8nyPZFMEI0lNA+LvoaJtAZRqN3XFEnWhWJFFafuywBnqvZSrZSycRravNwAx4lG90+I90b9dGhujqVC0CosOW6cZUrCFcN/xOgeApsUO9rG4m6/Zyg5EBmlKb5Lj7+fihDXLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o2xcArJO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o2xcArJO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDA16C2BCC9
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779057033;
	bh=LP3NvoNJ3malohjG/ItTr4kUBrkjBphac8qP66FAt+A=;
	h=To:Subject:From:Date:From;
	b=o2xcArJOZuBkSW5QkpIjPvqI4me/yEYOHXaoZB9KSfFtXdDGD2OezR1zbKp/h8qEv
	 zibnFxtCkqCGJOntmQhionYVulzDuhh/3/YKRWS9enS1zVNvHJqSynRlRmlvLk9SqB
	 V5DvppiN1vdfwnhncfSM7MwMQ+lKtEBwGN+/Mq15vZ8l+HKMpZKndWclTZq2V6wlK2
	 LA8h5RU6V1Km9JXlIu+NXQ9aps91AYp4MJfvbbxOtQrvcjEsU5fodCSTJ+gCAVBTfC
	 lN2GbK+m4yV7grRn3/H6EDmjqAtzZAFgQ/LLSxVrEB2foBbUCfR+rkE2xrrkgzhCuo
	 7YlaMKwF0QMqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AABC0CD4F3C
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177905703368.6351.2365154713242580704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8213d68eb7652e570e2fcbf9f34700c9554da57841b656e42260e8906a579cb
Date: Sun, 17 May 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779057033
