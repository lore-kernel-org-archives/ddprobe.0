Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 578A760DE9
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 11:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714650143; cv=none; b=EYHIH7bSFngZTraobM/5vqycuGNNIFyXGvnDA+sLwDDDOjovzbMbWpUlRP45Uh9bJdWbmJdvA9zHSsnJuSUZz6l0sB6vqGyoHI8sIYFMfWHpXzZYrQoARXE9Hp/PdlEX8K65NrctpLay9+TKs+YZ/+crESAe7/ZagMwp8Ks98B8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714650143; c=relaxed/simple;
	bh=m9YmzLpuWwlAQnsnjvk7iI8urvoMJIcjzsouJzBqRXE=;
	h=To:Subject:From:Message-Id:Date; b=dJoxL7P++xzfasXql1OYUJcoMFv2mnMTzF3APX0ucdvwzECovIOTCB+O5sm0/0MBWqvCPCfmn8JSOUc9ks4mRkmAaQSA0juKt0cuyFcfivhjMU9ek7yiH9zLVqOgGdMA/oU/SQCVQo5hySb9PWM/L16GzrqYE01h2HZVj5ovi98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WleRn0hK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WleRn0hK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D421CC113CC
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 11:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714650142;
	bh=m9YmzLpuWwlAQnsnjvk7iI8urvoMJIcjzsouJzBqRXE=;
	h=To:Subject:From:Date:From;
	b=WleRn0hKLI5L19haIXDpC8COqib3t+EL/Oa6KkrKkKIiwzVxjjvJDcrbRhDk+qlf6
	 5N1lJ+J57zlBc3KfDk4ZiJ3AAjkj5RMvOpB0EFA6LnpUuOchY+wgkmjeCtaqYbTtMY
	 9Oj9F6Rk6HrICNnwoLgj1Y8WKRdr7gdm0eYAJ+rlWYkoWa/L2YhHvO56cR9MfXCLmD
	 pZ3ic5IC7wsVqzjvlhVmYGjSfdQy5Kx8101Mvwxex95yAbnB9THUdGKdhbb9vLtCBw
	 fmuOPfRSTGnd8Dci3WJePiIkb6z5O4hPLh/RhM/Z/MTCwmn5MQ9RAPIRYqMe0yuOU4
	 nHxwH/x6X+0Qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C39BEC4345F
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 11:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171465014279.27836.12930859175069473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d3e74dc2c7fbe0146a03cca6b7646883ec24a71972f23c29d437101c631ef4c
Date: Thu, 02 May 2024 11:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714650142
