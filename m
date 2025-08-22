Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28F632FCBE8
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755866995; cv=none; b=KFBzTnCDygeqTHhWHsV746hhhAi0xU0nfLXaFX6Z+xOeK5xyX32wGxTl8T2kF3FSirRkLNseeyqSaNdB4nzsUyhXTH70WG8ZVDImUw38zBfLP0pSPEKmf0Q2xtYFJR7KixrVfYOfo1LziaoVh8rOSJ2ZxTxAMZxCvSq8ePdKxW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755866995; c=relaxed/simple;
	bh=2MF0fS74FbRGrkmEtzH+wYH7QEnxCt7ECSpjFObMUKM=;
	h=To:Subject:From:Message-Id:Date; b=qAITiTWcj96zUS8NQmCIkkkRufswABXUYPaRcvMoMgNn+s0Xil9an3oLzQv+jFsPFwlD4zw6PPDRPzXUBYOJICoQtVFd82ZaTWKYTtPo4bwm8CiLAt8/PJ8jQtxcfBNZ3/lDwqA/rmG6Sim0+fsbBvlX7wJnTPtq+WCPstMECZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ikS/EATw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ikS/EATw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF64C113D0
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755866993;
	bh=2MF0fS74FbRGrkmEtzH+wYH7QEnxCt7ECSpjFObMUKM=;
	h=To:Subject:From:Date:From;
	b=ikS/EATwfjk0mQqPtpG0+0ZGpvOuohH/g2cfMfv2UM1cuIuIOoojV8RbILPXKz/zQ
	 KpIhbP1SDYN0X4HjTiDnynj3g+FdCJv5hsYzkFyGGX3HGyLaZ6HoX0jCUhl84nhVnS
	 MX9TEyqe9lDYcGECXrQcxCJjUdF9y04H6gtU4MISNAG4mVInLGjTVYM2DfYIbiUlWy
	 JtEHOlaRHFGFbMh23SwMwQUAeNUTxM0TEhYiyfmQmHKaQV9DK/uyJDQ/OajTupBhSR
	 RNUujv2KnNCrdlHcL4VMKE68koDe9W78MCN10zw+5yy0X4hXAuzfzAToj0g4hDvuT1
	 7/XCu6GU3PH0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDAFCA0EFC
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175586699357.29375.4477558876519087704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4dfd731ddc932a0620686803efc5c3c8eb21dd8f29cea060dc2be472e9f7aba1
Date: Fri, 22 Aug 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755866993
