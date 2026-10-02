Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55F3C3E316B
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 21:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790976634; cv=none; b=lURCz602LwLNt8mRYF2Mq4pNSdIZeCQueG9ZaxlGXmJ3X3+EHlNNwWIR0KGnZlk4x4gxI5fUrp6tM8Y9CCTtOO1E8hWGF6tzDtS34fuhRUCtKocWiAAu6M4j4dZ4/tUEER/jTVArAKDXmimmrVAXfVUIAD9FrgVzu9BmVKUB++A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790976634; c=relaxed/simple;
	bh=8OErmOXF+sE6jPwWT027mswvkqh7jUUbc9Si9QVdOOo=;
	h=To:Subject:From:Message-Id:Date; b=ZiCRqVSF7BrLE/nSDp04DbAzDr85RYIf+Tf8o9h4XzVqi7pz0DbycNatnG+UIzf5cbGfZTCxqCJSQfdTueHckmiA7MfqQlLkIoldmT/Vht7Gl/BLinE7CPygPREquPTIGCtImRTPCTGdsKZML5A5niMBXQ6/srYaLztLfPsi8wM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XZCMRJFx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XZCMRJFx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D340BC2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790976633;
	bh=8OErmOXF+sE6jPwWT027mswvkqh7jUUbc9Si9QVdOOo=;
	h=To:Subject:From:Date:From;
	b=XZCMRJFxlJO14STLj3epY+64mFhT03A0DLRCTs37Lbu+a4S49xkqwkmhkDJSLgLSF
	 8LBRUNM2U1kQu8kfwl8piKK67NVBgDVCaJWlVj20RTfHIfXQeyhG+6SyM3rE4ccJIS
	 rWyh4sPIWHgJTveBR8G2JhTURCT9/6k9H7YglCLnrNGAfk9/91GjeFarLwCJkENQB/
	 oWHU88tRX4rV7zpFvSrfh602AvSrytvieSuSTDSf6f2xJ5AVOKdZEogFfju9aUEoRA
	 AB122COlDjgNu3iJaY99Ms08sLJs6OR8odH44fGt2+eHeAVYAg7h1j7rYn0ILNmFWa
	 FSHU5ZMf92/xA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0740CA5FDD
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179097663368.1585.6592670050261032315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81424d2b951881b7086b5372883a9ca433d7e1766a86a236e3ee0eb5b7837326
Date: Fri, 02 Oct 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790976633
