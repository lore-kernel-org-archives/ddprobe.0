Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E1AC28688F
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746726594; cv=none; b=JgQe6mdRS5cOKLplcJhKVriJBpgue0vxeXDg5LG8lp+RTkE4TeJfjjooWwaSb7XhVwt9fuDYIpDJYpiuYRaMZqo5JDFmEqgTBU7fHX317+cGofDKYQ9xrqYE4pzuNpSw6lFw4+1g0vlJ4VM/uK7lxzlSzR15eY98+8jr6Cj0ZjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746726594; c=relaxed/simple;
	bh=vcGN109oXhjypczdC6Y//LOtT4rWRS32UoFQiQ92DEM=;
	h=To:Subject:From:Message-Id:Date; b=qFqjCKilS4T5wiWJrcbfJUhAcsr/L0zyk9/DPBESAiRryNbwc5KVYFuYmnJWGE7jL7wfH/6T+NK9/lzZHPfWQWFhb5SLqI3wZJjhWqwiJrVFkvC4LYIdC5MmJOV3qOB7V5DhLbkJY2ucpl+cB46XN70Pp01HF4ObT/kc6dOWTLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C45pV9CD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C45pV9CD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC2DC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746726593;
	bh=vcGN109oXhjypczdC6Y//LOtT4rWRS32UoFQiQ92DEM=;
	h=To:Subject:From:Date:From;
	b=C45pV9CD7Wutgv74IbaUaJn+WAqhxAiJzDsgSQldkPEfgBbTkNxz0LGdJ+EKs4vt/
	 hqIZnUMym8tgNf5rUa7luMxPuE0U00fwUfxv33n3XFsuDIQWIJX6cI/ck/lC7FRMjX
	 +0j80tLZQcyHwvVmqCWhsuKT7Z1WyhNAzgF4LDKkZ1IaO+WwWDo96KJbdhK5XuhcKW
	 PKKzKX1K8gRyXgoWDNIuZaHJJRSbzS/yYymsi0VNYYrRQhBzUEP9Lags0pAlPhOrFc
	 hzglwllVbmFC/e6YA50F4rFbbi63CsKEG5OkzC1xxCSWZdqARcpdc1uZUKQ1M9/zlw
	 m0jpsP+OrqLqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F235C3ABBE
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174672659357.28393.6098308483830307865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47805665091a6d5eed89f79f0bb1b6911eadd33f2f8bae4ba36e9d5205340819
Date: Thu, 08 May 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746726593
