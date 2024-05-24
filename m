Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13FA51CFB2
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 19:33:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716579203; cv=none; b=f3qvm7nwHxjBEL0CHoqb9pYUBv9caAWbBaj8rTCGpvgFwH2wC+u+t+yOFdy442+7NviSlLWzOZp7+vYOZ3UJV80bL9jtZBio8SO6fqjqbQpSSmAhGKHwJxNXAf+TRUJS/TBPaADkRN2KZSUjP8bZF6wlMsshfONW/Ezy25MPdu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716579203; c=relaxed/simple;
	bh=+k/jzDcxySZaToDqv1VweOTmI5nl+mFWg6oVD1/0gt8=;
	h=To:Subject:From:Message-Id:Date; b=R4l49mBvNIwotdPzRAqFxo6yO5sR6wuf/cjaf9aU+141wXvsrsnS0ht5DkHKe8uKtapQfH1E/JavPmsDvRbtKqbNOnu686ikarEfBs8lPoDx3hcOP6aNFRZUYPDvom2a2I1blKr4jWEX/Cbug7svll5vtxDHK7Vr8sPvUvesxPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WkSFz2BI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WkSFz2BI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D49C8C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 19:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716579202;
	bh=+k/jzDcxySZaToDqv1VweOTmI5nl+mFWg6oVD1/0gt8=;
	h=To:Subject:From:Date:From;
	b=WkSFz2BIrSPJus/TP6SicBXb7EvVIZaa3BiI3FF7lLblf/0XSl6h2g9uxmtiT4do0
	 LNansKw+HYzBMst9eqnFxMCEHPAc0xXMaCQgEZtcsrnTOihuD1x+RuckVipuMIheDl
	 8+SwTTndRJCglEaX7NOb7xUxvRxYzEPu0RrLmS4EWPmRfZGbut3KSGORckS/YVcCcX
	 7XMdwU8vTGHiP9QY3Mlo0k4DvCw+g2GfmIX8QnAI7vAP/vGeU2avemjtWF9Kr2og1y
	 VGyrYEsl5CND+Tfks+3ZrqFA1IJrpvkFcvuISsVA1arE7myHlXN4/QS2/dglPSrsBY
	 pUri/GYYG4YcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF43CC25B74
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 19:33:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171657920277.5178.13713357150357103048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e87958b86cd4300fe8f7672ee6581f3c9f8e220e69a3e54a44f92c451e9a972
Date: Fri, 24 May 2024 19:33:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716579202
