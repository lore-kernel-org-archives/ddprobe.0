Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40DE32459B0
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 13:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736946354; cv=none; b=UbjQMSIlf7ucDenaCMzBskAoZpp0HeJMZ/7CX20aJ88KFgGdC+JkjVxtqrXssq9hFPFQwsmUvnSZ0VXVlp/x5UTXtPWvs74k5P9JNv4IHoRzYSgeW/wP0+KrRHoUd3lSAMYCbrSIH3/ZDx0YZ9R+MJkCA/YjM0NueSbPo8HzqzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736946354; c=relaxed/simple;
	bh=gy29tv9Jh+1IDSEEMUX1wrLQYedTm9k+Ac56bmjtFNs=;
	h=To:Subject:From:Message-Id:Date; b=aLqHQsPYv368o3FYIgCTcGox9Oa6Rn6pBZK3DDY7V1Dux1U7GDw5UtH5hVSxpKEktDnNEb294szZqqUWNPbX5AwS7HK+z9QuLa0N3rI6QasqdbWPLtFj8uqOyzEluKv0oYumPIRbWFC0IlpNhMUjTujfKUJUxvkF7P6NwRilt2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RtygvQ5G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RtygvQ5G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7BBBC4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 13:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736946353;
	bh=gy29tv9Jh+1IDSEEMUX1wrLQYedTm9k+Ac56bmjtFNs=;
	h=To:Subject:From:Date:From;
	b=RtygvQ5GSkYnwmZwRenOY5x12eL9B96/6iZUjFQkql0C1wWzz0o4w3kzuvS+zLUvb
	 KpGTmoapULJtcNxxS6dmsrey2uJTCFLLX/8972lmQr0p8yjEeriPvaNI7bNrh55kq6
	 FnANpcCM7T42NDvTpdU68gzP5lu5iX3VQtyc8tpr6/M85ZdmXvbols33hhZMCOP4Ek
	 IOwlE1SvuxaE9otILgiihKZvBPHaskCNn56OUwFGDKj9DJvq+cLRSO9sGrD+L7pLwv
	 eRjjPZQzzTYUkyYGf57EvAYuKUum72RrEGfHOINkDltCz4SSZ3dq87ve9kGHgylqbp
	 0SC2YQ6gnb31Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FD57C02180
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 13:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173694635364.2791.13365625420094180881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08f1b22c2e1976f8f3073fb2e563b7b2f39ea05b857fee624f831fd91b1b9f4f
Date: Wed, 15 Jan 2025 13:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736946353
