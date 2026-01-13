Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 239422857CF
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 14:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768314234; cv=none; b=iLAM7yUeaDyYiCYRDPcrYe7SDOdTANLpSz1yXPT5jZ8/hMQBOpeK8VxmOtzYs5mZlpbgKvUkSrEjkwD9C1Nhq+4zz0FdDIqyPAf4ZiJqjQ4c9DHjH46QuzwgXl09TP1zSvu+cBjmDxWN9fZVpflsGH5Q2vfFIuHsxeEBaOQwU0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768314234; c=relaxed/simple;
	bh=divO6UJkbPtKvhRi/EUIHewETLrYL7w1rZI3dA2tikE=;
	h=To:Subject:From:Message-Id:Date; b=i2VYWQRrW4I8w2flOh9O1zFIqoLoZOGs8ynS0QRMHEq+EaCkyRD4IfnqtzwVKPpNPKeE7AYzHfD3YMYTq/lWeu80TcTjN5GFmRWeTTyafeHscbkB+9at27CuFBmMZeMu1kl+YPlUwLo7k36ZXtq+Xgafhu0QdsRj5gZe5xEopgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lC34k8u+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lC34k8u+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C33C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 14:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768314233;
	bh=divO6UJkbPtKvhRi/EUIHewETLrYL7w1rZI3dA2tikE=;
	h=To:Subject:From:Date:From;
	b=lC34k8u+fwdDy+mnB4ur1/DE332Daz7AJFQu2x2F4TukRs6phB2ZUpEZxD4+Uc0CT
	 5ok9borcpvA3jtdn1ZfOiqf46De4a2+KA4ReLR/prRNHLtGXQxACWYMdUABTXVMnFP
	 s1SmL8/+Kn5PH8pHb8uTTjCnlGLwfbOCffrK5C5YbMsD+m3OEgmse9Xi1Z0Ef0M8hg
	 DsAUIuAgDPYgHpUWq8Z9DB3dPxKuQydXtnCbp6iYsTY0Vvf1xjMdwLjIVdNtqeWu0T
	 +bQsPX1IEFZMmit8z1z3jsi9AniBbtdLyxdkvIFhisfWl+kajltB6Y6ndH1wLSywbl
	 MJe5TwkIzl7AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95318D2D10E
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 14:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176831423360.14323.9865087666881551357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 881d9bd83357835f718775c27f77aca09f0247468b2d2bf4c6bbc6f667bb381a
Date: Tue, 13 Jan 2026 14:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768314233
