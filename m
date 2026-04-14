Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5BBD387566
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 21:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776203854; cv=none; b=a80lWRfDktNrcNMAZItgml0e3m7e02P2c9fB+IK7Qdrk3AKc2OqgbqMtYSOvSNUdIZkF1pISCpcb1WZcQahVaoHI2MDeIZxNrGdkTWH54uwYzBhd7Kw7KKPQYYOE50cQMNnpg/pVBvbkNhe22amVy98uk8J1KWqo8QOWws7DcZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776203854; c=relaxed/simple;
	bh=1Ai2Kn2PF/Hy315gw+EgrBCyqsv/Nf8isb0B9Ka9xyU=;
	h=To:Subject:From:Message-Id:Date; b=Rn2m4BILWE97A+v4TtVEUjv0hyF7XXKJvHrZ05y9Wla432L15U9nZzKfvsRu2QRG9IPoSYiDKProqA/QZgH/1XjoPwqHekmREl7hr9QFgtcvAIFUj9jA9NCkN4J2q6Xug+oGD3YlMfMG5n9bLzd4v/MAYtDjU5pTXH0ob91rVMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lqChitb0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lqChitb0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4685C19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 21:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776203853;
	bh=1Ai2Kn2PF/Hy315gw+EgrBCyqsv/Nf8isb0B9Ka9xyU=;
	h=To:Subject:From:Date:From;
	b=lqChitb0ZQqCPrRYMZ9dzQYZLvphTFJCocN1Rfq0Q3BDn4895YmwuIe4+w1RLmsau
	 UKq8PJxcfAr2EzgTXtpImqUL6Qcm6I+vD41dzQ2fwPxam+FCAyPJo9f2L7L4nKYKVd
	 rRJGg8v3sLTbeGHJvi5/RHDVgnBFO0VDUzs2qWzmzrS85P25lmvzDoUyUwI+aQYSAq
	 ZCld2nowboJgtOyxzZC0v/P9FLCy3SRFM3LtZSlR049p6Vr49MdLQlJDP34rDDUJtu
	 9rcpy2L7rdvMHYjPJycwhr+5QHwZnOLBLM5+3qZ18tsg8dCc+TdQ523xYhw0YnVmcA
	 1hV78tYBXzw4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD5AF9D0FB
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 21:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177620385368.25790.3574742549910974025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5b617c83b3f995142fa6f884e654a12d25dbe6ed4f672d227f5c8a806bc1f62
Date: Tue, 14 Apr 2026 21:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776203853
