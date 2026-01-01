Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B452A930
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 16:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767285234; cv=none; b=E8Id67OaHszorLuTy077oB8jmLpxw9Hno12RPVV/31PhyjvCTA07X5qXA4V0wlbCOfT9g07JASQrNLM2aPgG1tw6OzGd4wdGeXvuafXhNjP9AB8W97dMdMaHqjHDakT7bUkQap46Q0eEDpXDaCD5JriwBZYfC51QsyTh/N8H2Og=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767285234; c=relaxed/simple;
	bh=tG8Sj9DMd/029/dazNL5IMDfaV22OWm3zC8R4GjDRDY=;
	h=To:Subject:From:Message-Id:Date; b=izHvYEs62avvsNFGbZwp3O1odxuYAGVkBOH8mmCMs9E8wQ9e9d8aEx1zpf1T8ExQCuBNlKffvb8A2Jo/f69e4MYlgK6Ohhd372VBq5sCJSPE2UErakQ2T4ELKKPZx4Dl3GARp17RU1ccheAvhdBET0/GFNS6JYAkVWuaREcHIzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o1Ox7dXF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o1Ox7dXF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0436C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 16:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767285233;
	bh=tG8Sj9DMd/029/dazNL5IMDfaV22OWm3zC8R4GjDRDY=;
	h=To:Subject:From:Date:From;
	b=o1Ox7dXFBuB1n6CBPO+llFO1m32jhGz5hccjyhi5W4/DavQBnkDR2IMARgIcUnEHe
	 GRF3shV+7GIZMDQPpxEHuucOnZdY4A9e2kbEsCyNrsDlDiMTLTiyQYztJra9MRS2p3
	 njEzBqVJlv0zfVOjexo0OOPMyDJC0kbg8TL/8Ukm8dSlR0GWnvwctsabeVqMVvlAhH
	 ZGMScBpvtbukxgV+r5CYCm+Yc1V9Mfz/A7wyZJ0NyzavtvKhuOwWMR+yQtj3FRSGb0
	 m/CpGeIlaGZnTB2D1oudstwgCA7SPukLqCm6E5KiAXD+CumLvq8ecI+PnstfFYMxR8
	 EqJk3nVzEDaxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECCCEEB57C
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 16:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176728523357.32302.2553366371041355448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 806ab8fa0154202a1085d098863421ed75669bad2e595682b9cf8160915b6543
Date: Thu, 01 Jan 2026 16:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767285233
