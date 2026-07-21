Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4226C46DFFF
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 17:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784656714; cv=none; b=BXT9nibAH5XkQ3tIk/NGYohOCuZedYVGTST9aLHPgxxrEXY/W9+8EvogCBLIL7NzG/ZDpZ6zi6dAqg2L+1U0ihairPhwfwyK3xfJ1GCyqVV7wI1WU6Icp1oWmtB2h4HbrgViALocil/PimpLxFmoqYMmQGyXaKsVtjqgqW7ogFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784656714; c=relaxed/simple;
	bh=/u8tBI9niMQilu3I/c4bWi86ROOIJiXiBbw03oFSvmE=;
	h=To:Subject:From:Message-Id:Date; b=sIuv00oGMgLRNbj0TwWZX6ZGev/XZ9fpATayMGACQzzlb0gLbsTGQSl8q2MqxMV7SBgPjX8BSBMZRJ9bHd1dYNI1I1OMGqvC3VD6he9GH2bVE0UkBamFJVBAMLMxc/YwUDKLpdioacOaRzS9wgzhz4jplST08snyURptKnc/ouU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V8D6KiSJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V8D6KiSJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D11A4C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 17:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784656713;
	bh=/u8tBI9niMQilu3I/c4bWi86ROOIJiXiBbw03oFSvmE=;
	h=To:Subject:From:Date:From;
	b=V8D6KiSJ55Rs4aTiCQcaoZDK2LFZPiKKSdyzmG7D3HudPVe4pROfiw8VfrcUJ+el8
	 +iVoCNxFXgifON4GCW/qQQ89xc+GTdogurMcYWOoSd3Cirl8wge+aDiHCdAnGFbTRO
	 iSfgm89ZgPxLJYVd7v9KlllQl6BtK46NEHguSypUpJXzBdnBNSqboUtIbfS/7gf2TN
	 NjhCcB2ALzthYOWB9KVf+2JjKC0P4/xya4FjbgleYTRhaFwMo9nj6h2lSJX7xeuOUT
	 eb6nmHcxOsCWdoC+aPk7a9AFL6SpqQHXnns63BHs1p+IYNTrU2eNWGSz/1mv877AfN
	 UPnk1eD1j2fXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD27EC4452B
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 17:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178465671368.14035.7374900578432300856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec78d0b1c2daa0d2983f5c24b80953768d9ca113e282a995d46b44dff703b51a
Date: Tue, 21 Jul 2026 17:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784656713
