Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4272D36D
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745195394; cv=none; b=Y/Y8w3ljWhKvTRJJ/BanPfWs9jsyoY8a/8wuAF5QQg5J0+yxwK/W1tel3X9EdPITvrgyQDcK/8tkwNEzoKUXd/q+QCbY1kXi2ktTpNKgoQ6hcB+H7y3+/nMM7wfjRYq4MpQV9F8avYIPYbg0rKjhZF/CAYqw3KpxmLo1u6HFpyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745195394; c=relaxed/simple;
	bh=SQVnFYdMPNSUDJF41XrkYUFbR1AQ1lZWnZ3m8BA9a3A=;
	h=To:Subject:From:Message-Id:Date; b=W4TdDOFKfkFPg0ceRo5WlxtrHygjUlz7ZsGzc1yiDCVKuoYaiU221pF23m2L2zVXNvnExlPmryXDH1AsWGjRLer/XJWztkVR/ehzJIYL8e0LYbCmI01oiEVDfqTmXzl9losjfYOZB9afvLBDaGsLRu8+y43qYbjFLfqo0DHA8dU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PTAH9t4H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PTAH9t4H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F66C4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745195393;
	bh=SQVnFYdMPNSUDJF41XrkYUFbR1AQ1lZWnZ3m8BA9a3A=;
	h=To:Subject:From:Date:From;
	b=PTAH9t4H8b8rMS73UCESMDFqKjq0ISn+dDhLFK3iW6cOTxdvRgbjRFLTt2V52Hcyp
	 ecEvbg89ZAkg9rE4g1kUKwD8CnXgJaytnzehORRCX77Q+zA2Q9zXMRNFjpEP3YMcGH
	 f5iBKkGUKGyy9/aQW5DaO+bcGscInPo9mmvSPUuJ6nYglZ6Zb+B9WM0Wq1/Z7yTrTV
	 nPRbqocUNkUVdaKFXMgb5DMvWozk/XxU58th3QEJGTBFvtmPupdDpqYTk8Wse7q9mF
	 /jaeuubgWTc3g8JQ+T4KrW7jAyRjTOSlpsunkvN+m1bY+KvIPoQuquYoEDY0eU7oMw
	 7AeEH/15r5j1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E23C369C2
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174519539360.3626.4388481038754064667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3feb333a68b9dcd8d50832f163d59efd2d2f44e8f698fb926d4c7062570e9756
Date: Mon, 21 Apr 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745195393
