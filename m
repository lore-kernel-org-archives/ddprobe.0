Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EC231DF73C
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763196594; cv=none; b=h/oIehui/cA9XrC/F3GjFiWuTn9xipEyiGklQfYUVXXuXDfRNd3YwHN3/TddHfs70JjCUHL16tCbHwlbq7Lc5vFmyyVbrpn/ylk10BjEVwFRhMzPun+8aVaIDcV5rXCUkU0kKj5Ymgy+KZTatxfDHWfWhI4TAPaJAR125Vi0WAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763196594; c=relaxed/simple;
	bh=PohHn1Q0qiH+yAv3MLVFkw2rtZW4S8cAbbx2nAcyRes=;
	h=To:Subject:From:Message-Id:Date; b=i+NolPATBJ03w2cfxXd+geUc5Nm3S+jYTb1e4wyaUJ08B6BCUY93snqf2jUscR5X2IQpRYW1u8b6Fni/L5ttIUIISmClngLOlCvU+uXsZ7aw67TiHtWzaZqK0nfLGKkjyFU0MW6PMYdAejC3Rs8OaecM0fH8XS67p6MZhPx2Up4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OZASrKuF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OZASrKuF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9782C113D0
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763196593;
	bh=PohHn1Q0qiH+yAv3MLVFkw2rtZW4S8cAbbx2nAcyRes=;
	h=To:Subject:From:Date:From;
	b=OZASrKuFdPfTMD4sTIeL8ZK+WVsikqYtyj94fmzogSUdWhnVrUi//nWP9EdsEZkeS
	 X+TekJ1REs00exxP54lLv85Vu0NORv/CVnokLzk11GSw3tCYgCzqSVh8qL5NstfihU
	 cPQTVlfF8l3KE8Ql3/t0M9eS/4wtLEq7LrVG3XxGccmRmLm4kXKDHeayZtpIfG9a0h
	 dBxBXMcPSeMUVm1LQaHAIcOE2TUGmO+/nkQ3kaAqHiOtdi2bPil1EbWQPhG2dzpi2V
	 xAUpp4/sAs28tzd6uRXIy6MrkpB3uUsuJxTt76zvpnzco2koT06PdNRjNWfe8UUU7D
	 oj+nNBTjtDzUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9AF7CEB2C7
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176319659364.3022.16950327288335977262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b47c66a01ba3d731306cbb1677d2a9e43ff775b2e9bc6fd189f36b54c2f2d07
Date: Sat, 15 Nov 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763196593
