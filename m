Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F97730D41D
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 22:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783549114; cv=none; b=DR2jtfNON9Rd3DT+S16lFhkECSUWCw8L7J7ZOo3/bd+NMzxshtqvMa+UY6D5v8ctXyH8W5xpIr4QMgACTrj+fC8e1RjZGLPaknUbcovovnSD1r+Y/05YHWUaTiWx6L5GAvVnCw9hTg/im3iYuoNWpkUYxkiIB/Ni9sCpduihrts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783549114; c=relaxed/simple;
	bh=h9I4oBjW7CeR+etrpKEiP+mAQ5e1aNacKd/SY3ety9c=;
	h=To:Subject:From:Message-Id:Date; b=g2lttmnB4bK+ZnRScm59zApIbp7AMjsP5SPtspedjhxlSA6Sugy4EVkbboMrI+rglmqai6uhnEdRPiSL3qNNdF2K+Jqiz3EeQMz6W3bIZMHqRfjDlN5nb4d32pd8BOOA3pxJezpGCfahQb0szeu7lgW11lTrMsTxDU1pfVERHEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bnmWHG3E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bnmWHG3E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C977DC2BCB3
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 22:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783549113;
	bh=h9I4oBjW7CeR+etrpKEiP+mAQ5e1aNacKd/SY3ety9c=;
	h=To:Subject:From:Date:From;
	b=bnmWHG3EhtHB8tNDFCXPXCRrRAk59RC62q5ubbDVjOyMvEaW1uM62A7wTTsRetoIM
	 DLrZyyQKNd7tkkSQxxQf9+wl++r5+/D5pJUX2/RYcDm0TW2bmGHFTebmLNgoe17Pk/
	 DGs8XBUMkzxxJ7KY3hGNElny47wCCnNuMvS+mkJXWhrokrDQrp3zPOyUEiHlCNS9Hk
	 e03SEhWEFnqYSX50gHrA7W4uw2B2JuvQxjbMWGZTDrQoC8tPw+eSKMA6XRAFMOsJtU
	 dL+H2Y6HsRTddDZ8GzAGXmLdfWXRV7MUs0ikQ8sJfpUQYa4ue7u8kkYgpmwxEyOn/W
	 DF3UfPf3bJdmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7FA8C43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 22:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178354911368.6396.879095057912541985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 669ce62f11d72864059545d80de67fd2cc7998211cf131c50c603d5404bde053
Date: Wed, 08 Jul 2026 22:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783549113
