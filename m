Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42FFD54918
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748985596; cv=none; b=qwMeOgJKdKEfX67mLQIgmyr/JJgsj3vFKq4yq0blDiLm0tCtM7lokyNvihwCm8tr1aSj8spFGM05aaXcx6nphu2zMegVuhYb76UjEj6Z/Cq/qSElrnGIwAMQLO9AD0XquwmA+0SJiuY+oTU5y6SCbq9jvR7qOks+qT2xFedurL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748985596; c=relaxed/simple;
	bh=gL0ZYz9NGUc0MC6PHoOEpxvIPUPTyxnIXAt4lAcRAgs=;
	h=To:Subject:From:Message-Id:Date; b=WDPzg2nClgJAvU9y1g/BFx9GbJBhnMCpUoDzD28zor6L1SUQR5qV/0VXI6SozYz17t0TM1ukz5Z9UY/gZpVXy8MqR7NpsJrtFAD/bjChf70s9nvbBThXdpQFPIMifLTgPLH2WSQSgup8R7srDMHJiM0p8rcvBSPrhFLOl+pTG40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UYZ2EgEr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UYZ2EgEr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF66C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748985593;
	bh=gL0ZYz9NGUc0MC6PHoOEpxvIPUPTyxnIXAt4lAcRAgs=;
	h=To:Subject:From:Date:From;
	b=UYZ2EgErmOXYjSCBYRlAFC91xM7j/GnrtCxgzKR8qnH70GJYt7MeGkUzqa/acc7P2
	 qSjgApX/djdn6ga4Z9mJ9Wu1nRuxkhVoqeP1W79gLYciSTNOha5hkeuRDKxEX4fzms
	 9KZhJMAemFq00+9dFcRzYJDFGwAlLG/lMmk/YFUHCGxDaHD1Pc1LOMLBc3F90JaOcV
	 FqlkyFA3PAu8dl/E+8EaFNGAu7OoQz7G1CZYECI2MkSIQsxEYe5+PZCn5cBtuiFkeP
	 AqCOs02kasYHQoHwvAQc9hwtUg1LDmvFIawMw90dIscgWK3dpBojnfT5kQbxuk6kyD
	 RpOsSM0B1tRHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE2BC5AD49
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174898559357.18501.11371790091517003825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c81bf549f59e54fe63f267a998c86295f9388ee84f79db2db5409cf9bc3f8202
Date: Tue, 03 Jun 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748985593
