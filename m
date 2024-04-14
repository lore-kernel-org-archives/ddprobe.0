Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68711FBF6
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 05:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713073763; cv=none; b=Yqa29yz9w1MZdwdzL1lz3Ke+23V6rs91UVU/NN1DzHMxodWqzgjx3xMxOK83To9wTSk/vjS4Mg2z2RkKt9sIN2XtgS1mTae5qncfo2Z6b1MqD3FHQo6LtQBZZwAS26YWtd8yJzv0zH2z0Q+hidVyah7qjls87YdJm/4bgFQ4B0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713073763; c=relaxed/simple;
	bh=AA90cAvCgDGFByPa5Wk8+2SKfRnnzGRdQIiP+OmeLhM=;
	h=To:Subject:From:Message-Id:Date; b=Wi3qpW5cOTA2jZCZdhKbCKJmnnierLPgB7afaKlhmCSbTAIB11ugtSDXK+ZvRaRVRGCBqlM1JCcV3wPbGCp/QP3OToZ+laIbCou05cBdJOOy+4/FFh5zzhJEOPmJTsKQ1YWpzqvoMzWoV8uDt7hwJnUBEyhW/OalAbKAcvvP6kQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TLiszJ5q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TLiszJ5q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7415C072AA
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 05:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713073762;
	bh=AA90cAvCgDGFByPa5Wk8+2SKfRnnzGRdQIiP+OmeLhM=;
	h=To:Subject:From:Date:From;
	b=TLiszJ5qcXJuAtbWwQ0I9fEzg2dWXAS35O5zJfQx+LH7FR8vrxTNVNqFFYd5mP8RJ
	 dYt4NhCSz0wIc3hc+mGwUItu3pxEXw7npbtcAHqokbsoR0JBWr9IN9QcYtdRKWrd1Y
	 GT3+99IJtvCxuQUW5PUzZxLw06M/giVfHHcD0+IKysbUuZauAhXQO4cPxQ6oC68mZ5
	 CEIDLb2iLfu21fUOH8q5MNH1WBFNuEDe/6x6Vfrwe67TlmH4PMIfWLW5eJjhEGcBh7
	 dSNV4KNHXdnmDkDmH0lSMbG9X3uP+LT0NSCFpwNpv3W8uodqRkYkOk8AhOxDnWUW8f
	 Juor+UIv3FGvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3502C4345F
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 05:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171307376277.6822.15004961672596328428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2aeacebeaa397954b6543fbaff191bf6d3345ebef570db91b5f02e41d16c8cd
Date: Sun, 14 Apr 2024 05:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713073762
