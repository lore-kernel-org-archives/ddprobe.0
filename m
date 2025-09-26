Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB264202F7B
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758925793; cv=none; b=RYzcVJ1c4AbUNXg0hTzs2dIT9eHvNT2fme6kbS5jTWgtGvaKUASFCpFD+RpEqMIc6YG+1ihY3EcAirO+qpn6qiEihF2TqIgj1AUx69hrUfy/bUuHDTmgFKutOV0cTBX9O6X9JOdeorK8XFMbinaPTwPkDODY20Wa+f8KyGdMExM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758925793; c=relaxed/simple;
	bh=oQy0hy06M71dfXoZk74sVPVguwMEBA88EODd/ObMYEM=;
	h=To:Subject:From:Message-Id:Date; b=K+Bw4xWfDNTw0ciLJ263mfuwDgtKrf9lN9eq5A3M2ujQVP8RzpKsYzR2WXfLVnzqWfwfij5wAx0mg6M2bLHjYFVZ6e6RskCvxiUqy3ZEO3atXOtLWxErF1nD/xPFkGAfYLiy/SqA+jk2J3S9pteCA3QBAGpHr/LRH198HAndydQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VXQQgvPW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VXQQgvPW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F60EC4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758925793;
	bh=oQy0hy06M71dfXoZk74sVPVguwMEBA88EODd/ObMYEM=;
	h=To:Subject:From:Date:From;
	b=VXQQgvPWU4qQLJFV9bL0zsLZBRoGoO4ChYkaIH4ZGXRdDqFI5Ebr7HVHax5g/CKXG
	 Y0dcQLU4izPFNSQkQ8qwXcbNQbLpa+lBVZ0/3TxAmJ50ir8ya49066dwEt3qxW5q3U
	 lMhaPE5QnI71vHBJt74bu+Ekr74IMyZ7ztORHcWy01F7xjgaxpf8tu7Y6Q2kB1cIMe
	 QA9ZxffRcwQFH3xnVr1Nn9/jZGpuj5q7zbLDUtZzgqRF41kFS4iJuB8Z1o20vnRyp1
	 d4EWrcslSPcduUZ6HQHR3Yi0P60wc9vLipzIQ4keiqhbNQ+MExJ7JEbeKVXOaYGWyV
	 3TeZMG3+yWSzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916EBCAC5B8
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175892579358.4983.6011112495296967975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 647c3a5babbb81d847685e5cbd0615933cd2d4c3b3dff08aea595b718d2a8572
Date: Fri, 26 Sep 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758925793
