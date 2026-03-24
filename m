Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 043FF20D4FF
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 23:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774394094; cv=none; b=YHE5kxYEXpWM3fKSSGyl4SKoK24fsWmRw2Y/xK/aMIr/xUYW6j2pQfKJe93COHwHndALfVvhPX6Aubj/419U3YfFm4T4m4Nww3pMku9bBveILLHUIj4Hzmldmgsf9Ym1CnU+AKABsaV0ZrQ08glP9zDzJXlHm/tP2mFSqNInrYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774394094; c=relaxed/simple;
	bh=E8gc21X0PmMLzKUTgAfOz/JVJFPwve0Bu3rkULt02fg=;
	h=To:Subject:From:Message-Id:Date; b=LFWeBY3GkdvHqTQhDBfOprpsFndYbaybM9T/aWXrDMPfZKUHq2Y+/xsnI//k7akMyLzb1xNwYbizt+CSJ++T6eH/gv9Ip62ai0pc3UbSPf6hnqpNvc1PnWixFjse1O47aq/o3u73gNvkNdhF2eiSuPUn5w/B2fOu45Wrc/cF+9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jgcRxCo3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jgcRxCo3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD5D3C19424
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 23:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774394093;
	bh=E8gc21X0PmMLzKUTgAfOz/JVJFPwve0Bu3rkULt02fg=;
	h=To:Subject:From:Date:From;
	b=jgcRxCo3br/JeRZmJk5fj+wooVvnZbWC6NDo+pxw8rFejLEq/bRXtMUXc9v8kyLNp
	 HvMmpnoQjF/r/OuzWd2kVd1dYK0zi0DDViU4oAf/gRAfH63klDCKDH/t12NhAPzZTn
	 LrEG9KBnEKwrMu+xqboUFQeRfveJD1kvLceRBBr+2MublVADKQQLmfRUfzeDK6uSor
	 8fJ3t2sSCtbZeqi+6v9QtC+EDDiuDDb7iKz1sdpdFdpdtGeUJjxdi2dzvRv8KBDzkv
	 p1pQwGls2UJHpOv1hqGv3nzHprpIWyDX2rGxAD6040cFRXPPvP3E5usGSEH9wDgGsC
	 FrzD8izSnI4dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D871F54AD6
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 23:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177439409363.4127.16104414496420473490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1d16f9cfcd4d2af639b3cda8e08c99b6a4fa3f6e3d39461de257df9b7f101a1
Date: Tue, 24 Mar 2026 23:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774394093
