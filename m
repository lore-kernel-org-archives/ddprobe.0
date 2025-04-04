Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6422CEAE7
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743808794; cv=none; b=IrF+mCjRP9YSju6asHwKLnLUcr/MDhQaYkONh29fn7s+dFBQtqIPMbCX4PLGZI71IQ+XFO8yJ8YkzbjwRd++kbHVzobr+WXBkL+j4i4ahXDd1f1cJzXsHjavH2PDo47hD3/bkAyWN8wnl23z3q4of6GIv25e+60zoEUanPwNtZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743808794; c=relaxed/simple;
	bh=p3y8ags5fEQSU9tfFAPjxZkLq6A1n7w6TltC0Pr1nAE=;
	h=To:Subject:From:Message-Id:Date; b=diOttQi/vLcJN2o54IZ6kCERUEWKtZzokXwt2Qg+hPEWehhYf+1jA68DwFYTR8WCBiA3Lz3jVHeB8A14YCkvTmQtTdcYN0hmo5cWjeegkzjKsT/CemYkPJyuHj5y14Q9gzrraNk6VBAbZ1EkcJp4OHkFc7HfKjDcw/rCtfoAOyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kW55jqBJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kW55jqBJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C79D3C4CEE9
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743808793;
	bh=p3y8ags5fEQSU9tfFAPjxZkLq6A1n7w6TltC0Pr1nAE=;
	h=To:Subject:From:Date:From;
	b=kW55jqBJVkPtmAhFH+f2WfZls8vsqc8Au/rWromlk/liqDNWl0AQ+0dzDYEbQqr0M
	 YJHBEOXLHA2XU+FFYnzXXjGEGCp+ZB3QlO8ott8ZWKwpf6Mq3Caeg/x+XZ9c1vCkZH
	 eprx8Nh+uHvmYdvBNixubfh4QQCPYEQQsR2h/oBBATjrYtylSrdc12BgO/u63166Ba
	 as0qo+oKpTBTnamvUlPpbfyC2PGGwXwu4ndcQojgZWiskm2Z3W+/JXwHE238cRbn8f
	 IP2c5BW/Sgrf1KJi2PZK/fkpe8pYckNjYpwuZzDyGCkdirQk+v+L5lrHb6nZkVa2k1
	 2JsvFvobOXKlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A26D9C36010
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174380879362.13230.4233299687723082848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53396e44e105e805557e0c93879e9856e2cfca0d911118005d7f3515b3d772ff
Date: Fri, 04 Apr 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743808793
