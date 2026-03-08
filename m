Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2035227FD44
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 06:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772950494; cv=none; b=QXYaHi73F6uTxDBM833DSLBn0IQfhQLOUb06VeQzMAYwMgd7h+nop/N/su4z4ovefs07CXZlQwI7OLnrsIaxdVYs7szW9KtZnhnzA3ZMcxHSPccY1QcR4iZmQ1A6enqjffKlwOT2ZTrvfb5VA2pWhvUfTkzjnQDy4DUqVss9k+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772950494; c=relaxed/simple;
	bh=nwRms4/YrZ75nTz41456dK47MsZ+eDhAaGMt2C9mXNg=;
	h=To:Subject:From:Message-Id:Date; b=V6nSUsk+YP1pEbhMxdExj2RsIIgKqZWKbZgiTcEit/o5lV03eCy56tB4uPicOr8ZblsUvWUQGXTorv+o5Ms5JF5oq+lksn8IlA/mhPFWTEtcTzSlftPG6gvoXXJM800bRfzyaj0doHcWNMXq1+5ohUhOURkbO+c+mr/2G+wey18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TxT9xS0H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TxT9xS0H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B09C116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 06:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772950493;
	bh=nwRms4/YrZ75nTz41456dK47MsZ+eDhAaGMt2C9mXNg=;
	h=To:Subject:From:Date:From;
	b=TxT9xS0H/OnSNnAxRzHnQP6FQ2bX1fNKGEDQUOiN3UmaPu8K/kphDGjfvTq2tfFVx
	 ZEqF84OtagusBN+FBV1AIMiC4Ink2bWSLqAONyjJWrK/Snng2anzPTltpiHFlVU21W
	 bsgEIwq0/vWEOdIwPDRIX3hCeYlhJsFiKmi8owthYJbMa6mH3pcqsKfahj2yQd8Pqy
	 XDO0r/aqOmMUj1twSGf4Y0DgBQLEcvrtBlk9plzz7V8Xxg4viqpSptv8Phozv6hPu6
	 eYqEDFbXrCeew6ReWRrW4clPWqVI1o2etyuyI+39/BUqKtg9BQgM0KpX6sYt5uEhXk
	 wpugdw3LMKShA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9B6F55134
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 06:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177295049358.18121.17231311570579091699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 352385d9c147dc2551f686061ad7b8020ca8a17298c69ad8d986d025e727ff31
Date: Sun, 08 Mar 2026 06:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772950493
