Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D8E854F95
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732310754; cv=none; b=Z9qqPYm35nb2IcYDPlUcP++jb3DA8WG4Wllk1ArueSY8y9aIitI0+Cpe9zc7tde7/uZ7dHgW1Mg6VnitUe0TTsCKUuqWu+60uKV7HL0AZt7m+Xi9SlAjVfyjrBR3vbiSsGSZcG8zG4DYiCISEV21OYxoFnRIjPqNn3eC33vW+vI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732310754; c=relaxed/simple;
	bh=CtTc58RlXZNqfRFviW58yUSFSSO5Y85am9WN/mWstMk=;
	h=To:Subject:From:Message-Id:Date; b=r/TKY9tiK82i4hFjUaULUta8MoLkw6CYYDxtLWTEixu2UTccqChNxrVcXwmE56Zt0jJJ8rczqJtJxpW4uMXL5HQv9ypWHhNREqXpNbbcRwWZNH4izWaEfWiSOojNaJYQZ7RazwPVgNlLIFcE5V1diyJWjo67iOIiRVpqhYFMfkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jz14acAm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jz14acAm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADA28C4CECE
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732310753;
	bh=CtTc58RlXZNqfRFviW58yUSFSSO5Y85am9WN/mWstMk=;
	h=To:Subject:From:Date:From;
	b=Jz14acAmThk2120E2gsJTCHV9VcozAS/0F929Kimc3w4J7iXSOwlBJ5hM+x1vwDJD
	 aB3QviHmK5FxX+Vo2DnBVlIx6Bw9/TbnFZ1VAno0ysLu5F4tEvaGM7CsoD+iCPyZp0
	 yi0rmTMBA5YBkMWu9vfOoSAex+ZRdg5ZGmUyfdaFyQVJLIIWBU/aKanGgd4OUwYdu+
	 9KGGwoymKvgbxydybOI7bT1A7tnwE9VKZbN6/UMSew8DIRCaisTKdkngToan/yJSOk
	 bXXkYo+CwHxkmGaVbhvIVUi9fARocknofMw79dPcNOTzaEdX5Sruj4j8bJF1Qrrx4F
	 0tmMuXRI9YlrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99BCCE69191
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173231075362.26597.10106816230228839260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7325217df1c4ce8466a55041ce2fe1d85e620ca64f284a0ed7289155daeab30
Date: Fri, 22 Nov 2024 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732310753
