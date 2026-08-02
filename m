Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B32E1DA57
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 12:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785673234; cv=none; b=XHCxtppjPUAYLnhgf5npR08mfpTshQbhM/AGd9AX38ATDA4etdOgN5b+UUIj/cIcBpyDnYDyCkk9nDiwWIZ42zuPJ6uS/Fj3iAd/ZIfD1rQ0tbIiQrUNCbWOeGT6W1/KI+fxC295THwCfy5LwPtVwx192gIjI0xxeM3BxB1eYfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785673234; c=relaxed/simple;
	bh=D02aROGq7CCOWo14UAP3g84eDWNAKYvvMJ/z0dHI7yY=;
	h=To:Subject:From:Message-Id:Date; b=mQ4zOKrfSd6CXpxa/ISdX/4rEE4yZ6goDlCFfaT/ep2peAxDkl/5hPWrPV+XNC4a5Z/DEKHwRSSk+7+faobDUuOdZaj5lrK/x5uCh280Mu77rxxTWg6C4pzzHpBW9qMCr+luZGV7hC4KRsZvsrhREAls0z0nPiaLUtcrupUsZTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UA8EYg3e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UA8EYg3e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C92B7C2BCF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785673233;
	bh=D02aROGq7CCOWo14UAP3g84eDWNAKYvvMJ/z0dHI7yY=;
	h=To:Subject:From:Date:From;
	b=UA8EYg3ePEKGuzmQUUnbKTT8Iv2F6xWr/xQhmOsdylXrqXfKhNazVm0bNzG45DKlt
	 Bg6pM73/Wnj2jx8wpUm29x0VL7W0ZH5pJP3TH3J4our2rHHMk6w/TkfxX5aVLKOsxx
	 TsBnlKCe8JUEDhEzv4ZQOVcTQKcwyEzCss83RlFIy03k7AolMaVJHOrPX9e7+8W967
	 EL5niIfjC5Y7WTScB0WHxHKZoh/plBs4Gw2spcGmtiCRE/CJg5suPT3ie7KQcRm9ub
	 YSOoFdXIbvIiRpCZ+BnqLeq+VK47tKk8cwKWiaxJumkho7vSQV3+Oc8bETC7cbUiyE
	 TQwm3gnklDIdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A91A7C55171
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178567323368.3100.9418810443797462323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4499214e57921e9174e39864f649cb2da6b369e3618f841641bc76056b0b3a05
Date: Sun, 02 Aug 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785673233
