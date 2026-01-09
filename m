Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B57B189906
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 10:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767954834; cv=none; b=NHBF9tuQhVpqmCgdtaXRj35KKYh5EVyQQHvqsrcgL/Lj9MBTro1ORAMYv5XjKgWbjySj9vhI30WlQzmw7wlSZBxtqTFw2sT+9PfpUMIAFoIYz2D6OekYQm2lqACWI2QwIMLR7BnA7UJFaCf8QgQ6ud4XS001b4nYsVo+2BJyQyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767954834; c=relaxed/simple;
	bh=ixd5R70bUR5fwhdnneDP7gcPn1NNnPBvoo8eH4o/NYw=;
	h=To:Subject:From:Message-Id:Date; b=FzuIY52WAvp6Itpl+LopZ1I7jPRLHD0gBj3B+tbvfdF0FMxIEr75jZVV6EXwQVtm67zLXgDZtd/m/E+ljLRUI1KV6DY86hMU9IIku9onK2/Be16Wl+peyf7a6U/hTMpOPdOXcaBYc9zfYN+cT2Te3065zf/MhTgq5KWQBwU264c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NdBiXGgi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NdBiXGgi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0683C19421
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 10:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767954833;
	bh=ixd5R70bUR5fwhdnneDP7gcPn1NNnPBvoo8eH4o/NYw=;
	h=To:Subject:From:Date:From;
	b=NdBiXGgiZevHXK3tkfM+uXtgMNtxrOaEwBCjEZ6reFqwgj4o0C3ebu5TwXiY/Ve5W
	 8kDFfiWNkqxirGlRDVRT0pCjk0L9tzshta273HQjtGhEWYUy3yoYvbg4XnQnnmqMnx
	 TPUSlAoLen60PgoKB7er1R73o0xLI+T/SPgOHwuX/zIUuTGTylMbpqTcZVFelGAqLX
	 beyZh62Bicxnz4UE3JD47rvCmILNA5WHgBqUFPqMdpB9bwlDupPTcfRuL9XZR01m94
	 ISxdC41ONZPK3U+D60takNPw9L/ELC56vxcB89w2C7hRy2TVe3olbsQniZSxAG5F8A
	 NZHWPlAosI0Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905F2D16802
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 10:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176795483358.25089.8030045580251549845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4885c70ed37be2e2c6ea07c8ade2365d0227d63a3a4e7f34101c19c2f89e4a5d
Date: Fri, 09 Jan 2026 10:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767954833
