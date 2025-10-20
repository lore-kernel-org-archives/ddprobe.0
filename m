Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FC0A1D6BB
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760924994; cv=none; b=uw2dIT43ceRFmdVIOS9PiIlfkdOutL1dOvToeGtHPTLt6cMIz6+HaOaO9wfsPl5Y31eIaN57pEDofHFxPD3mXMp78r5lZdydiVhvQo6R+t5PL42Njthc0MFgfx3sRz+1DxwvpyXm4GAEvjxmuwPMkgsItdVqa+qjhtmvAQxZC5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760924994; c=relaxed/simple;
	bh=JIQy23w7rT1LIT3He2P5f5wuTu9pQF21Q6eLJmDbI5k=;
	h=To:Subject:From:Message-Id:Date; b=U9CFX33l8G304OSkRNg6zz0Q4HaJR/2dMRpwcW/3kJ8dRbtanEg2Lgvv0YaRE9PGT46D1UsuaUDbi2KhyB7kfJ6oN7Gjobug/fiMvoLRw02+yUe+AhJy6CMmCp+7OB2kfAzSZee7d8pWlLtkW7ky/e+XUejepyJIGPucUhA4CWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gweeqN3j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gweeqN3j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6473C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760924993;
	bh=JIQy23w7rT1LIT3He2P5f5wuTu9pQF21Q6eLJmDbI5k=;
	h=To:Subject:From:Date:From;
	b=gweeqN3jYrpbNC/QH2qlpxfH4fOWZTsybFHICFiMIFW/wGtRx4LGsmMW3lksINkwj
	 XfD4KJjDZ1bosE1EKPCKjRm6qrQq3UA918JCg9/y84wd9emHJemU7PxGVXqN37mBG+
	 /Pd3No9t7wBPzzomT8gmF7dwMK+awXXjGj5yCxJYOfb1sZVXSNVlM5XKqdPo3ybOgd
	 NM2CSoiDv48NE+JbNKFEfq1djr4njt3yLJq1uiM/1ZMol/E4RLtWYbyS44pmE25Lqu
	 SMb3HLP8EbjT+gu+AhHd8Ti1iaGu9uECBDd1QxG/1KMhKFNSF116fmOmCtZCO/I558
	 SInsiqrQFwuXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95088CCD195
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176092499357.17128.2726203533382861237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8cde229ff6e7f85048cbb858cb84edb1e92a3583927916b67d94ec178a11f1a
Date: Mon, 20 Oct 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760924993
