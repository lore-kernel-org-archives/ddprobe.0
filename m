Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FB743218BA
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 22:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786832434; cv=none; b=ALPxQdmlC/rqxrOEy1YWqnKbS6852dpPJUmgjwRV2tOLUBqryRN568FxVijK4hRXA+TUlKqlTF1hO0V+ctyO/a6/xoM48EWJKyxF2tKPljSMpnIfncEIzPzoBkz+NAu9WqMT7/tpVzYefTYeQt1xW4JtQce5TctoYJKaD2RPnoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786832434; c=relaxed/simple;
	bh=4H5DKriWL5MjRy9IBhdeAQiWkYS22SpeB3E2qdBVLtg=;
	h=To:Subject:From:Message-Id:Date; b=LJQh12+MEjXic1qIQm4nZcSi5/Nxa2PsgDsEC05mqreIrSCCYu9n9iTO63FZt8OUPOA4abjTnbfxdoPf/ZebcM2uYgPz4ZCr1hd/Usl0EZshEgg3ISAsOv88GN402OJ/hAQEx7Y/CnuCmA0qaO5dzVf7HBPGhY4tv2ZuIYj/dSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YSR1sV5o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YSR1sV5o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5FA6C2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786832433;
	bh=4H5DKriWL5MjRy9IBhdeAQiWkYS22SpeB3E2qdBVLtg=;
	h=To:Subject:From:Date:From;
	b=YSR1sV5oyjmobbIoFqYBIAzzCNL6aKvi1CETIFo8t9vjhrYwEokIdB2IjYp4hhSte
	 OEQ8Nfl3/nbPmV6J6xCGqAsFiqrhIeUg07tK8/WlGLjXJe2k+l9eh1owiMJ8+3Jq7n
	 FERhqyLOkZz6lfgyssdPJ/wk8soCMJRht2IPddBySkepFi/Xa8ueVEN1ZeehWeN7MO
	 PVkg1vrGHAuewng3mPSIH80PdcF3OxUj0fFdeLuMe6iJ3VUrekWL6CQ2xzRxq1hoE2
	 ExG0XnUyaX9ZAx/3G9/Wt/KVaqtwZJruphK4NRC5Vbbz3PEVM7kTkhpns/tn8WntJg
	 ENReSQrkI+Jmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE666C5CFC1
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178683243368.13070.2842814932492725352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9086b9d3c21a532ad025d647ade7813b634a2418d6b1c1f666d174396fa0121f
Date: Sat, 15 Aug 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786832433
