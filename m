Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2254735A387
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 16:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775579134; cv=none; b=AcZnibZMlj29P3LEmBEjbo0gVVARi9DxsnINM9ixEPkLlB1bcQTh5NVNsPjKBRqtVcA+gOdI5AcNqOh4GfC0CqHlAPNTdVuFMnVANCENBYmYiG3TqnvG+VxS81Qiz7pzS309S2pAsHVCZC5sy18wCGbu+OGvW9THlKjUMYoQeQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775579134; c=relaxed/simple;
	bh=cHxkH2g6hkHCDszfUd6+79uDc5v/I/D60ghVbVtkcn8=;
	h=To:Subject:From:Message-Id:Date; b=KUD6TiDTRYYTjaIxSw8MbGisTJTM21g6vTsn5AwixRQAPLKJSQzIImIGRmZvJjUbNKxjb1XDVcP32RefWtya0ZDz+paS7YSeE5H8wX8dRd7wiU6Cu4+6RJReI7E8m4D/Jxekkn8cx6FqRVNr1lBp7WOrmJeGZG7nh6Ahvue+lI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=om3u5dTs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="om3u5dTs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD6ACC2BCAF
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 16:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775579133;
	bh=cHxkH2g6hkHCDszfUd6+79uDc5v/I/D60ghVbVtkcn8=;
	h=To:Subject:From:Date:From;
	b=om3u5dTsLaLmk2Xg6rOiGxoxQIUPonQbM6WFPBrQQndesmEHwo1nYf96oxLz+sqbJ
	 ZBORecE4qT3+wbCXKjvdyHTBiDZJY5hSSkA2QlAw18HYWvovciqm6L0bs0WMjYsrET
	 CQ5zX3ygaEGzvdYc+0yxnHCNM1i20b39M89ACwylz4WkLtCZ35+B1CM1WAbfOHIBfZ
	 nERnemEbmaBhGx+RJkvf6X9tGAwhJ6xtZyPMYmRX0ozWoQ2Gul6LAG3oc4QEf8tfxr
	 Nh21vXxTZXhAFSY3kBeH9BX8+WEEy4CmqKpsJAKcsxH4ANvwlGalCJeuvUrFqNrKsY
	 Z3cPKc+Hye7dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA270FF5125
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 16:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177557913368.9167.217919727728088060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67aef2379f47fd8b2e569763b46d84b6f7bd72ae90a786f43e06c2ac6c1af63f
Date: Tue, 07 Apr 2026 16:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775579133
