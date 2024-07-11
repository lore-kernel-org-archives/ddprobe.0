Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 389CA16CD1F
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 19:37:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720726643; cv=none; b=OHAQT+fHs1SkPx96eqClmPFP+B9M0A96PAZ0FuYvZQcyCAnZ5Y0elB+vvu6Cz8nT9HB9cHxDNoZKUoVuAxEm2/WNYMbWmta1j+YCNBrpzDWFJfSC+LQ7dpwtjuEnSVO2eP6IJnjM4LVmkv3lw+guA3USSPoxCeDgyKv7ijGfcXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720726643; c=relaxed/simple;
	bh=JovBQaBwyYaBg5GYn/2gdYEQfmnTlZrie3xcDncejNw=;
	h=To:Subject:From:Message-Id:Date; b=cyDudyOf4qXjkBa/1Fsp3jMEyBrU/nT3U1p+WTmSyAOtyGQhDwKtcDsbomkzAULWsP8W8xyG3YH2EwwU2ujvri8f7avI+huJCBozQluypgrLrl4FsGwJuvaYJVc9j0Z7QNog7OfioLylKfy6dThAWH2PeZTWaRo8as0xJwTqsBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aQs5de8w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aQs5de8w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4940C116B1
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 19:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720726642;
	bh=JovBQaBwyYaBg5GYn/2gdYEQfmnTlZrie3xcDncejNw=;
	h=To:Subject:From:Date:From;
	b=aQs5de8wEKRATvW5ESEFncVjUUxFpK8zWTp9xdIjcOIFwZxYHqmuhqPwCE1A8bbi+
	 MBieSTiyN3WP4j9oSM8KyiYL7lVPQd513Rt8toDYPKjaF1h5RxYOoZ9pYwDv43i1t/
	 fWcS9Ir49Hc7nQtcckdlLMPCpQlcJcPpZ+menF/Pqgpw/vajijyLs1Jpul+UTAWDak
	 l5lGBAZnST9/PdNuC/wiBGMFv/lTl6vJe2FGsMMXK+ulxVfLgzyxbOl3NiEcKxUz63
	 IX9xRlNR30cLIAOJYQlqu7FQjq5fwV3W9jLJQcWMXH8P4dYWQb/nM4b8os2wEkdVPe
	 +c8osrklL7mPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C32C1C3DA4B
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 19:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172072664278.23559.2983472573482655134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db999b56f012f642d0899b22dfb47cdb72e9f93e0cdeac4441fb0c6bd47a825b
Date: Thu, 11 Jul 2024 19:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720726642
