Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 319051F790F
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751954394; cv=none; b=pfSy/3zWim22+WuuOtoP0V+Q7SLVuuJcGgySPQuSdj6rvyD5kkwGFJPVfKXcJ0osrfhON7ipsnp/iuJ8BWfPbpG+Tac5yMSP8umxKw+qPnF6QnRTyltxvEgM00q0XfKCp7qvqWJBbPdxZIuS+zDEd4/77dekQx3Itb5DXZWDIvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751954394; c=relaxed/simple;
	bh=BPVZxSIi/2gowsNkkmpv0BnjADitTW5XGnfZVfI7xJI=;
	h=To:Subject:From:Message-Id:Date; b=eWXMZnvfUoa82ezWZI5IGF+BiPB3F8+Fn4GF1lfHUQstlotJtHmz2T2lW3mkzbxeGCq2tUIQ42eoG+aLNzONO+t1wnKPTkefWZRv2pWmU7N883LqxEIiBsKDhDX2HebUhxC75q19Yus3FiHROpG5r3ROdRo0VXanMxza96qlc/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rxBpTPWH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rxBpTPWH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4363C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751954393;
	bh=BPVZxSIi/2gowsNkkmpv0BnjADitTW5XGnfZVfI7xJI=;
	h=To:Subject:From:Date:From;
	b=rxBpTPWHbWcNXCdw/TjR034gb5922l091lZ3d7pDhGlfHANb3eohZ81THspymfXU6
	 0veTClXmoA7CHUM0PiGksGl7MkgjrMwPCaONuDLvBjMo8i+0jaCxRZ4FM6xscKS2WZ
	 zyuD9g8HxHZEWhmk8qzg1kOgOpGXgq9V4nLbDo9hRqOQ1WKp/giiHuhfOwjHehTZb2
	 NGBme6LcWDBuGcQ2y5W/MCdsBfAkpLmcdWrP4NvfT3O98OyYz7kXwA18/KacSvCppE
	 f5ljoj4/vuQrRzMz3OhrTZNubctw1MRVp7eLZ89YhaLfOzFuQfLiLbx7jRwiw5+3pq
	 hsYDVSQj25lig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B95C8303C
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175195439358.15202.15096523575380944483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6f486e2093708465ab4dae666678bb091a74a39294b036b8aad36ff44332b2c
Date: Tue, 08 Jul 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751954393
