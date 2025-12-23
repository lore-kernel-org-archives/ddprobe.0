Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20BBF19309C
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 23:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766531634; cv=none; b=GpeoYtNX2nDu9SNZSukJAx8wvW7pyMEcUlu0Um15NPInuckHyw/9LNrx7sueNHg5N0RS1CGgzayRzuxAba0a6MBGnZ+/FZrPmU0LtwN74BA/i50v/s/hHgLRV02eiKIBDMmUMZ5PkUuSIiRtvA/NQd2kPIXreVlhM65XaXrmhBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766531634; c=relaxed/simple;
	bh=2wXkLRpQfN3MFSSiB1b6j7zlBKNd/qF0AKdgFBRTYmg=;
	h=To:Subject:From:Message-Id:Date; b=JyGlcVtw00qaWMtFJErUqlqKcUojmIvR/G9mQkP4a8WdJxQDb/89ObsdsNefaVZiA0dM1r38vxClTrNRUsUIgUcfWHkVDGXM63L2dzYMne3sCY7EAjLkUZhmbvDmYx732hEAqymxDbMxIK7WPpC9rkGnOtgPtvZgpft+uUAEM0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KOgnwv5v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KOgnwv5v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0051C113D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 23:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766531633;
	bh=2wXkLRpQfN3MFSSiB1b6j7zlBKNd/qF0AKdgFBRTYmg=;
	h=To:Subject:From:Date:From;
	b=KOgnwv5vbcPgkAtl8/QK+WWEw1pGZM6e9a+FbtmwSGOADFW6YNfemWZPJEWh6A+SH
	 ThsLUo0FCJptFiVsLMtdC3DEIJ/M5SThvDgmQ78lXfFwVMS3vjgvxSfEWvEuOAaB5m
	 axpEQB4uoGln8y3PpEVKhjdzD9zSjP1z8GSl2pZHRVe5+DDc+ReQRZCFdgeh6t4R8r
	 k2myeKRyiG1+nv5CeWRt58HpZUt3P8lp/3XqyuawSB3jWV3rGcVRV1Qzkpn/5xcWCT
	 xaZieam8IF9vrClb3c1Rb6/UHw9kId2gXS5yNjLiFfLvJq7o1toy95KCfIjOE9iVKX
	 bxg/3rqm5X9DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA18E74900
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 23:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176653163357.31635.9001058667739128562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85e83d39fa58bc78b15c5aede6bd5dee827c1c4c8a15cd1cdddb2f82c4a2fd66
Date: Tue, 23 Dec 2025 23:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766531633
