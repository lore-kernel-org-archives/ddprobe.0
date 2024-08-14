Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EE38EDC
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723602954; cv=none; b=toCYx5ghM7508sbERCHnxdp+rTYeeeBtfIv2g5ozQ9MbFj2Qaj15yWFiNOkPGT1zmpE0Vj4wj6JAkDTRcpA1Z4sPzcMTHCUJCqP+Q45p7KxF2KJ1j95amtP40ozjxbGB3ioBYLItJpIz+V3enywx/zwGhWYCpF0wVS2nR5FrIq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723602954; c=relaxed/simple;
	bh=I4Q58YzQk7tgdfA0xHFWU74GKmCfU8hw1oi9JHHNwQc=;
	h=To:Subject:From:Message-Id:Date; b=MiflmnrS0GPPydtS8sG8vfRp2aMk9RgMFn4IuYOFDWgYy0cQB4kRKZ/y+7o/6OWs6J1s3ELwlPDF0POh/U+5iaAY6gr76BCuSrO10hkUM1PunyUqE56a7M3GaQycr2W4RDXhqvQFbW8JcLmWK/guiRxTwUDJaJ4FB/r1lK9cR9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dr8ZJH+v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dr8ZJH+v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B74ECC32782
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723602953;
	bh=I4Q58YzQk7tgdfA0xHFWU74GKmCfU8hw1oi9JHHNwQc=;
	h=To:Subject:From:Date:From;
	b=Dr8ZJH+vyI1o3rOkjLRx9PeCbCWUjeffupzKfDwlGsgo4WjLz35sG4RIk//peXlrE
	 LkkwEjQuetxWAJYYFnHiSgu5eM4VW0/j/N+wOZjMzOYWfm5WGuuH1k8uN8Y6/HSfBH
	 DkiiPBIq3HgzyKj/0PGOBhN2uXEEJC7nanP7C6kGa15RU9aNACJEbls7nli1cE6gfL
	 DR8I716Bai9ZHEmWpUebIBR/5Dg18R9xKe9XF5jNsG1fWQ1aV92diF31Kr2WU7oxyG
	 s5DxpfwLFzREkhu+l27frdXzwsU5cUc0UiMwe6Y3jqnKLO38M4+6VEcH1v6j+nEnMX
	 58c7zN4hTpP8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3813C52D7B
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172360295364.29920.540174130860335785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28b9d253e0bc7a79235a7ff8ee7113606e686f0b58b27e4ee4c89fd874e53d61
Date: Wed, 14 Aug 2024 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723602953
