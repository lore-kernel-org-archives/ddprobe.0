Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FDEE4C76
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 01:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717724843; cv=none; b=NkTz4u3KZj+b8DQtNHCmgkbdNva1kgRmjHLNQ1DVw/ckeC3tk6Aqx9v/RerihlbzT9tXvNLL+2pRKKhn+Q9Kkq0Lr7z3tpaai2zea06g9ecWRBOvLi+/pfmi2xozVurq8PO9gd3RZqMIlCsH+MOvdrIsR5VTI4qpAnVuiRgOh1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717724843; c=relaxed/simple;
	bh=/DGCTXeclnhCzAo2v+YYaHtbLpI0cyDwVJjg0Uwql5s=;
	h=To:Subject:From:Message-Id:Date; b=B2vwPJLsfYg81odSDmkMCIU/du6mXU0XFFR+utgT970ukhC5qj6tv2vOEUeQ1KuzsKE6RiozFu4KwmpOhp9mGfcsyzct1GZ8200fPqCY3yT0H7WqGxEDV+3LGQkYNJBgREnducKe+Tn3uKDf8PfiMkxWFc5M53xLoU2uOS2r61Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=or+uLQKt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="or+uLQKt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 052B0C2BD10
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 01:47:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717724843;
	bh=/DGCTXeclnhCzAo2v+YYaHtbLpI0cyDwVJjg0Uwql5s=;
	h=To:Subject:From:Date:From;
	b=or+uLQKtsL5VGa+/rU+4WAeJSLEoDs330gEy42GLYQ/a0OGU8up/Ew1dwtMg1k7oD
	 bbr8R3W1YSqfOLWTNvpryOKVcC1kvWqzXWY12myJK+ybGoCyRFI3DnRqOFYFEeDJts
	 KWoDuR7UAfU/EzkvOGU+xGFKUJSj4oelHWk74uf6raKjDGrganIFFmFNs+mQDcaPpd
	 Wlpl2nxCJTQKqGM1tHO7sIXZYJ9tmPAAQ4u81h2lhb/Uv7u44+tEDd3gmeUSwKWDa/
	 GnADfiVOsjOYxkTO7nZJCU8JUHKm349SdOCiFizOtJySQgxizttUVPvqD/19eHeQqU
	 OJhU1meUs1ivw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E52ABC27C5E
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 01:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171772484288.27614.83588065037892934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28df3cd3c197fe43a436aeed265e65737bf379e28ecf56ea57bb97574cc6dff9
Date: Fri, 07 Jun 2024 01:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717724842
