Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B87E1B7910
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 00:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791591634; cv=none; b=k/w8LRMWXZcy369H2OnpHnt7UBKuGOHauu31CDcdCxxTP62uq6OUIuB3eFl9nSHDdxbBbYC9sKvdnSCPzRZ2egzUSWrMDxoFfZPYSvsEpGQth2LRpPC4aFpG/b7VemnhwvxKaH9QZRRBCyHQn+bgIWIMIf5gG2AhKF9gF2q8sj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791591634; c=relaxed/simple;
	bh=qa1puT6zC+8aGvZ3+EN+iFp84r5jZIJB4i8xAnX7EIY=;
	h=To:Subject:From:Message-Id:Date; b=uBlpSVl1LT4r0KX7QCh88QrnOee9mSYX7wNJ0quSw/0TdRnOHx40pRelSDvdK2ltlYdjh4QWKQBw7jgRdrfVjf011QecoM/olMNzDhJq4v56z72IErsY6Mv3l4W1snD8NftHSWrsjBP12AHqB2LYFM6vFz4O+q+2voORNo7rFSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nhkhgvsh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nhkhgvsh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3DC4C2BCFA
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791591633;
	bh=qa1puT6zC+8aGvZ3+EN+iFp84r5jZIJB4i8xAnX7EIY=;
	h=To:Subject:From:Date:From;
	b=nhkhgvshKELCRkcbq9J2fGPUqAEVAdbX+Kv4zkFa0SL4Oxe0ClOd46XcVHFpK+lkM
	 di1+ENI4FQrXpoUlZU8R+6rYGAE5ubN4HVvZpJgg6jBW7PDFvOct8u/YB+rSjWHX+t
	 vNp3AsIhXbRfcqEdBQWELUjTCkT7oXiPnsIErxTMP0py7H+K631DfZiYY+yLCFwj36
	 +RhFHTa0ylBKHEL6WGJitk28abAaZDYgrqmgO9Kicb3FdD/1W9oDM1JrzouNL0zJ4H
	 djHag/jmohPfOocj9xJB8p4steA59ciOI8bhWVJOSDGPpZMVRwBDnd+T3Uqeu39tNI
	 UAdspu8IVkSDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF9BBCA601E
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179159163368.30481.11113760774214397838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e032f13d12e3f8de355f5df8003e64ac581307b2ee1948c905f1f049aed1cb5
Date: Sat, 10 Oct 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791591633
