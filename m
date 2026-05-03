Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42BAB175A6D
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 10:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777804054; cv=none; b=bbtI7m3derlah8UzGSKCbLhonhl6/UCmL5yy3wI0Y5eei+kQjMPIpM/O7tldr/DFeQvetCx4R9ZyrWXdRFsG3TMldvpzHcai9bLvtExLME8i5AJdZ9/f/ptCAM2bYxAjuTqzA/GIAa8/ae2kswfCY+wjEQaAVLg+6f84yQKLbWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777804054; c=relaxed/simple;
	bh=A1DJmsopvSpyT2xr27tLLuXXKKcju/Wd6pncZ3krGPg=;
	h=To:Subject:From:Message-Id:Date; b=CNEJsFq12DHMF4MLXZANjQ/gevl6UYX1lyZzviMgKh7D+lDufNMgy9r/XD26Ij9qIggSjVjlb/FDaL4qLD7VIpke5cMTPt5j5duKsvaaDfzDDNZnQPtW+e9TtA9kAM/8U6+HtMbpjq46w8baBoah80qhJSuQt+/R3c4aIBZqFy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hafJp5aN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hafJp5aN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BED1BC2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 10:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777804053;
	bh=A1DJmsopvSpyT2xr27tLLuXXKKcju/Wd6pncZ3krGPg=;
	h=To:Subject:From:Date:From;
	b=hafJp5aN3dLES+bFbMWu0ZwcQfZDViF0gbotbfAfhAkiAC3i+Dskk8tceSmsx5ilW
	 X67NpDNoiSwo85FxwmB9G0jRm6ILs0DH9w3Wx8TE2fsAqSFiTniRWjNEQp3ov9LsAS
	 TEx49RboQDYzo+RSvHGxuhSVN6IOLACbcy8Dcu3m0vS1Ew/SKkThjLeFL8OXXPzYoC
	 lJ6FgPeT8RBF6yy/OxGfxuUz7QXcZIBH5/6V1Wtk55NI8yw1CmvDqzf/ncuNgLK9OB
	 rEuRIDJNJl8iJNK3yVaEIK1JGLQoL0mRejBTYIPKVO6OMJzLr9AuSV1Oh+JGOJSzKQ
	 3/GUJJcF17vLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA2C5FF885A
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 10:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177780405368.3501.7393211292655664802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b2a964f85e14f85e7e0029a8f1e44a05778699690385fc9fbc46732e6ec0926
Date: Sun, 03 May 2026 10:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777804053
