Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F09803093DD
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 15:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766418234; cv=none; b=amYCho90L730Sr/8uoejSqhOoM0ow5SPFYDBD3wVMjf8Tvql4zEFNWj3AipaK7WQstduLKwpnykrIBZzkHxGjZ3NHMr6XSIFjfd1P1tn2CJUGHv/5HXcmmbCZA5JAmOJijI0UpZj+MX9BGJd3P15mttAIHeppdPO7SPk4hN0RhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766418234; c=relaxed/simple;
	bh=khI9zj6aFNB08YbZas7WaFFXDt44cVCtOFzAKFVj8Mk=;
	h=To:Subject:From:Message-Id:Date; b=X19ZkYqTqRolNxMtWxQ5ueBp9T2nHl5BQw7cXZBwuXCfFGyG5hMp5aNq8jusr/VCQkBU6bTaz+IEtBfyIRJ6CQ+DlNXUBnrnM74DlN7HCQApeoQPdnaqhdkRcpJBO5n7YYzJLol56c5uYyRNUvxz2TqQrMC+kkFocAiYqgvMPmg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OsCEdmMa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OsCEdmMa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0927C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 15:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766418233;
	bh=khI9zj6aFNB08YbZas7WaFFXDt44cVCtOFzAKFVj8Mk=;
	h=To:Subject:From:Date:From;
	b=OsCEdmMatQwXRMTl58/QC/qTBn5XJoLM9fXz9dE615aX1yFBYJhkSXU4vW0lI0GVS
	 Xn+HE7KPKO5ecY/zpDP9OztuSmdGbQH+FWS4S1ZzQlFxf1C4AGsgG0SsEm6/auhVGq
	 OWlJ2no6tR0A9LrroTFXI4Do25tNaxM5/o1w2J4oyq/D1rEZK2SxdkGYE/KwMAxZ4I
	 76gzF6JbIgR/tYwq40mpYGIArUhLoWzl81Nz81WUxWTNZ8wQpwDuspZSlWzI/9+tQ5
	 LQ348sKY5hCwbJqLQvxZCxerLt+CtPH3RZCM8wHlma3f+zttk0I3S+XEGhK7d4hl+0
	 YwBY+7/BJr1aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95ACBE677EB
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 15:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176641823358.27211.17319581202224095062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4abd6f65268c1b8d705ae8884f3b1e14a0f79f79740b445a36e3f8eff6aaf8bd
Date: Mon, 22 Dec 2025 15:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766418233
