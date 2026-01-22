Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 163372BE7D6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 00:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769042034; cv=none; b=eXr1f7qFhAxUVSqu6HE1w9ocwxPbLDOmHBo5I7nPnWzoE3iHQE50iBdrmp+ySrIwfNLPc0L3hXOmp8lH83vBdQG/JbQqOwpbBmrzxZPU3BK29wskX8hHabkrtodKJ6IjdWBvIYBZR1Cz5igrpB6StOQaN9x6BcomJtXumwPfSfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769042034; c=relaxed/simple;
	bh=GqtMG7dxHUyWBcN1+pPhU+tw8XKN0mtIWxv4bCsJ0W0=;
	h=To:Subject:From:Message-Id:Date; b=rHjqZrFKjPpWCaoC1NjGwdIKAa5sSy8flePNmBcqd5kLjSbFrU9Hl+KFhTXtgH5ye9kKZWn66f//khHdJCLUjsC9E5TETVXmrlc+geBUaVZzJk79ZyU9ZQZmdvpqgcxxg0XW3UZnsQAspy7AEsX9QiIYkB37+bvk+5IQUrSwiUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nRkAbwbi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nRkAbwbi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31CCC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 00:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769042033;
	bh=GqtMG7dxHUyWBcN1+pPhU+tw8XKN0mtIWxv4bCsJ0W0=;
	h=To:Subject:From:Date:From;
	b=nRkAbwbi/sXg3MaJ9z6JpdqUCI8pwuYucTvHni2r8ic2Kd6u//VHbPmVYR9A/W/ek
	 QEhWto516SuMIVmrm8kr301wtU5RWxKIISNaQxDbCrcGFk9mw6s+/4GFdNOrkuDRlh
	 08Ai0oLY7MO4814UmayUM/Lq7J0hkRJVTYHo0I80VQocYI88qBZBRslyTBrrJUH/wj
	 znK5hfcUcItwX1JBC62NmNc4rF1xIUvF32P42vJm7OcElUX8kwDliguGFwLxafiCmS
	 8YgmNdEcQ5eCySk4Moj4LckVR0jlwVFp92GQgSMsps1Xr5YELGjhxQ1sKwQ4CYajDC
	 01vnG8h4e1eOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9264BC44536
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 00:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176904203359.17354.7631888682775429600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49c553727ca4690956e2b9a9628fa736658cb82f43ee2a485e194adc180c53a4
Date: Thu, 22 Jan 2026 00:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769042033
