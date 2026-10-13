Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A281451DB1B
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 16:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791907834; cv=none; b=I+6fSx8nwGkc4JmNqxUFve0A62kEEbF4/BelHAnZKudzkltPRJ7MoLCaRm8qRZ33B1dPFyUG7waT3WsT6ZdKS/739/ceoFgfYWoMAPehzRW9kGgBtM7z4Mtuxrp3n6+TBrCiMCDdbBoFUuV4F6imSE5i3PRdbeEEwPKdzFK3Q3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791907834; c=relaxed/simple;
	bh=HcRO7v7VTkfiQtsphE8CHKysO+odJQGB7TmPyAYxKqo=;
	h=To:Subject:From:Message-Id:Date; b=udRPF7P31rGkvCz+DY+AH7BPk3QGKxXtQInTtgkhZQg4aUKQcWC7zg8TNH0GlxVwZhP1SW9mfm2TSzrqUocxmLhFu3Z28HGUHimOa5gxKksehM2pS5PVwW+3ebnfo1fHJftN0woPAGJJoJZ7EyIKeh2ZvfxCLkEC35gO6lhnDmg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rh4FHO+X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rh4FHO+X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D819BC2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791907833;
	bh=HcRO7v7VTkfiQtsphE8CHKysO+odJQGB7TmPyAYxKqo=;
	h=To:Subject:From:Date:From;
	b=rh4FHO+XaYHbtpiueAYRi0bv3Z5ZCB/49YWYvrDB/9nkrfRjFwFR7K5RWdrTMBfEu
	 za1GT4FzUU20NcQF7/8OroqUZY2FybOaStNM7rMrkd2yMvPfm+zCQq2pY0rvJVqeTn
	 stmaNEqC3GDS0FfbgxC1Iu7Q0zAJB61pJV76Vh8Y+gj758DvZ5KLtw3FVxZcssVWaB
	 7jyeQhHVUPepJG81gvtN3bAJ0DFf0RXVetRfJqeq2gJnKQhuodRMYRX8yxEqRtEwQp
	 /DaKZnE2P1VB7LB+uZ82BCsrWlILNJn/Z3zjvv+YfNo9NtDDRJhY+U1S9cuEF3XhKC
	 2G9d0oV6uTgxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4B49CC6B12
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179190783372.21606.9120771315471030166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ac8ec0b7f6f8279d6ba2de1cbfb71956e7fbde7501e248040bbb0eb2f23acd0
Date: Tue, 13 Oct 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791907833
