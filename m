Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 308D53D3B8
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745747394; cv=none; b=ODG1D50ZoMDhiGUYKz1Vfm47/1Ufi96udgeQXPnNnYLSK3to1r6XFBxbeSPtTMRvpZnbKyS91r3CS1wUDzJGZQt04k5NX/v8nb8fxxsNNRxNB14iGThsDr8vHZ5E7pN36ZozxSC2sRpsoXhfaOXErpZh5FrbksA1bv1YDvGmZlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745747394; c=relaxed/simple;
	bh=GzlEPBvWIc/M/J4AZv4V2cugnjJ2OZS3zgRCH5LqFu0=;
	h=To:Subject:From:Message-Id:Date; b=LK3jZhfLreY/Rs3mCYlc1q6roWqy3qxvpDnL8e284g9k3QV33mXlA24D0/XXxcs2cWMg2KzPuHxotpUJ72RRzF0mRUBPHTL12nkxQOhYtR/v+mRucRPk1si32R/JixsoCJ3pgheEqPzOAogIcgs76fkl6oM9+37o3OAbynH5l94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HAGIwhzP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HAGIwhzP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1CD3C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745747393;
	bh=GzlEPBvWIc/M/J4AZv4V2cugnjJ2OZS3zgRCH5LqFu0=;
	h=To:Subject:From:Date:From;
	b=HAGIwhzPijlxyhyeIGTFQIiT5lo9QnixjG9b8Vln7FI2FG1yJNbhxflwdIGCnJjWv
	 fO57bYhKcdJCj7//RPFz4qi+5RQv3U7umPsi55m9oDWeJv/LvUOCU6RRtVjsa2SmGZ
	 8GMBnaS6fdpeZx7dDH/HRlUq20Lfmlr311MdfggVdiFgqqb0kVUYHr/vs88mdsD5iu
	 2doinTqU7mlUBCKYDqdXaXj07+fG+VAkpQV60XJU/dKsr6TsrBzij3nAFmP0pDDPH/
	 BBHb1GFSgdmJV8kGQtuorji7HUozwPrklTom6g0sHwMca5sJEaTec8wf5cevP5EFd9
	 w2eEk+QGLVC+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9D1C369D3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174574739357.20100.15684127570058963768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 329c0f6b566fa1c70dba449e49cce9b95aaf62316f95ea55623bbea2fd971710
Date: Sun, 27 Apr 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745747393
