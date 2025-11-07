Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1214D17B425
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762526394; cv=none; b=R0fQY6fpypXZd9Y4gUKQ+ETvCKJiH+NzUHtP0lF3nIjXyboqj9eJY1SWagxE+Gs4gK6Wf1O5G7vpuB6Nb02Teo87rJdTKR2l4O/RFX5t2XLBBEsjJ13q3nFyWVHve+eAvC8NySNCqzu+3jbSpOUlWajYXIujKRcpYlgcRXdMCCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762526394; c=relaxed/simple;
	bh=hXm5fEjMOCTadL7WDTzLiVROi5HvwGv+j/cx8RIe0jo=;
	h=To:Subject:From:Message-Id:Date; b=FRVtWneUIQ43ymJHGIWQZmcor2g5o1lYQdJV+UfsZlNUlUzYrJ7x0yQbs6Rioh0tmugsp/hFYSi7P6yA2XmR+HX9Rxwvl0Asccq+wKrxstsUa8FYB1/30d/SxCUG81XTjiEtmkahkOeqrQqLUBtm78RRtQuTuRhQYY4wgX8onIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aCNceyBg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aCNceyBg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FFBC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762526393;
	bh=hXm5fEjMOCTadL7WDTzLiVROi5HvwGv+j/cx8RIe0jo=;
	h=To:Subject:From:Date:From;
	b=aCNceyBgguUl8b3p+o62l1b3ALmPs0eU1kEA5FoE6d2yyv5odQliI8mhT9n401SbV
	 dSThNYLaspU/PMsrTjTePfeYSumTN8KQoTxQ9+nqfEMMH9J6Y05Z+WZU1mbCPBtFIX
	 cLM9JNdxuTaCanH0oAcM5nLq21TEFIuH7KZrqNTTm8iY6z5sstY8LoGrPzufcU9f5I
	 6fLmGQq7HVpEYH5YOpozHN5fC/tWyo6zBr0wm3QcxSRHP1Kb03porHMTSulq2bcO9a
	 o0riAFQFz8oM24Bbt69hsWLhQmVXejHmpkt2IRkigP6uhmUecCoUXlJYMTZ4botJue
	 Kk6dyTRiHOXRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F733CCFA05
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176252639357.26991.3916605401081611708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9ece50c21a422ab8b9e792a67ecb08310f24a90172024b06a0229057208de10
Date: Fri, 07 Nov 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762526393
