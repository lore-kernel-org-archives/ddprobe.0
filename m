Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53B3417D2
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747035594; cv=none; b=udg3j7vWestXCZlP+sjfLEQk4N4yNog8tZ3vF63tS/aAaVyddnH6vsbOE6fODyfWb8Ui8gPP+nielas/LP53sMovOOG7mKNggcrkMtMmN5fDIuSfdJFb1dvpTvzrL+9tm73u1wyq8dyu0xWnK+Hc+ZSHv5sRBG1QL53FgtKsoZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747035594; c=relaxed/simple;
	bh=4pJ498hwQE1sfoi7issiIMKFmTCchCINYNwPfeMDYo8=;
	h=To:Subject:From:Message-Id:Date; b=LPPrS3Nrp6c6qpMKs4Onlx2zAk/+1oLA7GJOUMdkAcjdK0vCrt2DRMDgdfwW8VFz1Fote+o2TodxAeRILA5rTPGXXbg4B4ECrfQDP2+EhxxfJ7vu0nHhA9OxkrAhLDBoAdMP9Cu7gWpvo/GcDf9Wv6/1smuAxL6Wz26ZyUe/STQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LaoG5V4R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LaoG5V4R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3860C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747035593;
	bh=4pJ498hwQE1sfoi7issiIMKFmTCchCINYNwPfeMDYo8=;
	h=To:Subject:From:Date:From;
	b=LaoG5V4Re5PRNvqQCCGeVnSh5V7BN3jr6I9RO4wtn5g3ld7fCAn10b7QXmb70138e
	 SEPzzX+jQmWBqJBkN1diSCv7KdXVnVmMxRPjz8kfEyfRY0w4Z/8nd9ucIU3Al8xAZs
	 sHmMcoCABEWZ1BiTFoc1OIwgT/0MxMDd4uZuyj78qm8RmbaL6pp5l325Y0FbBWeZXw
	 7LN+0bOTBArs5WBcLwjW1ciVuoTiZAirD98DS5mprPLIVWgI0xNrMANCXpczzzT2dV
	 Pte96wGbW40oAUYsbZYz6RJVLZh/ZbOoxHtb0n8XUCjkFgjLqeQ9q3MVVtzF2MSGgh
	 xk2MsFN218pcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBC1C3ABBC
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174703559358.30309.15200569021293996800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4a820a7eb5e1507eb8a7126361d5cc1dc23e579bb1acec73bec20d7ff6f6d18
Date: Mon, 12 May 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747035593
