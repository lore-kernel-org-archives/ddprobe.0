Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E14A2E62BD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743764994; cv=none; b=Ctj8jgUcoKXQYB+WgTUwxgQfMnDtlgwNd4RUdwTQypLqVh5NO0vv6XWYn7AX9tKWDbUlfdUYkVYnQTWwptC9rKqM2T3GBGJwPjMB2x8B6/gagZEk9mhSbHN0NVW5ypb9fOnecKwdj8MbfOAnzT9oRvlDK/UJW0R1/yWhatcReCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743764994; c=relaxed/simple;
	bh=KzGXKT6PGs1GbLGpHj/rxs/zdc+4xRp4PltkjL9lI5Y=;
	h=To:Subject:From:Message-Id:Date; b=pziZfCvDMRq05+oN+WMEgFPZwXv/0v3QM5ULV3JunLcg0yGfP/oS2nsdrwE9Nn5oYp3JnTXhKn3s70wefOJv9j7jVBcjWpBaAzaXxVZB7ZvW4i8apcy31cOjhYPjpteMRn+MiD4yEyNiSTKk/mpGp4tKR2EgiCihHvDHRitjBEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lkjkwVlt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lkjkwVlt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B590DC4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743764993;
	bh=KzGXKT6PGs1GbLGpHj/rxs/zdc+4xRp4PltkjL9lI5Y=;
	h=To:Subject:From:Date:From;
	b=lkjkwVltMs+v4PECOfN0A2NOIs42/JPDqhacsmTkXwhfpZUdZI4T/6com+5kNQrVA
	 BpIfHjYpv14mJS17ut+Cv5ga7wWfyIfXmX96gDOnJUDOpXdSSG51H8BKS+0s82Wluo
	 yFMbjMjD2DaeYQ9Z1zA4HRNs2yqMOjNonJKKjZMYtsPbbts3IYq6kHwaofoh9dUhRk
	 llLq4Ug5qM55at+rJ/ybk4NkD1OtgF9AztcigwwkudfOBXmQh01O9K+2dRAST7tVNb
	 01LZy7Gk8v2oIrIT0cd89LaOKiDmyynIU5mK0NixD/AmKnBdfXWI3qXA1/HezY1tSg
	 HAfeaImgZEAcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A25ABC36010
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174376499363.25525.3472763345245515380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c198b9894e0c6d907627bc76c8dd9f6a3a9319c1860ed45244f0107dea34e17
Date: Fri, 04 Apr 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743764993
