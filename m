Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48B831662EF
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738918554; cv=none; b=k8hrSuYpUgxoUa4XGWSJfrU8klhaJWLNz7k34HH8xON1S4qCimYv3FloBORQtd4AbnYFNI/DdG+hsUVl2y8ozwhUNDUeinYDHl6NqhsYtBsXhAmCMMvYhZ39Zrq7SMPCt0fo7NYUgVdpAEK8GiXH41f2Pe4rrejILFSUeJDO50w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738918554; c=relaxed/simple;
	bh=u4NvzYzZ5AN+Vz10yW+fKXArAOoSjb8wthtQ+j1/Pog=;
	h=To:Subject:From:Message-Id:Date; b=t9nQHSxQjpFePE8+qim7QxzxMb3flSA40tWS1wRBZ2PUuVpgC0KvyingiVhkI5NcfQpJAtrFY5sMLQUQP9QYUtwFymU+YQffkH4/T2KUhHRDwMZ3kXiqfdbQ8w/fu1CpyP1qsrGjWYlpnPk7tLAuzfK/ajf6NOohYXfaL9t4mKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dhIgmE8O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dhIgmE8O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF82AC4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738918553;
	bh=u4NvzYzZ5AN+Vz10yW+fKXArAOoSjb8wthtQ+j1/Pog=;
	h=To:Subject:From:Date:From;
	b=dhIgmE8O0Aadl704tmKZ/3nt0VxvQ/GEfpCMQOM7vz+DlHGfDvVvo9MPW8RPXhCNa
	 qWu7Jebi/1KYp4WsAiy6I2ajNF6/2gr8xa8cpc4cGQnxrwcAAmuQxueXu05CUVLKqU
	 QTMJ0meaQpQfHkSOBEK5cn05Ua2CHZnGlA+xM1ivO/w2bCYCKCKEwqY+ypUioHmPk/
	 UNKUxQO+C5CFnM6RoRESruBKKs7zmoko5slrBU8t6usD32DXTuYUFVFdBHfsUobhej
	 8Z1ZkFiobCD1GhYvc1LTJaHp/zuTb1J+peLUSFfKR9cx/SJXYe1xfcL6Q3ymjhs7x1
	 LcvoIy8CaqoXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C4EC02192
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173891855360.8438.1134767661731726005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94c6e98a571f55b8a69d479b9de1fb5075379856457c6187d86de82b351f9555
Date: Fri, 07 Feb 2025 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738918553
