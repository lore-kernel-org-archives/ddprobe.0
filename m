Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C9DE3E48F
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 12:19:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713183563; cv=none; b=MLz7i8TNVRDhsNUY7KLIAN/faXQKSfrnsfg1duerg6uABaoWI0e8VOr/7+0wpSW6z4VUsoovl3EuupVo5o3byPwGslF8kJiyk6PgwfSdaOU37aHM5o2vFYSomXrEHAoBJ0K3zpzi0tpsszEoQJPTLvZ6aHkt4Q0qMkag25C4OpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713183563; c=relaxed/simple;
	bh=lOvjE6W8v9W9INF8twybTKJdaEHMSMxhBoZJ2ZojDLg=;
	h=To:Subject:From:Message-Id:Date; b=qScQrH6l8GKDx49FRVQcfk6m9TFn4vHvPpa1aS3uoFTNwA/t/oZXiIMthZnV+2rV4mxQMK4vWqhGdOEo/qxMoNPc5gHYnF1STsSU/77w3pch02SrGZM+FZHNiXM4o84E8tCPxKDRvgCJt/VtsFLhAnNmKnm+xyvKO6aEESh0Ano=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ciexc3Vv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ciexc3Vv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB7F1C113CC
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 12:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713183562;
	bh=lOvjE6W8v9W9INF8twybTKJdaEHMSMxhBoZJ2ZojDLg=;
	h=To:Subject:From:Date:From;
	b=Ciexc3VvKw5Ru93A4zScYouSOfqBoq3Jkm+2VZ6qtHMLIYiNQQ/Ur878vS2d5qieG
	 TjcVkyL2UW3ZnSZsTFxe3/rue9G3VzYTdGbypL6rOGwr7czVZAypnid1rJIZZr1qQI
	 AL3P/IqvKYmm3y7dQydAtMVlNuxuUSdV0KcBMLj5cCtOqRRjvyNRbuDm9bRTwio3sW
	 bpPnkXmMwIFuuaPG5Y41isp3MxDV2IyIMosXPx78sk0cX0vw0f8bsdMOYLoSWdLDGd
	 5ZXjX51TjHct3/ZcBjvfOr2Q5IJVWltVPXRn62i9uBUoRU7AcRuQgggQ1+AsMStJPr
	 4GiUU6SvP9pqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B94A6C4345F
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 12:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171318356275.15637.10055847254829732267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68c76a908a245878827baa18ae2f241a6d9dbd694207b902224bd5355c455f73
Date: Mon, 15 Apr 2024 12:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713183562
