Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7E9C380
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 00:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712448497; cv=none; b=FfLNHXQwz7FBdMn0PqveaVIqTr4nlrCoWHT6qHbJuxpB8UfCK8e8TGrgahlGm9F3e6m69OxHgeyj7+ZPxxG2pMohtW0JqFcM8BY6jBwq2wFFVgv+VRbWftThaB5UJxvkEgQuGWL/PamsLhPtHKXQKDWjw2efQrwdFjDaJeXVUnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712448497; c=relaxed/simple;
	bh=C9/EyxT3rSPBmx+nQA6LUtOisJ+eq+FaVxAxtqwxWfA=;
	h=To:Subject:From:Message-Id:Date; b=Bw/pWQNWoKf4noBa+b5EDIp/i8+95WNRyHQ3tWmV3CtTk1GJDuZkDMK5noM0336AQ3X3WMvJduLcPRniCV0dCkyDlBOU1DdDUaXwupnY/vKlbJwfE8xSjU9W35oIMCBmlA4dtPDYXh1j/koXV8gQGLZFfj15XXL/nkurflboOoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TLKC/tcE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TLKC/tcE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A17DC433C7
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 00:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712448496;
	bh=C9/EyxT3rSPBmx+nQA6LUtOisJ+eq+FaVxAxtqwxWfA=;
	h=To:Subject:From:Date:From;
	b=TLKC/tcEuHrq8TOeGr5pTELwQ9gmKAGQYcFZX6Nl9WUc+STYn/yBuDH2a2HXeoHi1
	 i6CdjnR1fv5cMG12dXezylgcAWM2Ax7+F3AKwleXJklP0EgAOP6LXdh9MeXxswWD/a
	 /+E1nPuuRmyssykDxSyhbuHmf3gQzMh4ijeK8734lJv/3IPtqp80W4TIC3Xeh9n5RZ
	 e7W2RAaoJcc/aCsRx6f3daemD3bgs9zBIyZ59ngUpMBErChb1qDHU26+xPn3s5ofY6
	 oz596giPhYHglPNqo6NY1aqAC0SzFsXboJt2YkjMlFDP8Nf/EC0Cxp4UJZgBM+HVcl
	 kaeg1KhOCS4Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68823C67861
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 00:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171244849640.18077.6931873378154892772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be4ba0727f173a0b86a25e6cd57b63e897909611e5450cf41af2acb8916bf3fc
Date: Sun, 07 Apr 2024 00:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712448496
