Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39C0B4B1E4A
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746580795; cv=none; b=Fka6hKoQCwh59HEA/9pABKJ4fonarKcDfL93WvqrsbooQTZv2CZdbU9JOBXAH2oOK2FI9jdOWxCi389Mb7O2lD25/foq5E+/veIpNFVSh+Ic+PPikfCMeTMZWLc2Bq2GZ1WSQ93IqFxF0WphxJxIEjDB0L8PUJPjyHrG+/FFMv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746580795; c=relaxed/simple;
	bh=syCZPWYn2fTQ64GJLVmJjk+lHcq57y2aV5N31sN69DU=;
	h=To:Subject:From:Message-Id:Date; b=AS/edIKx95p/wr7RHnakf0l6gX4qNQDrMfzANHELTMZ2BZzZc2kxOBc4SfuX6NJ+/5p0IhXiC0M+SKsddpNnAn3Bk+SOGnkXzHt1EwEvs0QIRaXteqduA+FgKaNvguv77LoXed/ylJ7VdQDUwdiqdXEW/Ovutu3wOl5C+dhgGHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jDIHpPuP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jDIHpPuP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A59DCC4CEE4
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746580793;
	bh=syCZPWYn2fTQ64GJLVmJjk+lHcq57y2aV5N31sN69DU=;
	h=To:Subject:From:Date:From;
	b=jDIHpPuP2tQpcwqdV4eiRsHnmTxmIS/tTPoJLYZ6L/EidetZCOIZ8uitYdiXWjLbQ
	 avl12aEaG2X1HzOWmbbrW7UA2YZ0L4IS4LDmdY0+B2pDzA/TXcq2gh2/h9Tdns0ioV
	 l6M3rTS0tUlku0jfdBKqDkFRZ6B9vzPMu24j786/LeHHs8PwgT8Xbq7gP/TCCbHURH
	 B5kPDCJrxSynVMQPZ17tZwUZmIq08tqbaznQkd4BLRv8GxORBpCcYwhw8P87VgNTrB
	 NJ9uBWDT6LE6tESCjkEF6YjNywY7ofTiTgQ/qv5oZwJ9lx5+cG1GEcSQazqjXptUXQ
	 ERb8B/8P01RDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9453DC3ABBC
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174658079357.2201.2257048428461159385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4ba4e199d3309d095eec861c3f057af7006242c8c937164ee158ced86d36ec1
Date: Wed, 07 May 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746580793
