Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A85450B8DB
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 16:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791907234; cv=none; b=IJLu3GPtOYAOesq2KikOu1D7u6DpFWK6gDzyIlSQzyvy1hZfQf2HFGERvDzO/7lpMNiXo2559hXl++lu23M0d9LHmfOhXKam6aGeqG4hl5mZpfTRHIckOcsXAlAZOkUbs5f9TjhGnmaGQe7w3sIGoK0jNJkYyvEEStrT+A4xfNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791907234; c=relaxed/simple;
	bh=gODALzWt4rQ25NyQCgbKpNbtqKGI7G2wBoO7/hgNObI=;
	h=To:Subject:From:Message-Id:Date; b=kB5o3ZnwyNfivORXSCv54fk/rSnPr9aG3Ao2OqPUPgqjLLA0qAAWOEGLnwa7F/XlaclNls70QJX77Q22ePuXUXWORgegCeTv5PxFVWYKE+n7BbTaqJV+gdTma3lTvdhTTZtvWYzFSn3dt3Z3KotbqOBOiddvKM00mFrs/Vem4CI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=omrNg/i3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="omrNg/i3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB9CFC2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791907233;
	bh=gODALzWt4rQ25NyQCgbKpNbtqKGI7G2wBoO7/hgNObI=;
	h=To:Subject:From:Date:From;
	b=omrNg/i3n5vqBIpNYD+okQmOks0/Y8nJW7vSrOg3+coHaSFQS4EihHqjC7ygSyTb+
	 nHLienP+28aQl2cbqKYXGT+EYuDhB0p06X4lPvxNOA5k4kGvDPkFVvN0zH6V1TTrF5
	 UYip2vH8YPueSKVKBR3UX03ReeCwa7JmcB7IY+Q4rovf6fdlTwPQbG24ALyk1iLGMH
	 6RHl72AS7jot+1M2jK0JODAYeA9lboXFTXk0j3H2XV7jM6UIMMRBgDF8E5jxY5Yvzh
	 hY0iuznQD4mtVrDQFK1UfCnouNrdZBLO0H+rLQk95IBxXPUBqThMUUYuhOOH140DvG
	 1CQVbuplpUxSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B60FCCC6B12
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179190723373.21038.8177522609677061756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46119e2fddee0ed9921b1858b93c9eba7778470dc7e30e42a8a5a68ee224bc34
Date: Tue, 13 Oct 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791907233
