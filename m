Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12E732BD035
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 08:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764748974; cv=none; b=TJSzdmOON7tf1kXa7vDHXIOn2rSdbIdQiICMIdUr+Ezd6ZNJm504fx6z2HQ92zUFYcUg/e595Rkt9TnMQ2GmYTW25nkW0/ujaaewlkVHtyvEATNhe2dheV9FUM5/H7D0x037R5yVym4GcMuADGmFah0Isv1fIQDucu869hitGvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764748974; c=relaxed/simple;
	bh=CChcXowLc17LNt1FRkXxuika4iJJEPoE9ELrcRiN6RA=;
	h=To:Subject:From:Message-Id:Date; b=sWLM88ZVrUzXAxknQPPQbZJ0KMfTpLSejju1R94HzMpDu4qtCCsrM80471znj2e5f3a/fN1GlbLjtLejk7wKzd2TZpO2rScQskeDSQg5fP3lq955ZhXx4NxFydzpciqc0iYro0M6V+zS1xgHLsUsfKn3sN1krU3ng0oZ8/RrZ7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=feBwISR2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="feBwISR2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A58B5C116B1
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 08:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764748973;
	bh=CChcXowLc17LNt1FRkXxuika4iJJEPoE9ELrcRiN6RA=;
	h=To:Subject:From:Date:From;
	b=feBwISR2LIPSu/aomb4C5k+jRC6drX6HkYmvs4248p2n1DZECx1V41DQCUTpRQJcM
	 /RzQ6fHm5V+BoaExh/cTG70/FZdiNIMwQ6z0YotrbE8WHkWbZMzqkP5ciIrmXjd7bq
	 qnmaH4dXq2wjyKuBdNhyS5wGy+Lsm2YwSveRVh5CQTrZy0DjRbX5GAhkn41/YyBqq+
	 77ceee+B19UymXf+jTC7LmCfjYACscjULMSIvFeMOeXYE6+rufEJ4UR8cqrludupsR
	 FWAWcDfsncvy5moMEA/lZ/175bbQSSAeH1Kq+ojbRWV0EH68aUfAFCXNBBeA3C/7pH
	 iV2xaBCazGiuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C3AD1266D
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 08:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176474897359.27913.5952368672192201595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ff2099dde9a111ada11a9a097d26ac992bb799060b63e44437190c7279ca6d0
Date: Wed, 03 Dec 2025 08:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764748973
