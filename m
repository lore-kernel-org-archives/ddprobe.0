Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58CA0246778
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760391594; cv=none; b=S3SSK2xwkT1iuomItS4keUE3EKbkvV5+CER661qDwHfXURhWw2uk8k4FfhLfwFSMWtR7AlnTSqw1pH4c89wz7Q6ZNZA/rWS+WWi3+gGJStHAuzodJmQz9QSPN4THxvgoqqF79gVSFRFtdAyPpXogjeUUytgxvdu9yoHW6jfSWG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760391594; c=relaxed/simple;
	bh=XkivJFnQH3kxaHN//Avnnuij52Ky5XLFZ1ctE7VDlS4=;
	h=To:Subject:From:Message-Id:Date; b=mFdkCoQeq4umeowVouxHthuXeKXeS1aLtgUYFb9yBfwhshYk218yWYkxJgzcoLj9iS9HCmJM2K1q0eqliVbRYyt9LdfAcfSRPg3ju1cvUuLAGR6uDC6TfWRqNMB6ZsmZs5HMDPcMcfoa9e0IL3OGd9rlL4WJUokJneXrfxjwoXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DJw3/sGW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DJw3/sGW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B02FCC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760391593;
	bh=XkivJFnQH3kxaHN//Avnnuij52Ky5XLFZ1ctE7VDlS4=;
	h=To:Subject:From:Date:From;
	b=DJw3/sGWGIvdAYewm3QugzZ3pPq1HaKVB9uVAmkiDi8qDRxzGgQrOQnG5t8okhibS
	 ckfd95Zs5JRg3ZIKUmIvS+cgxVBdOM/kfqIp8VxzUPsk+YyDvgophlQyBEeVRN0A8G
	 YKu8xg+6cPJgpaidMacCrGFJhsg1LGnHNguqYlKBaPlAuBKa+14ko3nKlZYmJvjtzj
	 uM9HtYG+9qIeIx2towVmuZWINKBIplF6/jiO/T55NyEsTsl3Zjwt1qeWNrqCJRXgsj
	 unbeUoZBUKMEvID1nLXxuT6woJfapItQEsNN0QGi2mkHqshh0+UBrgS/LnigzqDsPn
	 MRYjTjR1XKp7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99A74CCD183
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176039159359.24324.9084034729575176307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03c14b6a736e665e566a7a1631e655460e0f8b1e437f37142041bf64dbfe4db0
Date: Mon, 13 Oct 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760391593
