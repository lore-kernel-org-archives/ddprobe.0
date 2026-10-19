Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CF2D78F3A
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 02:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792378234; cv=none; b=B/hu9kaaGVcn/Vo9AWihf1GqjPSBUQ8QHm0R0572DOgA4yhSJ7UqgAgteBxsJWXPfVGNrbXf0Z/JLiQl4QHEpG2o/9bnOanEH8yyG5aW0Xso7LquRx79zfCY1IyGiuvIzjdEFj5krjwVO4E5iQ2waDOiZc3MFAslEXzu7QdH+5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792378234; c=relaxed/simple;
	bh=ZFli+6ksuYx6peii4D7Wk+JU5a80XF/MKeXRMxJTRHk=;
	h=To:Subject:From:Message-Id:Date; b=rwWGBV7TGYsJ9jXLIdW4KBz5/5fpu34xXDHb+RIhtURuCsM1Z55Mh8yRO98Z6RcO01tLBNIkA2pc8dKfyoJpsJLvZ7+pVh4miO1/8TGhCTJKHyaQ5A0FJrIfg8V+d1lrKmbvDP6NgXYo3xcZEp/LqwaRArKPhaWaM/N22AH/2Zo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mpdcTULN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mpdcTULN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED8CDC2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792378234;
	bh=ZFli+6ksuYx6peii4D7Wk+JU5a80XF/MKeXRMxJTRHk=;
	h=To:Subject:From:Date:From;
	b=mpdcTULNmykH8hIhNclOpFyt0Qo6cRnoefKe+9zPIVMHC96WYmUF+80/PkqJ7gsFJ
	 htER3U4fFOsqaSyfucakFcYuPeH85U2KRyEkTibOt/FuOT850K/tGA2L7R5z1Jh6Vv
	 aOnEbV4LSZc+TPebNcfeVoTx/KWGhDGdJtddj6uNoVpf5mMo9RuTSOVqadQd4IewiW
	 +7MlzBsjKWFaVS0p8uZFYZg1PY/xgnDXTT7efeftiuldA111tWqDxIEQy/bMZ+QMuA
	 bQ7SvoZfnVruSqtW9mDjbCGXBRfg3h4NMeFSGphchoug7Aa6p8xB4gdI4MLUZUuc7C
	 CFLOebQPp/mqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9176CCF2D4
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179237823374.7973.14592680475154317731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 682c9990cd5d0753e1ab37fe64736bcc83be8afff69a77deadc2e7be01016d2e
Date: Mon, 19 Oct 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792378233
