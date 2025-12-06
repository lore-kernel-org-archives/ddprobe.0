Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32DD422F01
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 05:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764997374; cv=none; b=n+mI8O+5MDMxe8R4jSXhVQMwA0R9RhPRToYdHiWVu0quRsOItEkmiqJiLi4bK1KgoTgaaSEkumMIx+CAl0DRzRziOOBoff5kCoQR1JV69wiO/HzDN8Yq0zgphasCDPVkEV4J/6DcXS2HQ9g2G+nT/FzCmMrfnjRUHSyo0mnj4HI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764997374; c=relaxed/simple;
	bh=NOY+2dkkOKm4YLuC1cXj0mMhCTTaU/cU7BwqmrYDezk=;
	h=To:Subject:From:Message-Id:Date; b=hy37zNqVQMQ/k9aeMPdiT65uvu1qlu09PWhcaaIgeObOpRQ/vNMD9/1xr+23z8KEkMgEmREgvtuouL5ou/CuoVQkQBpb+YiOt8fbW84X0md/mnhmtLjAELj+tO5tTxS4P4EY4z8OSdAJXmkmD03tXgT4/m/islxuDnhGHZzI7y4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GcjVOKuu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GcjVOKuu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B23C2C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 05:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764997373;
	bh=NOY+2dkkOKm4YLuC1cXj0mMhCTTaU/cU7BwqmrYDezk=;
	h=To:Subject:From:Date:From;
	b=GcjVOKuuezlJ8fty5DNfbTk4LLdSI7s1oQZP0bid5pf66Sr5qMVEAIwsJaYocVev6
	 tNEka3rT76JKkzcThPUopn/4rJWV/LSAqz4oLttqEoJH73DT348KAqats2jjdEAQdK
	 QZR+RkdbUqDycCsjinlWzTkgAqmQdjCgxYqfIEw1PyuJfCmNrlDC+S1ViWp4680wT8
	 g5YijoP0ZLnDgsrEAUU4UHGfwcm10pxnMkqHouAzOacmMrnTI7xMB7fv+XkjICVSi/
	 2zIfq8yI2XrZlMvYhHGN0J8C5vJxxXDVDA6aML/nTjmkS7rFoco2xm6u857+9Kml4j
	 djCpNdA7eVcoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 993B7D3ABF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 05:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176499737359.27254.15360238380120851782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36f3b8ca92abb80ff5b48ea8393e6c4d766eaa372d5eb49418f8b82080206aa5
Date: Sat, 06 Dec 2025 05:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764997373
