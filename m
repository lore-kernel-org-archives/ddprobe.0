Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E15283A14
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 16:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783182514; cv=none; b=K5lg/sJxXriKHEDed2SihCzBDsFAxqkhVwvqUt3vOOtm5XpB2DJyiclN3JyaulpRcDLiAgwXP+bqpZAqP/TAxulPMLgzCB7NY9ysaTQtUNYXnbguA20jSnDyXeE2yfajzgj2Xxv6R7ZeB9SbCx4nTSTNpgLI6sKBFQtwl5NY3wg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783182514; c=relaxed/simple;
	bh=Dr005Xax7YL47sZn5sHfyKrPJk8agOooglu1MWfX0Sc=;
	h=To:Subject:From:Message-Id:Date; b=NuwIZwq3lLYMDxJYl4AROkHaJ2Jrw7hqov029JYpb4W97oXP9KlCMcw9wD0pr7e4o72CY9w5CaeGHyV52SGRNJWCAjfTmXp9B3AyNOBa4ccWAFJJ56dkTl/D54NaVl60VUcUPMXX6p/JK3CWLOaK6BqhwrJVswR5uicVhcOB9AI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZG8kd+Tf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZG8kd+Tf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFF28C19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 16:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783182513;
	bh=Dr005Xax7YL47sZn5sHfyKrPJk8agOooglu1MWfX0Sc=;
	h=To:Subject:From:Date:From;
	b=ZG8kd+Tf9hhfMdqDmictxGui2NXkh3/woEEPBzocup06EgufWMpvcmegyrMyHx5AA
	 dEQSSoTqGYJVhVPdZ9rJ0cgZTMpQpVC+deKrKSvN5UaGdyl8DOcSrJ1TsakYKV8QBe
	 Yn3F36pnk4Rr0GNzd1tmra9cTAj4+P2LHsYlV3O/O1O819NVpBVkdF+yv89AjbsF/g
	 +2xyzJs8S1vaTTqjF7fssXT/qtrgLIiDn9tODB3y3IT2AnZtOF3NzF12Hv6/cJdus8
	 mfgNqdhDNn/++N6JAhoDLsBpRgQJvtmxbZ484d79pjKpS/GezuSsBe4Cy+AGMW4vQg
	 kZek6+pXDAb0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8AC7C43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 16:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178318251368.16154.5230805531538480084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3c122558eabb252cf0d8f8c504019e11b30bae65ccec48c6351c8500d286af3
Date: Sat, 04 Jul 2026 16:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783182513
