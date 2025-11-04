Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26E8732E74B
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762279194; cv=none; b=lqYej3o+c++2N/6WfPsAcO2tAkmnU3oiB4cWU7L/18k1tH9XOCeYIz5KYKgQlVcdFn/eBCxjpVEdsaGcNMcBULNNxHtPnRPju6UVZjqKw5gTVe5lDPIXpVU5OI/yd3GPqaTpQE6yvipqh03I42Omvg0Ts3HOJzX805OoKRnspIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762279194; c=relaxed/simple;
	bh=6xdLi89DVrrGRk2qQqRQSEuQBmiqGmtMzszXmWhr7D4=;
	h=To:Subject:From:Message-Id:Date; b=ilsvrQUvPci2BgENwXobjcEW6FMgPnQmBnKh3WH7+68gb27RvcWhJkPqWnQTBbbdOz5VsfOKFZuc97YutKpd9LeB8sez+QelyjIbLyoVaXD5utWnKx3dioisOaw3Mdl+CJMK2/EpoK6itZw3V49IlNXiRoJbexyApKpc+s/CUCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MWNyYXR+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MWNyYXR+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D72CC4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762279193;
	bh=6xdLi89DVrrGRk2qQqRQSEuQBmiqGmtMzszXmWhr7D4=;
	h=To:Subject:From:Date:From;
	b=MWNyYXR+i3/jPtG5sgNGH6p0Ar6JIDWArsgZHAK5twpWCTotlk1Vtj/vLYGHS8yok
	 Hc1Hjz4tYzYVC7v0NyqBGiPZ86TOlw2ugKN5JT8eCqyXxZFSEi2EPIsmL175EGppon
	 h475eKt7tl/z2uh+XjQBrfCglJLnmEf4uYMjEV1JgppOiQm/AtyoHTceMHF0Ue+mbv
	 sIajC5cb33shxi8mN7FDzWagmimoF8c5RlP/aYNcwm8sWfoi50CXkYPRIAHAhOr/IF
	 k4no/MPXsNHM91Zl1BM/YUqZYVcgtmjtdRuRMz24vI/llDhoDKCzUcSKM6RywoISY3
	 gWyn2k+xhRzzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9EDCCF9E3
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176227919357.32126.1255480489632882638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f84283bcff7c2bda75987edfe337bcce8ff70a5bc9c58c7dff070aae33426a8
Date: Tue, 04 Nov 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762279193
