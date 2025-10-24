Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 334922FBDF1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761339594; cv=none; b=o4Cqa32a31oQ2zNULMoo81IWo5feftjPk9j9Kpn51bqOhwHqGXTZLoz02TNt8pMyBZ/dJMunoyPqZ6HYCJCdtUGZ6paXd3syiMoaMTJmQCghbFQa326vqlLFxylpCMFpwFQsvn8OBYMq9sRAFwepNtlU64DzP4gST6zu11hVN7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761339594; c=relaxed/simple;
	bh=hNKlpDEiR1iLHWOWmJL1nojNjdAXozk7LEAYvBDYa/U=;
	h=To:Subject:From:Message-Id:Date; b=RL2ZbuIySInnTEirSnPcLRvlQpFK3FQ6yaey1RDgKqrdKpMlUxJDzZExaKBp3rHFCc/UmiwQmKqogSZVvHpMusmUZgsOSTFV/V0OBZrITNnuycEejRM8dGwdc7myZX4f8x4ywWGKRCpI5rkzLVuLD+bDyZ1n+VJTzORcFG5cK0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MNEFb+OP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MNEFb+OP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC0E7C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761339593;
	bh=hNKlpDEiR1iLHWOWmJL1nojNjdAXozk7LEAYvBDYa/U=;
	h=To:Subject:From:Date:From;
	b=MNEFb+OPtUlkUoawk0HL56XpD3SMiQUiRVWVrXJBjyDfpnrQGh17nU6VzYGAJTThu
	 twNtD+J3d2hIRTayBYe/N2ccw5CZXK6ICeU9rr3Q4XG70300jar1Ki2bRzfXFVCHDk
	 LYJxp34VO+ZQC+HsJ8/HCAtsUppGauRDzyFCwtWdosfgJhzhNccqAs5nPgAElMZhIY
	 QkgacYg/+rMsayAq1FBFceT/dlm+4/Z+7ZMWIV+7c9gkBS3RxXM3g9WrmZwwnwkX5c
	 CpAcoexf81gkicolcLpNJxieg7/du7TkWkPqXDgiIGNBCg2/QG9jmG1H93/KyVna4K
	 Q8D8ZIBGisxrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99759CCD1BF
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176133959361.18861.891049055156212762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: caeb62ef69f9c16cda31b465f5e578cb8eb35000d883278b5b571ba38ab0e47c
Date: Fri, 24 Oct 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761339593
