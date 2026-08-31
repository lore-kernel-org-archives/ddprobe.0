Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38AE73B5F5D
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 16:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788192034; cv=none; b=vGUmsdvFnmSQesYIroBzhCxUE6s9vBP5+vACR+X+KgZdMsfUU1Y1MTVeVrxJ3JSipzOP6YSQ15tmtoN6z8G7OdELtQOPAdB6K9F+GV0mZWBwC+NLIgZGaDhIcunDaJpCsPeVQisYaxqyMA6q4/vl5h1FLOjRwVhg0FBlDuUCMn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788192034; c=relaxed/simple;
	bh=VPtJbnTgJcUYAH0apNDvLCVjxUhi8wfCinmCBuLXS6Q=;
	h=To:Subject:From:Message-Id:Date; b=TVIQd/nsdDW+ECvmHLopBgxuSFU4yvIkKZA1s7lcUr/yR+47ipEPsyTgzfdSa/5Xhp5Hrm5XwMTkgglKEkbIUiTjwc7ohWXiMoJI0hTXDPCS4nu7D7eFw2hQuyyLHABOj0NhA9s1FlWh795K2/kZ9lQKj9/NWwR0qk7ABbXF3VU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XYX+k0XS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XYX+k0XS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE8A9C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788192033;
	bh=VPtJbnTgJcUYAH0apNDvLCVjxUhi8wfCinmCBuLXS6Q=;
	h=To:Subject:From:Date:From;
	b=XYX+k0XStZ5HpaFCx+rq5TZx3Wt+Kqe5+tzpaSXaYiHtrIECdFstjz7IJe598RZPC
	 FFuggzp3A5yJlmf6vmrPgcvM9YWf02Cbzx4rqojWEssnRiH1JuFsnor12P6Wh0+MlZ
	 Jm22s9KwwppmBrs3GrJcPGapkPGbFsM/wk3RXvWTlbqWQBaEEqOFdhcLt/hIyxuLuh
	 Zj32n6/zQX7uAmaPXGXre1QFj5yVjGP/5XN4CaPGJvVD7YHhUptK+Oqr4aCT0QK6rw
	 gmEdZ7Kl2mWkmqg/cY7yNjawyv+/BLVYpZ5wziPCYx8x+7mkFv0AbpaIDdL7126xgK
	 aUpZMjTSpbnfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB01C624A4
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178819203368.19681.11565445118407454702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fddc94c340dab3eb11fece0634862f80cdfe0c03bb599a4394ad04471a7b07d5
Date: Mon, 31 Aug 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788192033
