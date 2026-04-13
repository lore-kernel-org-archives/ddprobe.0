Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC76436074A
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 18:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776104853; cv=none; b=jXZjzDSmqulw3RgH/JpB+zWSfNgNjpAt0ndY0B23KKbXQsDk7HMT3Mt0zYYwD20n+o3/Ph8jAs89jtfuRhCQDScxGwugSJAspaBun2skBjRK36uGkvESnm5C0gzQc1ebl5icT2xBqmSb+XwmLtCMJVJfqMd8NV53vTQ7M1/D5bk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776104853; c=relaxed/simple;
	bh=kZ2rSAgkVlzh63nzT1IXmAaV2U77t6pRfzUdatB79Rc=;
	h=To:Subject:From:Message-Id:Date; b=Ruvtr3VywbI+yN/3v4eWURSijjLxHoucGWlU5A5MdIUmobRu69ITVH+jP/nfeuU1ax6SXovQkolN+uFCzMDiSj0EZhzfG3V37WD2dx9+ti/PzhKIRCT78NFbQx/nLkkwuXUA+4vHdup2xUHPRIVBMUluO4KxSm/AC+29JM6iJJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pw0D98Wd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pw0D98Wd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC631C2BCB6
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 18:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776104853;
	bh=kZ2rSAgkVlzh63nzT1IXmAaV2U77t6pRfzUdatB79Rc=;
	h=To:Subject:From:Date:From;
	b=Pw0D98WdP1OYJsSh0cVuTQtZ/0GWM1GLl+ABBSBYTvU1HwdJdKrS6+5cCh7HTMyQE
	 hD0k/QkDvuMUPtLHdDKm7WI2wBjM1BYYYDxxs8eUaKV5BwXx1T+WT2GWgTdiHPN69R
	 NFnCcjWCPiydr0qfVwKGBWE5WvYL0dG1TMRkfg4zVuAFvASewjR4Ntwkmn5Kjzot21
	 /GfXYbP2BtCCzZPCfahwrhs56OlD6lRxzhT0WUfaI8OXSR1WtHYN1GlN8GOvzjZcoy
	 pSWyldbOncpEDYnEkgOL+oJeWer+Amd6n6hfG6Y04bB7I397LvUAzapteUIxT6t8fQ
	 tLHHX4BPwHxwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD374F531C2
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 18:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177610485369.27441.12374658217927846463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6ace02e2a02b2e8be99f577b46fa921e791ad443f1509c61ffe837f4e432fee
Date: Mon, 13 Apr 2026 18:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776104853
