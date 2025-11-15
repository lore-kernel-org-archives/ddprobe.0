Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A9212FB0B4
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763214594; cv=none; b=CXPanWAhZrmmrmjPfybTK/HwOXaxXnodAHrFgFbWVU2pZT5ilfgt+3sgFuUl71eJAGIbcNo2gwaK9yeatY2zC9lQSzDya7hq7S6Gy551c0/jofuXvhaY4BXGE1/jSCFwvm45cAk6u88+t1YcqBGgaTIUCtnm6B2bt5Hqcu3H7fk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763214594; c=relaxed/simple;
	bh=ogqFGSRIvcld+I1ANlepA7cqvmI7+xqN65yoMNYdy30=;
	h=To:Subject:From:Message-Id:Date; b=qpuNEuhEQKpM75jswAwROJnim6yQaHFHnEbA9cizKWPS1m0fXDWUJPdBGRceO3MwMdmOsu1f9usd9iYHOvZWUgqHvhi58QGc8fF+6mj+Y2QyvEZwludk9dtYFP+KryWM/jrtmaiPdXbH9qQAQaVfklu5gXHujHp/e9gR/ZhYxRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lg+G/QGI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lg+G/QGI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCD99C116D0
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763214593;
	bh=ogqFGSRIvcld+I1ANlepA7cqvmI7+xqN65yoMNYdy30=;
	h=To:Subject:From:Date:From;
	b=lg+G/QGI6wWBepryYosM2hIT6zL6FIjAOKze0NsKXPRqhmXy9Zc/6QI1q6/WJSUtt
	 KzWIWWuC+sFxlKmb8HCittmoZ5+STTUH1Zwj25M2OHA2rtDKvZ0gaxRQOKvH4ltBbg
	 b/wDJkRUl+XdgT+dNCD4st+AD2JmOuAMnCto8uF/rKv2tSYBfqtRZMBzaR0/QKhdj9
	 gQpKwJpHyR2GG3ebxe7llnYuzbOV4Udd1lIoyKUq2yHbFvAV7Lm7OVJkRMPHqykPe2
	 R9eA32o8+HokNkYfHY3BZGM4lvYAXQrD3lwBMtGj6G/Ur+S9AFyO/8OdbuYE/2urZh
	 ipKZhiEtwd84w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E3DCEB2D8
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176321459361.10822.2745474848494834586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 310a7ec849d0fe7fb3e9b784c1ed5201f999ba24c55a9591a21795a12d64970f
Date: Sat, 15 Nov 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763214593
