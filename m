Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FD4B24B254
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736546754; cv=none; b=j/5g4691tCA3xni3HMcR8BsmZNkk9B7p4hw+0Y1d5radpY0mMcqeEZ+jc4cDG6HC+IaagYK8q6QqM3BZqAN6DPhE4LcWLYE9LFZXDRve1I8YcFcYjtXsqMZuqFCfzxL5OJ0u+YGN5/6lRf/NnjQS0nCAKC6FiHcLWEgnYUTELVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736546754; c=relaxed/simple;
	bh=hRm6PHofsmsPCyoav5PiAn1mjzVwTtZ5cuLb0ZB9SJU=;
	h=To:Subject:From:Message-Id:Date; b=Bv8B1AlqsSn6hR7GVXcro3Y04S9zPGoObBIKWs0vzb4I55uuPyh9D8EuKr/QEV8BS6RLNQiKu8RG+GgyWO8l90Ks0etEllEsS3s7RxRJ7SQ76c8oE65b2QrtqsjT7Ya7srBArv22QmTSP4kmbKHbH6Nc0usnmAiEjl7g4p0uorA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nWwv7xWj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nWwv7xWj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA775C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736546753;
	bh=hRm6PHofsmsPCyoav5PiAn1mjzVwTtZ5cuLb0ZB9SJU=;
	h=To:Subject:From:Date:From;
	b=nWwv7xWjV5aF4BrDb83DX34xN+vNtFNhk4/KQbo4jpOtxfuH/kE4wlT0XGn4KpzkD
	 0S3D8tKGA0GNM+oP9zP+vPqpjDPtP/5zSd7qkMLzXMbpdeDBehR+ssxo5C8s5rEI9Z
	 m1zNSOziXoIrCfcu/C+Qey6/CcuWqeLfGuEpQrQhYlx/y6pe+W+6i3QqJhNlYzpi3m
	 r757dnbGxP7XG76vFbGZ6J+fHDi3l+0UWjwP9/5/C3g4mEAvnHcZnA53/xiwiGsH+D
	 SMkeOsbsWEoW02A+tX1sjAm70FJP2+fEz3rg25oLtGyF7rGhODJPH31WIya6fGaTrX
	 waXOEdaPt14gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D82E77188
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173654675359.32166.7827599092032344704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2033e16f5adb75d1ddfa50b4cd22604bdaaf35860a0114332a24c92a03c0cf13
Date: Fri, 10 Jan 2025 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736546753
