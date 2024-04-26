Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E1E7125AE
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 21:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714168343; cv=none; b=bNj4es3ZDmm519VzKN6tRF1RE23YRHffxyLKhwQT4RO1jzbVJuMB4Wt6iBmfd/wJ8E7cjdI9b+aY7pgL4D5zjHLrZHV6mzuXbogxn654uC8tLHWMb6H0187puP473kDD38/Uz86nh0gn0c/3sUg+VrbY7ygVXMU3gNNtwCR1oXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714168343; c=relaxed/simple;
	bh=/zqK8QEMmQ/xGbuELkbmQYFCfoztvs+82J7jMeztUFI=;
	h=To:Subject:From:Message-Id:Date; b=Mv9h+taGiUdOeYWRmKAtp9vxvuxm7jnhHFShA4NxLrmAWJOY12RYqy67eJXVYhj292862yeVPXnMtk3e3BAlQEnC+mjCYCJCFyFAVDA9VamvVvNVgpMQhgVtDdN0Qmya1PQ1JRUI7Gwwqg4l1gV9Q2OhOA8RFtQrx3p2tVCNuLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mNz2fK5c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mNz2fK5c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E33AAC113CD
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 21:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714168342;
	bh=/zqK8QEMmQ/xGbuELkbmQYFCfoztvs+82J7jMeztUFI=;
	h=To:Subject:From:Date:From;
	b=mNz2fK5cCeSc5z4hUG0EtseFarcU+MBEBfZzZNnWes5NVv+pjVpfiN/t7rSmvJVxK
	 1JKYJcJFG7JUfghN8zZ3TmjKea/3ORSv/Dtq6SXycgKeZ3TQEATs+fjD2htX2Mnwrd
	 rErYGvYoSYFb4EP4zH9kqSnw/eGmZMD2Ba+D6oPr8UdNHTtgPid70s+o3XxKc4oaS2
	 b+FqDVskrAR4+2PVvcynpoxNuM18epT2bi4zULE9GEF91Pc8TnovX1V/mXTZIPhaZW
	 mI9iOAc+2UR/FsmDll6R68G0iGfv409N39JrBa5YMSazjNqDnHS//URF06qnZ1tpyV
	 rPXsOrqcH8nRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAF73C4345F
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 21:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171416834280.25970.15713776973573409413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf5f03863f2c7ddfd3de91263b64e9e448add53a4917ce18cbe7095b1af7a900
Date: Fri, 26 Apr 2024 21:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714168342
