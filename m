Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 483CE25A645
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 21:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785532834; cv=none; b=ctAVd0yYOhu9VmwdNwg51AFX3FfzncrEWZQV7Lu8Zey1eeki+PRmqxLxzGeo43GUAJqcV4es3p1zCnaplp/jB1h8MRqBFd4pbmqOYWs0YbQSlvpjMvzPxCCmgBlJFtf2FufbEpXar6Ou4thRk3X5QKFLkv46T5lZTd7x286jkoI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785532834; c=relaxed/simple;
	bh=dK30vVzBSwcKRjXqK6OIRT3A8Yk99oPOyNtpSGU4RW0=;
	h=To:Subject:From:Message-Id:Date; b=eoHUTpuFwZ0D9zT4WeArzOsO7NwHVJvURHq5A7vCPtmK0ZNOVRsIYOmShcCw+OXepZMdn9xYUbj4Yo+L3xxI0gc/W9wIz7Af+F/Yg/NzyaPMMcKs5QushD/2ZJ4y2kWbGt7975SQfB6EE18yxhc1kOxCfIM0ykX5womB2Lrm0OM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rw0zI8en; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rw0zI8en"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF46CC2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785532833;
	bh=dK30vVzBSwcKRjXqK6OIRT3A8Yk99oPOyNtpSGU4RW0=;
	h=To:Subject:From:Date:From;
	b=Rw0zI8enakRUQKH+XlErXFlMyx3ph9LQzg7QLKmZa9WkhwSaarAPSr5XFCz3s0J/L
	 YnSYdlpGPw4ZKOQyUUzGtvVdLeXxD0M9BHZ7cp7eE7wT0SKw9ZnlhBx3kD5S3o+vJp
	 sLUtH3nurQQ2DCFYpaNiUVPaFqlPOhdchCti8ZyBR8Tw/XqQcpUpIcphkKeZVoIoQb
	 Htoo8T/Al7I83QD4MPXkTSEvXgWtAC45NmMQRnghOoLeB0uxV+uoGti+Gxd5TaFsFh
	 5D93U4VFSQEWTNMTwuYS44ioCCIxpY+DuDhYxNU7mg/Im+hDy00h/MPZ7eJtabpmWv
	 exa29sSFVQS4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC62C55172
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178553283368.3256.10475998591020336084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d2a2702c281afa78bcf144bce8efe7d6e17b891e0f7fb217b23597def1c503e
Date: Fri, 31 Jul 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785532833
