Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2892540D594
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 00:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781828194; cv=none; b=Z6kZTI3fqV//oXOhG+KBgr+q/Inpf3i+zrNtVECxzsvSHXvudOEruo9sElxakU6dRj1JmOQ6leqG2ZaJnl/FJySrmeqIGDSV2lVEt2k4bBd8GT58stJuXegTur9wNn623DwgNwrbjbB/fV4Nh8J3jr2icraa7RPd6P7ujQAmIt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781828194; c=relaxed/simple;
	bh=8TDEDr93smEp/SJBqW5MSE2inze4N44MZOP1awqASro=;
	h=To:Subject:From:Message-Id:Date; b=DtPhcGYY5kZI57+dgEvxmdzWVI01S4xOMcNsYKP6NJ4gZsoKKB7yz+75xT2LHXU0WmBFGSQRt2iO+4DquqE2/cSSrgwboXXBAU7fwV3TxWAAs8BNUxIKiz+ct6wq51NBdu1ks04qplzB0+7jF+7uPtAj3euuE7VksdTJ7YkUhuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NKqenHhf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NKqenHhf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7848C2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 00:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781828193;
	bh=8TDEDr93smEp/SJBqW5MSE2inze4N44MZOP1awqASro=;
	h=To:Subject:From:Date:From;
	b=NKqenHhf7a0uBQ9zvuaecx6oEOYbqbNS5Sq7bmExSj8DI+MPWzSFPYJLSxIv+D0jD
	 vr7QsXbJiNeRwR6VRhg+FPkXh5kSAMqOXOcVIuSLUPonyTPDFvnB7HDME3K8WkJUv0
	 IcuLM1fkDO5WOihXfi1GmoMuGQjigFg40v8w3bXlvCtzCrgkgrJ/x1lmeOus00FagF
	 NWTxE8E0y8lGRye68zppNE0GQAIWmBbDvo7kz6Ce5RVaGdXuHkwLGl2TrDUBDAl6PW
	 +bGOq9R09lcAylgCcfAFfvNh00tkRzy/aGQ69f3fGlfRpNGqlMHtJ7t9p0aqjH/okS
	 b2um7fLQWSOfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4D28CD98F0
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 00:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178182819370.4997.7763414589068326768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9b0239dbd93f481ccff8f5d4916658d0e37399ed3a6824215b41ddf1d9b8b9d
Date: Fri, 19 Jun 2026 00:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781828193
