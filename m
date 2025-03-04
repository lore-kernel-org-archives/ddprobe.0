Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EF911FCF60
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 10:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741085934; cv=none; b=n4rsjgm/xbNhs4WGzXVQvMQltOjVl5wj44KXUfAjrlkTpUwuV3Q6iZjK95SDHIuL3CDUUpxeVx3EA3vgJUgPSWGAClydPOE6VBgf12eisfoq6zHD+qNCbugNQ3Wz51fpeK6VUqGob/tEtBpN55qhg97S2o03IqRHQ7oaiorZW04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741085934; c=relaxed/simple;
	bh=lBC1IM1BLzMG+KMcJM0t79ac9OF0OrmDmeLCfkOxnCg=;
	h=To:Subject:From:Message-Id:Date; b=QRdgqT4jzkXghVSajPWWMCl32gph8nqn8QKsZK5wF5r9pTiJlxYGrzq1Pae5avOlYbez5deEI/adJoMCEu+p3/p4gS1oQTV4ZzUhw1uCDoSmWkSE6U3apFMVBFnTgnLUVjkGBhpMiWcgbR+D2H9vpSWLMZd01TcXpS6b7OSAIKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W5EpTN8V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W5EpTN8V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B887BC4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 10:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741085933;
	bh=lBC1IM1BLzMG+KMcJM0t79ac9OF0OrmDmeLCfkOxnCg=;
	h=To:Subject:From:Date:From;
	b=W5EpTN8V5gySr7ivbLfsfdJSeojdSk91NP6oYYVSWAsvICfK3zPcOEccGr/O307xR
	 iOx/+7WqN4/eA60dwPYcGwg06FttHGs9htPUI22xlxJKyW2/tcXhCqn59XH2OJ/qpH
	 ehovsKa19XiNLgcF1ZGKf6OlJmiHgTsxclkQztrX4o+lggXLAXVnrn8qxA8seBvP1H
	 /YAI84/eJ7dQdV8O+IsDrVW7kfVvUfBgH+jCH6tK35fS9vPdSINGb/yeuyp2h8s6Fl
	 hzsytRheLZ74nZeYRdpKAsMFvIfsDT2f3jKV6kv4SSLqgSkCQ7wZb/klwxlQrlNbvr
	 V20mSsTAbUcNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A30C5C021B8
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 10:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174108593365.2936.4922954981936671341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab2d00b6e44f4989c3cfe44db0fbfe4ce078fa89dfe8067790608d07fdf6d0fb
Date: Tue, 04 Mar 2025 10:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741085933
