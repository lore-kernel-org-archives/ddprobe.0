Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A0A32A1C7
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754367595; cv=none; b=i8uwxx/X4uhAQP7ylGvAN7J45thpsR9q0/oUQRy9yOUTU1i5DAPDZETLQumN1KSsYI+Jz5bCDdkGyMhveKdh0Tt29IQ36E5Lko7eXzpJotVBFB9IUpb4B1AZL0kJITDqz6kiBMXpvmvo/IAbGWnTEMboLXtA9zoT10hk+dsH3dc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754367595; c=relaxed/simple;
	bh=vXDT2p7R6VMUXO8beLSb7WiTcAYPPKbjX9aRYGRPDQw=;
	h=To:Subject:From:Message-Id:Date; b=jYDvWuYOarGWh3SesttLWx/fXgL6y0ACPWmuMCXPvjZV129wVEIj/l2li8S3JIA6BjUXOGl1JApzcwyz605x8QFW+LxffZINdAbISm2lPcZLzXn2KMaDCI97zVtyeL/nN0/eyFtyJ8vObOEc/h/SXkTF5q+X2N7YJUVNns8/DQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dIC4LEa6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dIC4LEa6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1C29C4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754367593;
	bh=vXDT2p7R6VMUXO8beLSb7WiTcAYPPKbjX9aRYGRPDQw=;
	h=To:Subject:From:Date:From;
	b=dIC4LEa6atlqQLzPGyG+C7A8DIa/A2VzsdWL8aK2k4H1WMf6YjtxYZGvV0Zoix9GE
	 4FnYSI3EBdo2KuG/oy1adJo+tAcIxQMCZklLjyOBDUIO9NdyZyIfUOzFtzEH9cZS2s
	 0GukU1VPIjS+ZHVQhOygPlQAIpyUJQGOF6vYhMVl3lcFODuAjNr97OVGYSUAUnFBkG
	 3rRpwb6wNsQriBlVdXkv0vA/XPtmSRo8XvGd820w2XoU0yt54ed6jJLJGfEanduR1T
	 Mil0AJ+gNW5lWOUt8wU2aIpekMfiK/MZmBMugnN+QVGzzi+MLG2aTwzFj0s5Ajc392
	 E4DUUtZ5LJbBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C36EC87FD1
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175436759361.24838.1038166537341724344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3dc1307c2d952921723c1d452388b7fbd4b4f64eb983fc8473e5d06e8a1da772
Date: Tue, 05 Aug 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754367593
