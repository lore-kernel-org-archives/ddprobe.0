Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27D4D33468D
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760674794; cv=none; b=X6X2ZZNsgnbKdaU5lzip+yG1TVp8SN4xmhQynAzTY+gOYBOsykUebqLhYN0exZJeKOUEd0ZDiWKXn6WDMsN/xiPTVMt7QCjK9/w8rs5WVLAV6s8IlYQObNe9Tv4NwgFR+ODN+beCB3RQ7ETb+JRVZDPO1JvMLACU5bHqKmr0dn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760674794; c=relaxed/simple;
	bh=YtcpUSZFczn0z/TCT7SNRkuk/R7sI1xVthMFZDI/3zg=;
	h=To:Subject:From:Message-Id:Date; b=hWDCWsjCkIqvtXfpW8w0j+Zt3uI0Q5zgbNALKLl3N7mQIEUl9FenyKwpMwcePEtHWFULUpHQMy6shFk9a/vJNHQPV0tkbeKnR6aYCOzlTfLnQq8510a+quKFagrk7oPJFhog4J/d5uXearYCQv5Tqhtw0LKxS0F3hM0b0stvSjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o/L6uKbh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o/L6uKbh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B14D4C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760674793;
	bh=YtcpUSZFczn0z/TCT7SNRkuk/R7sI1xVthMFZDI/3zg=;
	h=To:Subject:From:Date:From;
	b=o/L6uKbhYqSyesvkskyygpJ4ArRf0E+vKIGq2w679KvmYHRoDKeORKJ/sZ5qLkGAS
	 ZRk40p4Mh7YZAsH/cyyTkW9AFGyvlJSSfNGEmtznfSES+HbrOo5PDMIOe+NvRzL7rk
	 u3Y29T5Q8nwojlBO0GdaCeCfNC3nqDK/rgT//UVxiIHa0/zxy0Pwnq7zXIx31sEEGZ
	 znOZ0z2e5GbnNnybBIQoHmyf4kGIXhtGE/U1K/PpzAY3Q9wMZbVQ9xWpy+SCy1q7xU
	 dVZN9xHNDSDlmnnTgGDD58C/BMz2ka9eVYStBEdV6PMNvJxNVLGb0DaUbil2SYbR1r
	 1Az5nRlOvCG4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A88DCCD184
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176067479359.5073.10918558306560302219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 222de1e92a526a66c68fbe166f7f0aaee6522a2a87ee5202e2eefd62c0dcec5e
Date: Fri, 17 Oct 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760674793
