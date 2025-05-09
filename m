Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3499522AE7E
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746831594; cv=none; b=EE3drdFZMJYBaA0N2V/+1sZHseSTC91WTGw0GTCROtEQcp8NRUdtVA1Cro/7Ee25R08MY8UD4hIbjeWeQSo/zFFd/O9ezO1vKhxeIWoKiOtseVW8vrM94rij3ETtEpl3+pM82HsQvelr8GD3QhAWmiqXSdbHFjLJYbTawJi/Mfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746831594; c=relaxed/simple;
	bh=s/6IanFMKHEVoBQUVGdLVUcibhYCJpB90eH0a2OjkNs=;
	h=To:Subject:From:Message-Id:Date; b=CgDEoJ+cyMa4b9IDsoAQaY4jtF05f6V/Lto3dIX2qX74aZTj5CzHr7bcEw53TTMYuVUCh9iRXFMqBEvTtIrWrTUI2DNCXg1WJSgxcmHxfw268numpSk0+HeA5x5nOiw+bTPj5VImLVLwaihBrl8MmcHGOW4NUnS/9YU6JIvvH2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=olnRKjZI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="olnRKjZI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DC1C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746831593;
	bh=s/6IanFMKHEVoBQUVGdLVUcibhYCJpB90eH0a2OjkNs=;
	h=To:Subject:From:Date:From;
	b=olnRKjZIrkYUrY7Bne7UX8EmNldGMYpbM+PqcuOmeoSGCCG7xm5ISc0ZENKVj3ZnH
	 xq3o+Vjg+x218OtSgh5uckTy02o32MZDFeOEZ/7F5QrEcHdELRqUgS8AxczuHeQSMy
	 55bwLdU63qODyR5JsmhLYIfsZ6SXJzC8ZPRqCBX0D9NPlPqcqM+tGIl9Y497hHatnV
	 7hkq++B9WeAaPS8plJVRhMpd8rR+LnQShpk73V0mfEU/zxAOh7lNLTPo2hOswiP0SN
	 9Vc1Ef/FKsxGkOEXCiRR1/vyj8iWKsfd71mHXSzxc4ROdSyETqLPJmJzw0W5TB5gYH
	 6+nrQBYfbWTRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AF5C3ABBC
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174683159357.10544.9261046671096960354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db9f56c94e825c368dde1f159b40eb0e0373a66c143c8c5b72b49c48d67154cf
Date: Fri, 09 May 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746831593
