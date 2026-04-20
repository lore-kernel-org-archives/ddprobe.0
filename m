Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4444D36B06D
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 14:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776694054; cv=none; b=dSHLpz2wo6poZwNt8WO30i0rNrsnVaLLOCXbCV++EolGrbwWK+AxXoPYx5txFYk6dsDeu8XHjIYiJ2H1tjTEyzTPnnesI4GMMYj3qs6mT3nhxFc6Elb4lHd+kcuyDfw+GcB/l2HIhQf241tuuJ0lboQGId0Wt6GP96iCoxth0SE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776694054; c=relaxed/simple;
	bh=wcjO8grCZMgE9nz0wfxBzugK0N0+QSHZANuct0mlDhY=;
	h=To:Subject:From:Message-Id:Date; b=tjynopYung50/PwUjZTCcB2Z3aqrWSftYjyYK0mCgvradRSdWVM/8S/x6e71hI2uaV+zYXG+HQxKWOqDu9B+YadUV+nja0YLAW6O52F1TrNXnSpoOUz24Q++tQHcdmfr7VZ2xJlA5r4FuOsFnBi/HVd068rwNRqp+XpQSidleg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VDScoYng; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VDScoYng"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE31EC19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 14:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776694053;
	bh=wcjO8grCZMgE9nz0wfxBzugK0N0+QSHZANuct0mlDhY=;
	h=To:Subject:From:Date:From;
	b=VDScoYngL2U2V+fRMbfJUegADNfmh7a3DWwFOpmwN6j+um1U8J44XEEOKgvPnuB9+
	 1JkqOTBbRj6Hs1/UpzOtkdbvv5zwZaJ8MWVJ8My11kF5wjWsm82H9Ii1+Gat80Pmhu
	 pCI+Tjclke2Z4qNXdztkyw1V/0/+YseVBTDCPrCjmcanZyJ2CAhNi3DYn6eilwvPRV
	 0FmncpstF7a0rwxfxlskQIyfFvHW/MX0mFOjnetZ7iBgXOj33BzjhLm1cnmJSjxAdY
	 PzTOCm0UtF70Gy+YBamiRhLCuwJneKBmORhxmSFdZnDZmCW0L2glbXPyhxRWZkA1BY
	 aOxlBZWURPv5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB16AF588CA
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 14:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177669405369.20048.8287868648001179115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 192c3e3d1c64433869ff98e0d42def083290a79d017ed50ab598da0a1c594983
Date: Mon, 20 Apr 2026 14:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776694053
