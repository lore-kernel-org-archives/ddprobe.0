Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30FC11FAC50
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748279394; cv=none; b=m7bc2w7L1Qd5o+fyBWMLVbReJGtrIqqRCUQitBWb5Tss+W99D+oWZ2kIOQefuYaJXzXwTk4ja+SOgEb748MP1bOZADWRmgtTbStPUKT18nlYzBSGLyh9w6oeEq56ibk1Sf6vbtvGGhdEBu4Zz81FZN+9o9oQbAJL7FjJihg1eTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748279394; c=relaxed/simple;
	bh=O4zyv1CzFoxL3U2XCN9dBg0pSCuZl1as3Mjcz6IndlA=;
	h=To:Subject:From:Message-Id:Date; b=pmfC0GBHREdk7fNVlVJb1RlWDxnGdT5bLdolGxxUBeeskiovenT+7e5Bl+MpqwgtYwj5Ck3M+qrhuIMA6ACbHgy4Ipx/gZcB87/r9xyfR6Hi35Voce9KfUlzuDV5SPtC/3RECzQoC6YFi3CbU2NWgukD3Dnv/Bk0F8vrsehJpew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GXv0zffE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GXv0zffE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E36C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748279393;
	bh=O4zyv1CzFoxL3U2XCN9dBg0pSCuZl1as3Mjcz6IndlA=;
	h=To:Subject:From:Date:From;
	b=GXv0zffE8/zYCIzMWtciZrudtQ1UDmOKju6ADKX/bFwWQT10OFUvjnXKE1yJiG3FE
	 TpUDbZ2YnPborhs7/pI7BjKZO5q7fFDfCD3DCAa/feWfHshZio2YcUTWoeYrQxmAtH
	 +80VjeqiFDlfLDg2U/knSRzZ8FM5cON3vdPOK4clVkeGZcMhlDyAQ5EYlRteqoY8x2
	 cVGP33j7nj6PO6EFTacBo/dZ4pz8uBLaGa3fRSdi0HbxKIEiMKlL0ekeJS/T59U37Z
	 RbH+FYA1RADrIQrvRGMXk1NAF+y1boTvzKbbRhMTqqJPdSl1XHLRg3sLXSO+f/VfsB
	 TjyqxNW9v9G8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948FEC5AD49
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174827939357.28156.14586347637864565905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3236424f67ecda98926a326f9fd27d8f42e64d1d71645d3791f56d52e3b3e34
Date: Mon, 26 May 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748279393
