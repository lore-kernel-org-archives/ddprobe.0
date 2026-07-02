Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B6E12D2394
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 01:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782957514; cv=none; b=EFCTDbr+x/DYtQ537VwEQsB2uLHOSXnwCmUMaE/s36gdKvWUP1EhF3MiT81Y+DHCFFbH3e65jK/25vJM27Vluke5z/MB2g7Ltqu8QsYmdGWouKiObS3CXKLPKCRWdTGpr+mBfnyI2a7t7cfB2B5o7BcvVhX3Wj/wDMfpJ/gh100=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782957514; c=relaxed/simple;
	bh=Sc0bR++gMLZRy+4vfN8rrNngl48zCvwgaqL+YlAyhoI=;
	h=To:Subject:From:Message-Id:Date; b=d+iwJIem9SxoUz7KoFQQzkGUGTnreFhWEsq6bUWnkK1dV2ibuyqp85QQhFou2wzJqTScu3LO5IHx046du9kstVKznev/b6Njp3fGwh7EtSlxJ4EHuS4Psh+4kFss1UdylaNH29fBZhpmeiIkGfZ6NFHocmYU8du2JbrDkKU3dbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gez63WTp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gez63WTp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0C71C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 01:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782957513;
	bh=Sc0bR++gMLZRy+4vfN8rrNngl48zCvwgaqL+YlAyhoI=;
	h=To:Subject:From:Date:From;
	b=gez63WTp91GJETK2KO61t/ipRW0g1LjYn8UH4/8YZglOhSumBDfbt84feb6azcsWp
	 ZZpERNDLgLawhnl0laygO5zMTNtcq3CCrsuOVtX0E4bo6Xyns9K4171RjKTCA5s4aX
	 pi+mlPH2dW21u6MJK4u5jGYgHljCg+UwcHRUer0HuHwvH5ouRv4IcmQSNAfIKVrqdd
	 3WR3xwRiKhM0h5njhngkfpF8alrqHvKGhsw7RBQmBUO2u9T3+aWOfgOVPX8VmmVmdQ
	 ePqD2jXCwttIIt6ud5D3QbxP7LoIevWhkWdhPvYNu5vCAqpu4q+qntkLnXL/RuZLxz
	 UgCVPLt+Rxxkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8EB2C43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 01:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178295751368.31626.11655667182237671431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fda155a6c2cac9ace576b0ef8e252225a15c649907efe02049ef7db7cc630ac9
Date: Thu, 02 Jul 2026 01:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782957513
