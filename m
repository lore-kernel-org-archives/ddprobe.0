Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B8A763CB
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727831154; cv=none; b=rtUZ7kGMzbH8NYad0ikzTbfFaF+sL1cwycQE5Bm97LWxm7WJfDJA4UNBOCS/yDjMRlVbh7WttST1MyIVMW3J6XD1NPA4MjlGIahmxxvFETZmBLH1U1dX/v1Z4MU+nFXJUV2rIv3AI8PsSIE9eLTmpU5Io/CpNghF78sBnklG/Tw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727831154; c=relaxed/simple;
	bh=XXWtCrKQEgRnYkMo5V83hufdUarrSdFBvYh9kutcXTI=;
	h=To:Subject:From:Message-Id:Date; b=iI5Fr5j9oOreT9g8JpdUpHEBMDhNN2sFWeJ3k9eDStdDIo2iCAbWq4DnmGtwMS+f2rPGiwjULO3acTqZ4dP6Pdq15uUNxxL2X0m20ZGt2q9PqaBAUhbZ1PmOlU90MvRt/MPuL0Wz0Qv82+tZjsoPztiho1A+D/WSUF4G1lpoQDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AknhHtY3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AknhHtY3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF75BC4CEC6
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727831153;
	bh=XXWtCrKQEgRnYkMo5V83hufdUarrSdFBvYh9kutcXTI=;
	h=To:Subject:From:Date:From;
	b=AknhHtY3LquI/mU1AcXnU3kSitJR1xpvj/DzmudU0Qh50S3qF3W4lmZnmSMBiI1T/
	 nKNSBWq60KtAkDh3uQ7k1Ebn6yW/BBlqboIAJkvq5fHrQXNEGdK1tmpkC+vgmMM84Z
	 rXWN7MdueS233w5RftE9JLUlUjxv5ECGS5XxfySVBlxapmqZuZHupz76KUaJEGkizy
	 6x6Uq4jeiaU2VvohJ4vmTlJmDa0Xi1s+mozGzV8LAt7IrhZHRnPExXvD7iisgmfVl/
	 jDSrN6O3f/oqXXtLHWyoeqdtWvkg2v3XOncvcuhkg+gBiQ6NgqaauhgTDik7oMuWJT
	 s9WdI+Kd66Mkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C688CF318A
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172783115363.19848.4151964073108165945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 984d8412e42496e1967b79fc028a32437f681fded938e2fa69845ab41c18dac4
Date: Wed, 02 Oct 2024 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727831153
