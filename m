Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39E7043E9C3
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 15:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782748114; cv=none; b=J7a5jfWJmqoBAKRk4RhHOHA8q3tLjJJWK4AHHDOM/ub0olcYwpClzWhmlRvghmCf93zlw92wY4fjiQkAGJR+V+O0VrxiZsmEqoP8AOIuLmvp7T5IS/Pi6XzmP/GvEhby0g8dJ7lZF0THokPSIzUAoT7+mUUgOTZSy9sBR0Cxhcs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782748114; c=relaxed/simple;
	bh=xIpngsDUQb2ooZ90pxuOJylePy7B9DxIIujUhZ/akAI=;
	h=To:Subject:From:Message-Id:Date; b=RgXBkOWF6QU84y4aX/0TwjIstbHjnZx3v1RudfzKQ+2tNQMc+zjEPCaCcqQnu3oupWiyW5TdyjSKx2bnWBp04WmHu+crHdWNu4pjEgi8D6x3ASMCwg004C+bb1xdwW+rVAN7jZeVJsyBDfsxm7QpI23kzyFFY4J9ciwOnFETYAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uLnddKaa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uLnddKaa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C12A4C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 15:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782748113;
	bh=xIpngsDUQb2ooZ90pxuOJylePy7B9DxIIujUhZ/akAI=;
	h=To:Subject:From:Date:From;
	b=uLnddKaaMOh9dyqisETD7Ab7HZwrrAFa4PYuF3WD4JmHSNuYTAZgeuy2sPV9cT68s
	 cdHrEEPHRWuhMSD7wp16zSdL1WRKVHt030aMw7sU5JtnXaRzanX4vJgbRFjGn3nmau
	 jKy5WRs/RdqiP/gJtDiQhGg5ib0QJxT1jlBe5rUNGItaXtcDJ5/S2M9yGKcftvsGj4
	 lY2uilliaFo4xeos+alrVJvozF21ub7vA5YDisaVhXNW/H9gyTjvu8bJLN70fGqqOn
	 9WnRCRnuZO3354MTQ8/8VJ31Hbm847erEPWsapTSA5ZvNC8XroyeejMdduNJoy/UmN
	 iI2izfETERsFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA242C43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 15:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178274811368.18247.14840550750193401308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8af1eea598a61cf4b27f392eba964912869a10cfd7d8099aaff48e89516ff71e
Date: Mon, 29 Jun 2026 15:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782748113
