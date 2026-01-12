Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B30A35FF4A
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 15:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768232034; cv=none; b=s2W8Pm+UHlWusE8h5UxJThgDEvBtDZ3OFHwk5wydEsMqNkUhr9hYWcnZJ6O+BOLGVBhqfCtBH9lDTDYJeTwoyiIX83/j6k+JUkzroUy4+KMCCD2mcYrRLSc6U57V/E4XbMQ26vXodZJMChus+tGLSV7jKy3PPccKREdS+wWwEz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768232034; c=relaxed/simple;
	bh=jlC8ZBRLX/R6ejfYtoAxT/79XjnnIZNNjm+SUgwOHP8=;
	h=To:Subject:From:Message-Id:Date; b=qZhM11xxLFaxYcOhbcVyTMjHqgBdUjukP0qPfddf32+8xeMFm1UMqNhvyyo30fpJ8x9RBmnEvJO+0INPArkawjwlPfo2ruhUbySkytVcmTOEfJMv0dENClcpWpSqjcveP8HbqIkLUNVK1L6jGbPZ7I/p3TZC0Uw37NPZqo7ZMwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JEFl0ZWV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JEFl0ZWV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3915C19423
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 15:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768232033;
	bh=jlC8ZBRLX/R6ejfYtoAxT/79XjnnIZNNjm+SUgwOHP8=;
	h=To:Subject:From:Date:From;
	b=JEFl0ZWVFSYB+Br0nyWlEy4yIn1zesN3m8K+b/a4tV52PVHQzN/wbYv6se1m77mZ8
	 Nza8YP7dHITLMG2nEIued2tHgmAUljA3qSYnXYWqBELy8qeK4Tl74iAH/JeRM7pMPm
	 M3nk/nXeUEkXIK2DyaOB+vw3B19WkQ3zPJat+/hB5PEQvR7oWqrkENyvR32PnayRvu
	 N3wWkFLW4BuDx0QnrrzaDXOQE9E9E/hPWC7NKjU+DXdPIQts+QCNyA7Ezs0X4YqiqS
	 70mT/VQ3SK45rzCAyTIy2QoB1Tk2JNw/MUmSO8fckpRPqyc4qyDAaXIptaBBN4XBLU
	 CudxXTafsrZZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9335BC9EC8D
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 15:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176823203359.10179.3853953519416720761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1694fcf6971f9b0874ea5ce88eb0f1b01dcc56f1077c79a9baeb73a4d5dd5f92
Date: Mon, 12 Jan 2026 15:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768232033
