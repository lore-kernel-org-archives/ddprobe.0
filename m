Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25A4A1494CF
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723142754; cv=none; b=Hqbc2A4fv7Rdjna1wz/Pn5MOuYN6ZAzvtnKGwTDgwoD8MABjwnsfYAggdujckQ6b7lyX8r2FdbsKyAV5S2X4vBb6OrqPy17ne7wzutleFg0ocF6z0Wtavx+2bvDCRA8iBaq0ea732jEb7I1iZTALJdtFI4CeN5VsTnu0x2xDYrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723142754; c=relaxed/simple;
	bh=BS7twtm3mIv3gEpXSZ40qGFclY/bvH+DT/9FGZkm5g8=;
	h=To:Subject:From:Message-Id:Date; b=HfHTWZQKifFrHTqJAikxw/6yosLBlfQQNtfKB7TL0hueZEt1Luh7ku7ekg5hKqcZacuShGpkjoGW3ZBAV/WFvtHQkObG31lxJDCfg7kEogE6MzmejhAi9m2OuqHXAZ8KfzxW6S9B1MLXMF8rBlW64/ct5ylL0F1kWgYO9scZQqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qasg6pU4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qasg6pU4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F7FC32782
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723142753;
	bh=BS7twtm3mIv3gEpXSZ40qGFclY/bvH+DT/9FGZkm5g8=;
	h=To:Subject:From:Date:From;
	b=Qasg6pU4Irn8Ye4q7TsWY8CcQTJC5xuTUMbi+rpzJzqPtJ1QzGi38wfWOO7lq237m
	 WsYxlq7tX5IebBfwMP0rBhKk74kjIoyVPyaBXWgKM/hFg7ajI2/df7NFWykTCBNwqi
	 JT1CXLI/zjkSFW5VKriNxbYQioII+X1+XLuMLwu51UuV65PN2F6xSODZIzd2QT6hfo
	 RLMFlUUbUJm+UujT8sPVWXpNa6JbpgbtRB7O3gJYdjiqcxjgRa96v+Mfr+59vbbS13
	 ETmZ/zZd4AIKWgk+LiHVgKkV51+pDcas7mXjTTQ4ZqVfVHv85q2qIMtFsSEZTYlQl3
	 o53locFJmZlNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98CB3C52D71
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172314275361.14154.14674172396731838385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e248ee970dbe42bcabcb6282546ca6cb74e76b4a94914b3d677d98fa1273c57d
Date: Thu, 08 Aug 2024 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723142753
