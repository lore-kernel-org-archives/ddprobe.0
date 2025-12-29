Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 757D230DD09
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 11:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767008634; cv=none; b=ktS0mYcl0jC7U3/hAkwJ7BXsEyya06OFkSPxy0BRPmV+7IB7YlYn8Psczgi/HKEEzeLmbTV7xQFhoVsEqnkJwn3dmUaciTx+3HTmJTxAcM8XT3LSDUMPWgcWp95a5J9QfGHLlBYBUItnej50BsP3qKnfEtSsaegmslOYwmFfLM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767008634; c=relaxed/simple;
	bh=BIqoimg5Bv84gMUKsFZ8w46oZHRHuthwOdOD0HVj2X0=;
	h=To:Subject:From:Message-Id:Date; b=hxs9E9FmaN31emDUJTKuLQtqq+K2nxwdMV4fQXzoWx9f2E3im6H0ot0VNrrMx9YJkCEhLA+MumFzqKgiZe35E4Mtd8oTLdM6OiWHoyjuuNfHwu8fd0QuRby3BrSI65Gwl8F+X5/f1jNxgEev6UFTxu/UgawWN5BAEqgqpz6SDZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dgAb6WGR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dgAb6WGR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9587C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 11:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767008633;
	bh=BIqoimg5Bv84gMUKsFZ8w46oZHRHuthwOdOD0HVj2X0=;
	h=To:Subject:From:Date:From;
	b=dgAb6WGR7QeLQRI3mhlFK+3hTfzftFfJxRCEAwpZcwcDwCT557x1kbplY3pMu07tK
	 CJSWlgwDQf11TqOFiWC+iYKHZULoY4BIdU9xvhkgIrulkcy+WElxfdf8s6XpzW/HY7
	 K1PCkvT6XGJO4+47IQDD5ywLbVxlQuxC+uCC/eyg1TCCB2cHrDp3FGyMemqoSN+uEB
	 lK8rWDI9gjz9aGgnE9p7KbOOtS6AfPcHDm993Hz1v7B+uu07ELTOl7ftkFQNbPITcW
	 02ftPjyrk08tM7TZ4jDMTslMnM3IxV1wD/LejYznk7iaz8n/lbtylm85DOusUa4zWx
	 bMf/AgqaeEKDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 944FAE8FDB1
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 11:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176700863359.10716.13749860621322061567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11bcefa612d516d32fb57767fd1eeaf3f67d172235f52a67430720e4a27d7c0e
Date: Mon, 29 Dec 2025 11:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767008633
