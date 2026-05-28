Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FD6B64
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 00:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779927154; cv=none; b=J02hbWpqDRQOSIk50/S5nqlx2po7M93lEGIR2KH84eb2KCOe0vcSYGomzO6EapBQt3AiVyr9ZcEbTFnBkphGWZtsX+qiw6LL8Y9O0tYZQuv3Yc6yATreza2hMTWfakGZffPz4x1yfcLuZB1l7NJJs7zYF8woVtxAZKTz4Lro6bM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779927154; c=relaxed/simple;
	bh=SU4EIgnUztJ6ZYKQA9/2cVSEM1gF8dl/BteCbqaS3Do=;
	h=To:Subject:From:Message-Id:Date; b=VnsFPU4XocDjTNks2pvcbtPcmKha/u3muQdU3wmS18tIS0gLQXmLS9yKfFAPL29FH1UhZPrpYVgaySIdN4tDq5AxGke/fn+lmB2qi0mgVesWJ6Ij/nYoeNwQKchNpR6U515B4df+nN545ZfePbQ6qQJ7QOw61q1Oqk+vdQ/uQxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U4VAAz5V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U4VAAz5V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7077C19425
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 00:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779927153;
	bh=SU4EIgnUztJ6ZYKQA9/2cVSEM1gF8dl/BteCbqaS3Do=;
	h=To:Subject:From:Date:From;
	b=U4VAAz5VNQfct7AqGpDTBH8k4x0mEeSBlDuM/ifYFinUxrM8q4g+hKTcEMsB7peGs
	 El9JKPnjIx6SzVI3q/LXPcNDpaPchyUU+JjMu2abLcgX+hbvvvW3Bv4aSIkT6bYhfQ
	 vsjxORpkCXqofK6WuKqervpw6rSscBYM2VPhZcuNXTsjLY4LSJ5ouTXiucPLn+BkEQ
	 qUiV1DERLOuDQae9LT1A9xmb6bfc0IqaNxeq3RZe6jcJadiXRcMNhLhu7KpUYSCwFn
	 8X5c/DEW+l2AU1+MP7AaNiWYBDhL9SBf7rjatMcSB4F0qfSo8LfwHn7GRJK9w9jJ1/
	 +rWBHatnDpgHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE06CCD5BD0
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 00:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177992715368.5594.16387025583899324071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59b9a6055489e97b9bb87607cad377b50fef9056a4554eb4ea7f8503bdc58f1e
Date: Thu, 28 May 2026 00:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779927153
