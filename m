Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFFF01F7575
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 22:41:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763505714; cv=none; b=KV2zGbE+w3eoIi13dmbgVcU1+eh/pddTBNxO67eZxXMJdOqR8SvaO5iuqezGPXTK0eQ/hsHTtz8VAfpMbJVrhZXBxdkpsgZ1Xthv3emGKzSh6Fh1c0CjZJ7go4ujelt6uikMlbgGBv08ZfL5X6pag98DapVHLKG7FrVmQ/Uns/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763505714; c=relaxed/simple;
	bh=ycgrDiSHa0zet7NKSDckecZx/bDmQYaFrWDdavkwhIQ=;
	h=To:Subject:From:Message-Id:Date; b=UQOEeY6yMIxqZdQF5E+OByg9ggypbr5Cy8XDV9H8mbBikvNmrEmptNuVyYJvy0lVapaL+GHI9T57Geoh11RPWbV/b95JfkQvE+z74a3BmHHLuevyuhO1MMzCifWnfJSuYJiItkCoISCqXmuja3vY4K9T72bZBXxuKgVFP/khQ6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ry2Z3DpX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ry2Z3DpX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE61EC2BC86
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 22:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763505714;
	bh=ycgrDiSHa0zet7NKSDckecZx/bDmQYaFrWDdavkwhIQ=;
	h=To:Subject:From:Date:From;
	b=ry2Z3DpXGNPgEq0lH4CFtcn345NfrK0gW8mCOzXSWMUl/iIuca6vY+iZOxXma3yWw
	 ALB/Z8ZDDp/oB7JJ8pkMqsuHhnmGaL11QNfEo8n+aJZJiNHi0dJAfDxfYNo9P2FCrN
	 tDnKTuij1qnJkQcmbWFFf6Z8Cs041tdeNA5XZA6HAkViEUn+QtQzrreB1NLZ2hSCyG
	 bG/nZqviJyM1vZ0//SfzrCuTEaMuk83OcgzUbhxpUXFGE6JSUKbsV0q3uC19YwiJ7W
	 Hll3PqBRIYaBqUafh9yoqtt00HMGZV79pbaTKRifWk6N/d7eB7zyGrikXKk5f1nGXP
	 W3yYWyzMzoxfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95018CF2561
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 22:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176350571358.24042.6076615612453864473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e0eab11243b54dc9349e8079de679dec4d6b288886347fab56135451d0ebd91
Date: Tue, 18 Nov 2025 22:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763505713
