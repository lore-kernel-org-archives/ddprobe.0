Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B3FD3859E1
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 22:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773354894; cv=none; b=VkKxKev12eV9L9FxIVXRPSIXBXMwkkWrGxGkXyGkSufQE4kekesFgm1+9Y5LDGHA6EU3dLGv2Wlz48EOQ0iUquCpoiEPOcHHxbjZc4kTWuCWrJdGeB9WwVxmFy6+V9pU1q2nPZx9LjLVeU3KRXBs5wx7VyscVy5uazcYhHDuUjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773354894; c=relaxed/simple;
	bh=Pd0xGFmpMg885OpCyWfLj8WQmxl4gr2nzojikX1Zd9c=;
	h=To:Subject:From:Message-Id:Date; b=W23SsVwBwBQELmkUbTvFLGvzOfsXzHQWs3UE5JkLDzBbVFiutK/ZN+74gXj29sI5D9ypMv663q5z0o1DDr/QNbOOP+hwJlkWFS9PXOqrD2oZ4RyWXnrIVe/D3Ugyge1yneAzrT6BojZd8cVvCzaC81U2VaihNL1or4lsZx684kQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a1eMvZO9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a1eMvZO9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A704AC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 22:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773354893;
	bh=Pd0xGFmpMg885OpCyWfLj8WQmxl4gr2nzojikX1Zd9c=;
	h=To:Subject:From:Date:From;
	b=a1eMvZO9tudgVaoVC4qD+8i1U+kx/6OSqyn2HIDNH1ZwnLTv4ZzIVMLPCDo7sF55s
	 +pHsbEjRME4O7wg96VpGPxvNV5M8FAyltRphjY/OMOn70hJfuhaNHMp+cno4zTep+5
	 O945Tsrd8qYPFaOV+TzNC3N0N1TGbA96EmHwp2ubMw/00HrCgnrRVGwCD5QdlBrt/J
	 D+GPWMQwbcSNI33/4ui5hq3ENJeQZYzBB/LqSAATAHYmvZlBIdfSZj5kpLonGdVvci
	 nY0+6Va0470TQYI9zUeR60DKl0yb9u7c4drMdrux+vl5B02f1CsZ6g2yuSSzy/Yhiw
	 6LdcRNQgZYAsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9266C106ACF0
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 22:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177335489357.517.9222829476847576252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3de820805f42de8d12271a9329a49e7d1f834a33e6c57270c7eab7b0739d7548
Date: Thu, 12 Mar 2026 22:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773354893
