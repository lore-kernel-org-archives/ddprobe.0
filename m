Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4254584A35
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 09:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766828634; cv=none; b=FU4nDgKen+m5Tzr7SfylkEP3nz//1EPoUiGjP8ERbLmqkJs5MSEgPcpxRQlCcQWYWr1t/z7ckBFxiFxcuTg537Eh54YOVDMCy+ghzuOyClclAOFztcy7yjwFKTM5/5IC75eEasuGtoUCb7QUJMJXDxDN95JJKOBLVY04R/+h17Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766828634; c=relaxed/simple;
	bh=DdaRJtnvz4l3HHNRW1+S+hvQUfP/rsnZdR3quyQJek4=;
	h=To:Subject:From:Message-Id:Date; b=W8/uESWPZsxSQmGf577xBNCJYohhEKSj5utA/xaDERoU13PlV2flrizoxRVznts89RtIPVZgmlKEAZ5ttuYuaelh1OaTv6EccJTAfp7kZCv4a5tzAqRWwL14ygrvANrfTwwAQNsnvzD815/YyvWqlAKQ1EMv2aBFdndgo5EOx7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dpfbJxWP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dpfbJxWP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD5DDC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 09:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766828633;
	bh=DdaRJtnvz4l3HHNRW1+S+hvQUfP/rsnZdR3quyQJek4=;
	h=To:Subject:From:Date:From;
	b=dpfbJxWPkgNp+7LHobpQCV0o/Jh5swA1seDU5qss6CzRFeG0fwXXM7xLZ1lpxGOdS
	 kOqL/s/Lek2mkDrD9w3IyrHuh0d60qVjc5l9hjSL07Q0aXmmOo2CmMHsjtOB4Ioap2
	 qR4dnv+GFYiReIz7a+U76ng5aTw7h9D/3vcPuab79Y8qrfgRdo2+LKD5OuunfriWlh
	 gSauhp9+GuFdajeLkbdP3X1L6f8j7QVNKU8GO+4lltnQD2hZuGN5+FD6YSyRyIyyUT
	 vMEd9tW1kenJFtNgpzsAVwiCG9iwDxYIObMKAOZmS+W9r0tvCbwSS06C/dHMyv1cEL
	 0OMxBYEPKDpLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98E19E8FDD6
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 09:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176682863360.15496.10541468701200032753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 970bb5296f47772820b585623907a697abe196f316cd07f660269e7174475dec
Date: Sat, 27 Dec 2025 09:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766828633
