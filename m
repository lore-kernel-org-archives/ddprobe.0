Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 313E63EE1C5
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 10:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778064454; cv=none; b=UoYfrCCID8F3ilqODi8KZpbTZH+4OrgBKP4oNOiAysTXYi5vmrT170lmqo59lw1qtVgEwLz0Omg7hC9CJAFSuOQA1i0fyK/pUxxtInhVAkkT0VcWCrYI6/2qRdy8giOBaGBKPhC5NV7da7hUQIfjRVyxLd86GLD0SD0rUEZOW5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778064454; c=relaxed/simple;
	bh=NtDlaxp6kg19CX15k2MnalyTiE6LNf5YPbLtp1bdNVc=;
	h=To:Subject:From:Message-Id:Date; b=YIPy9KPduFYbR0LZjZedm4Gyr6ahaFnRU/84EVf5xRfal0BU/vjaUHvqjHs42SCerhtVDQMnmLmR/Rd8FaIWlxglB8RCVl0xVbDGYDF63FKQGrnhw306988QwpNduralv8zAFPp5lQXG/Mdd50QtOpC+IUVL27H9x4mtwhDSsyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jyJVkRCr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jyJVkRCr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD9E6C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 10:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778064453;
	bh=NtDlaxp6kg19CX15k2MnalyTiE6LNf5YPbLtp1bdNVc=;
	h=To:Subject:From:Date:From;
	b=jyJVkRCrFxTlKsRRuBk6u8UqYMRiIUht10NwQyNSlHFA+C9DVu9VfthJv16lRb3DD
	 2UedNKljg2HbEN+iIdj/fpSe0EYOdwCz+xQJCJtUISed9xBf15pSjdBFuD3lZlaki3
	 8kRKTFLDEHJDIxOPxNL9FYQ7PbadxEgguJw/LO2VAzA+eR1HgVk9sKz6bANo2BRzoS
	 CmtmranMw5w5lVUHv6VRLRchL/fHPnr/55ylP9kzSEyuHcE656T+9nP/lEP/ZZGx1/
	 9xQyynopprbUbXiBoIrk8OnivV/XXx/jUkx71wJ+kzq+tKLIzp8FFOvIh69CgKEebk
	 biMI9Lu6GE/KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB3A4CD3436
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 10:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177806445369.15824.12893047634483053209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b87dd721a223ddd431b977c06286ca5ac66f9957ed64aca57bcb44a78cfdde4
Date: Wed, 06 May 2026 10:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778064453
