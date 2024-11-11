Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10D78158DC8
	for <ddprobe@lists.linux.dev>; Mon, 11 Nov 2024 12:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731328554; cv=none; b=ntlB1BHRZlqq4W9aZlR8y2tsnbNVZBX5l5Argv7STMXJ6WuqFmpSSvSJ0m/PmDgSrEdC9NnWX8gk1+pvwztyJfVMZOxi/ktLT6Dh7I1ZqQ5Wl4OcJGPN6f1L+LQp8t2OY0xr+URs/R5x/DbT3wLXS79uxLA1tVlZs7nQj0y2yTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731328554; c=relaxed/simple;
	bh=U4lStr489dAZQlS9udchir8zoGmLU1CTNolCaCUp1nE=;
	h=To:Subject:From:Message-Id:Date; b=LUn+VzKLbEAgxgZkJXLi4y42/kD4dXeBjobijS+diu6OYvZ8XgJqUKz2/wvI0tAnl30pBRECNDLqiVYCqfI60F1KfdQctW6uJyDsr0L4NUYEAsJQjimQyYe/q75CX1lUNAMW0vtB3IOyGs0X3lGoZHhUXMEJWh9EAVfyN6t4PEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ahG/Fhwh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ahG/Fhwh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9571C4CECF
	for <ddprobe@lists.linux.dev>; Mon, 11 Nov 2024 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731328553;
	bh=U4lStr489dAZQlS9udchir8zoGmLU1CTNolCaCUp1nE=;
	h=To:Subject:From:Date:From;
	b=ahG/Fhwh5MPMtOnfgGgbwRexbr/G7SNgsw546osiA01D2sLg5DpypXoVMT+wNAbEt
	 ums2yUXt+R3EfP8jaA4YuyHi1vaXtBKioEsIPlGEFEJhIIokS1+l96+8ax62a+QQs4
	 e8JKZyB41pf+VoUcuDUNjTQNUEWxJzvi5fha2XgZL4khG2B630K6EMD1qaSFM/mBTw
	 NO/tYdQdqdSQcYKWiNJhGHvd3lBfyzq+KQdsmgNQiQB39A54j/h065hKXNVUb3tKo9
	 mn2lKC0gzpn51eaqonBF6+xa0nz4+IvZymB3gMmXLjWWH+emkquPq4Mg5hTifjC1eI
	 UzHScH0uhDWSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9696FD2E9E3
	for <ddprobe@lists.linux.dev>; Mon, 11 Nov 2024 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173132855360.24742.14120236925534370665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 346a25041f99aac9c6d37348fe548163cea8005f249f8fbabe97412ceb705787
Date: Mon, 11 Nov 2024 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731328553
