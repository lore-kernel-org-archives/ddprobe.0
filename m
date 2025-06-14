Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21EAA1DF754
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749934194; cv=none; b=C4vTDcUtcYF+LMP/x9/3rl8vHvq9vLMuD31Nosz6pO3M0bq5o0jZMOL1FRAQ8MXwaEJSG3CKlpqtV+LgtMWvJ6gZWCMYxIKdmjlCK2MW2ILooaiOdRy9BUH1cyKUObUFVrXghYBkF1QpSTezDr04AvVpLESfyZQQpJ2Gj5rwRek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749934194; c=relaxed/simple;
	bh=S2dbcimmCx82tgt/vfjnsh8FZ3BOM0rZZKbO27ItAFs=;
	h=To:Subject:From:Message-Id:Date; b=qcQ3GOqef3RbByuEfVagi/sewlxdLGTDkrxL2MU4rXMSmJ9/8Qtzb9cdbn7Xv1+4S6jirie7yKERwnmSIrW4TXF1dA24VNoBZ54T39oMiyOAc8KeMMzmnGWa852mA5KXGrirq6593rlImjf01qA2HPAT1W+ByrA07G9y3OSpNVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M4aGb01e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M4aGb01e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF33AC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749934193;
	bh=S2dbcimmCx82tgt/vfjnsh8FZ3BOM0rZZKbO27ItAFs=;
	h=To:Subject:From:Date:From;
	b=M4aGb01eLJRvQmumwkU0f5Pt+b70jczUPCFjWsQ4VjG9ydH/MTGFy+gmLovOPk3zE
	 tLvsii4q6sIuU94PNGFGhkzPDwwWp+gJZVaBdfj/XGE54rixaFL+wAoEQ1YXBQ50Mt
	 2pW/YQItsfci8H7X8easHJdEKWofrRECNNB1Ng2HkiLnOFsVpud7QnVzXi7c6stdgD
	 sEXTX9VQYcvuawcIDkIHpwMj+JQPBtMhOzHVUGZ7hZpODPCu6xdtgCzm0SEg+UgKtj
	 ZpBc5JMI4ME2SccdXMHdi3G54IliBd1m+C1dyRDBbwZ2efqtP7TJ3DsChqpXAYTmMF
	 CoJiQxChMEtyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 971DDC71135
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174993419358.23521.12827623791060615036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c7ae8a4765648d6420fd22351c0b9fa9f486f66e9118e10bd2b7057ad1999df
Date: Sat, 14 Jun 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749934193
