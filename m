Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35D941487F6
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761610194; cv=none; b=grxPqIVED/88hGLZC5XFPiS210x9Btq8pfIAowYSCq6Wmhg5EXCvEs99juUxJQ+P0tRsAV8+9y6mCyjm1B7Z7OJv9Wi/6VJ1V4YvJ2rn1xlzWzqpymd3SwNVtpxhIjCw9pxCgw593ii1NoJcjFsSiiNGrwtte6NtQ8fTXDKvYDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761610194; c=relaxed/simple;
	bh=XfMKrPNHomQmRXfTvunPNxq39A+nNMDgglAg8ySKtiw=;
	h=To:Subject:From:Message-Id:Date; b=SpCIAt36bq8AEqOInHTCxbWmHWn2KlaAT1AUSN/MxttLFpWSAr8hi2oxAMz4BrACBi9IBqw9nrtVY0oRXMWm+YCscvbMEXkpHcoAwNyRAWMa7eIyAcWwnm6gEdk1Q/XvBdiuq8kr5J6329XufchOHfnaRiInBQ8OHXtUgS+HzTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jn5EtKAX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jn5EtKAX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AECA4C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761610193;
	bh=XfMKrPNHomQmRXfTvunPNxq39A+nNMDgglAg8ySKtiw=;
	h=To:Subject:From:Date:From;
	b=jn5EtKAX/Q8tC34iBluPnAed4R1AymuVHv0Sm+nTkdbN+R7xh+vTdDhIGLDSQnMm6
	 E816dmXDUEWR6EJcbSMc5V6HUY/3ajehUbyJKeT+vDIK+7E86MR+RuPg2jRpiPnSF7
	 k2gOFVuYcG5gSxUwVseOosU0XYMWIVI/cSOdWfCAvbVZwV72CrTLNRbY0z6yLdJtAX
	 qBjKrxrJO1haE4ZJsU2pw8mcvGeeIBJli8uh8UC+b8yQ8qGT5ZyxFG7uN7vPl7cNfo
	 z/yHSTufDgShvmFhWILVrsKRqddTwa3TBu5acZCvPpGCynRu6Hrzs8Mp40VYctk9Kh
	 MOc+uP0D8P6BQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B2FFCCF9E5
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176161019361.25795.16239026252030034531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbf634af6ebf6cb17fbac7902b5675b103b24b35099268cc9556f365934f9a62
Date: Tue, 28 Oct 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761610193
