Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B88141D659
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 09:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789379434; cv=none; b=Z8Jdse9Jq4DbsKnhOZNlsOpaAHel7fG8JaVvkwpc2wBakaInTTsaxuEG8PvqSlQgzHPzJ07uvGFvBcCJkYkHN2ul3vljw/7DjqP32z6/UXk378k58/v16aM7zmSKgyPz8tzBjtco7t/3B7AlqTYSe3OTFqhtC6i3JBXv3EUN1kU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789379434; c=relaxed/simple;
	bh=dIVIQNpmBPUpToP2CxD+XXDUAjTUF8RXbN9hJ3VTxp4=;
	h=To:Subject:From:Message-Id:Date; b=Nir1wFbwIb3OhT0Z2/LH682q4jBpRHwmIe6+0NGIr/ADMKsnPYKrzvP0P4yV+rCWTrzcSsKk6V29rrlwqTwrGlaWwXHBI1ktuSPbV3TKq3kyYjCytqu+MV8ZoSEJ6gcpVkK7KLW3yWnrQ1F6+9mlB75IDLx9ykXn35h3Tt33AKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZkqjRUDw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZkqjRUDw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFD3EC2BCFA
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789379433;
	bh=dIVIQNpmBPUpToP2CxD+XXDUAjTUF8RXbN9hJ3VTxp4=;
	h=To:Subject:From:Date:From;
	b=ZkqjRUDw/KEA5j8OeITCzue4uRgMXkosTBQ950k6zVvXANWpOFCXH8ov9ZdDh3GAA
	 feNSrwCWjiujWb6MjPWv6CxXMUzrxWGc0PYjnB+O5wVfZmfQ+HLAL0dbAnEbsUv0ZT
	 tTQqDOBt3lUxvWtS6FtHYoqUU9/Fhm1rF9pzn/8dqpLPQSKZEuYphPzhrMwtos/x7v
	 umL5aeR/T+6puVpCZNgu2vPHYJFBy2SqFDtLNkDwaB9tx54vJmAJLRebNA3IM8bMom
	 DW+7OAb9AcZNgsPcwlzysvKj8AD7+YdCexeQUCsFK8NTpKZh06tOy64U7J0gEYQTim
	 tsmrZps/onmhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB706C88E64
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178937943369.18459.6923566692919788718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 403af97d68f2ae552b0bbdf5e3388bcec97fcca694c9e58c5a751865018599a0
Date: Mon, 14 Sep 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789379433
