Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 173B5502D58
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 12:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790683234; cv=none; b=BkECWPxUKhlYrFAH0XaMNDIcgtOgpgCbqnwmcKY4WGQ7/ooAPX0+qfZ5iPoZp5a2eCrQHl3EDgBr4961bfAyaQq+Dmo9jwgQ/4sfWj021vsSY1Eq/FXSBFa34twedBBgBYrxp3494Y10+YjGF39popcPS4nSGqBnimJXiTFB7PI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790683234; c=relaxed/simple;
	bh=T4hOQM1ualIBnO+qwohRN919pgBuWNINVxTlQb6IOBM=;
	h=To:Subject:From:Message-Id:Date; b=bZkRkqHtQCxcmIGkjH6YIL5ulgQK5xYs9t1RzrY917BuHtbFl7YfRVeRreOLXjv4wVUVvT8E3jUgyY/mE7ZdOdfwfGpsv7tGqeMHf0lMmoOuRtMElv5/4RMv/3nLYQC5ESkoYvuz+Xmc9VJNAfeE01sL85wF6SR/ZYhAcOUrBM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p5SM4u0V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p5SM4u0V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2B9AC2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790683233;
	bh=T4hOQM1ualIBnO+qwohRN919pgBuWNINVxTlQb6IOBM=;
	h=To:Subject:From:Date:From;
	b=p5SM4u0VTgnWE+qa5/OwXwfY8tVzZAGYc6SB6m9Q8m7DAwp0ZX+8MQqD1wkvFsRU+
	 QShj+MmeAmWIAbY1RjtT9imUFJ3lgXv/BJyOQrux5V3kQ0+p+G/3EY/qvh0WRcjV6m
	 DEZCICrJYUBCvthe/mFOUZSiz9r1820EO8cEbdMDEOx1wFyUQ1BT8GQQOQBcN9bEE3
	 x6IEKg8nOetLVjzJq8SglPZhNEdHkS5wn0SFTC22nMHXCKA28x/BLvo94pmeyT0B+s
	 NMzQsEjNTue8HYI+GS6eGhwvRcAkpy1lBuiNda+mW6QsgDr+t3znTpNySAmVj3rQ1W
	 lhQpIVn8O4d6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB7F8CA5FA5
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179068323369.11587.17614288310633571368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21c35ae1477a7b3c8ae75e3e862c6ec6fa269d12798ab801a787f14f990b14f8
Date: Tue, 29 Sep 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790683233
