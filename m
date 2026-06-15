Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FA6330BB8D
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 05:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781501194; cv=none; b=C/lUGPAASRY8I+u7ImW8vaowHbhHUJQu4yw83t6OukuOK3iptcf3s5ZuYxjK69/3F7QLD8y4cvM07pHgGwSR1p6WHCq0sRH6CgQaJSW/ifR4wF4SHNoUFg8P3X6MOE5dji32LGnJLL2eOORLLy0Q1wNh6W9Uu4Z8ZECK011bTl8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781501194; c=relaxed/simple;
	bh=ogEiaXJG7BGCvN2JJA5lSxGqE6eVoX0FxcH+UN6OOAs=;
	h=To:Subject:From:Message-Id:Date; b=FAYe9w2oQqaxh+xBJOwLGQklL++dvNfH8+8TgmO7mvPzTxQN16qCS6ioIjpAzVbL553eVgn9tw1e5IEF35RxQoYnRgU5NzmaWNMl9kvuVag+xWs+5pbzOAzb3jT0RLVxeJ/0kD6pUAoMoti6+m9LinPGaACAt6f2qGyjBeFA4YA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tRE39FOg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tRE39FOg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFC51C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 05:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781501193;
	bh=ogEiaXJG7BGCvN2JJA5lSxGqE6eVoX0FxcH+UN6OOAs=;
	h=To:Subject:From:Date:From;
	b=tRE39FOg/6DV2B1PV1RuCBQuo/x6y5Ak5RVREM2EDciD+NWN5Q15mqtYSkx+n34rZ
	 mqazogo+nsmJvAC/9Ac2I1CjSqMgbEmufV4VouYLTYnIK/YZvX51eexX7Wc365IfAw
	 oL/izCHeyFESC3pLT4Hd0SfPbKmV1OPF1jHDKEPossM1s+eFva8BjOXfVFsGeMjB15
	 jK3yx4TyaviygTeti1WjRD6J1iBYQcNmwxZTH/gjWvzORj6eTGWLJDGEkR75CSskCi
	 mfAmdvx7UbO2mA7t5IAydqcMM3tneoHyd3O9B9xi8RdV8YU3SjfB9XBFYlQoA6PgSH
	 Io5gWz93xY8LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B245ACD98C5
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 05:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178150119371.5231.12435161478420455228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1dce0c6088afc1b6544f9b3ff46dbac5eb94091d569c8742e64e66e9a47155b
Date: Mon, 15 Jun 2026 05:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781501193
