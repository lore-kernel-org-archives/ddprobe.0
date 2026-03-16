Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18BF323ABB9
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 13:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773666294; cv=none; b=VbF4mzeNddwrtBQ/2mQnJp6x28bDjFLHOx6fExf0++hvSgZBq3MWLPzK59OpDcZ7B5jQDNPbC/gCqyPx8789me+Kj98v0NDLuDsVQQpN/McZG6Hay2OJDJijbc3xcRAjkPZtMdI6xpZ3SL2kDJIKGLxHNCQJOFDmORDIPjwzRWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773666294; c=relaxed/simple;
	bh=mRVg8ztdxhmT4+CRZSIrZjLKw4jluT+S3j+2rwx0Qd8=;
	h=To:Subject:From:Message-Id:Date; b=Elr3eyqQyT0GGVHeSgZedQwVlLkjBPiT9dSxucHsKWpcashq+CxHwfLoW25kTb11lC0NJVM2j/4ZW8EUqBVByZ6O5DrR1FMGTJkEo5A63bG2u1fCw3aU3WPkET228uV8XcaAjGHSDop15dDpx5UKz1ZUl/10TG3TKBNrrdpW4/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iKBMMOwa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iKBMMOwa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25D7C19425
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 13:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773666293;
	bh=mRVg8ztdxhmT4+CRZSIrZjLKw4jluT+S3j+2rwx0Qd8=;
	h=To:Subject:From:Date:From;
	b=iKBMMOwa20hp+cmdi6VbWXV26CE3/SGK7DzBdF0NgNQZVPE5u4q1p2twZBMsM3Tju
	 4SUyKR0nxCdknknY3LVRa4TbJLSHf3tronpsEIeu28CiKD0m3zL/R8zFKFoPfOU+wr
	 7b4h2MD01obZWyQeV3p6bWVTiHxiA2sW7AQTAnvzlgOQgXXHl4jBtDIF9PiGxsFH6V
	 xEGSOXw8NVuAzULkSaN5Vhso61xiZImwIuimas9xi8uJBY7l9YApJz789V+2aEWNhU
	 CVaJJRdqGFqbXlwTbBbJurbNn4YK382/EWKnoRtFo4BVKlZ0jIuiHEDTf6MIKH3LVt
	 OItsHEZOHi3uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907A3F506C8
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 13:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177366629358.21571.9797174724901766056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f8abd16046699c59f17236fccdc314fcaa6908015b0464fa34c23dacf2c8e08
Date: Mon, 16 Mar 2026 13:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773666293
