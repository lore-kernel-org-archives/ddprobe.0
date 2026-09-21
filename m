Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CDE1519E13
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 22:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790028634; cv=none; b=G7JDvXOOoER7OVhDMEVvjTLL+YW1GrCfbvZPyLAzRbvYUpSRikkmH+FLGc+nRMF98HEeUZGX/zYpCVcaB+3X1aOaeal46HdcJwzeodj9vMwMloPoMhptdGeHJYOGtKmT9enyiP1i0suZzZC5B050d8F2cJ9kZsuBo13cHzfZDnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790028634; c=relaxed/simple;
	bh=QCGo68o1ZkFzcluhHvYOLgBriWNjF9QjHejgC/nQ1sg=;
	h=To:Subject:From:Message-Id:Date; b=OIRytAcZAFxyZL7NhbsA6p4c1slZQLa7bAG+SQBLOxEbbioq7zL4a8bFfXSoUwFkZfWq7NOrysrOiGF8LcCm6dq03ePcZCz/d+4UDm2nLkk2lW/nwIbrRPZGhHPJRqJg9jatlPO4mnkwsIYXQO3AgtW5CN82JhWNlcGGCDCeeL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ghTKLcEH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ghTKLcEH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6CA4C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790028633;
	bh=QCGo68o1ZkFzcluhHvYOLgBriWNjF9QjHejgC/nQ1sg=;
	h=To:Subject:From:Date:From;
	b=ghTKLcEHnjwS15ltoQFH5wF6KqBeD0tWobgU5a6pSIlUqEsabxALIvzP+P9v0uIQB
	 Y4Ibzw7f5IVQ0o3Cyly9/dLYvCsWI36cNkXUJ+rDyLTDGe/WBe1m8GrG58sm+aNyVQ
	 nhde/+C1B+CM7dwhLc3YBipezEyaKRIo9ymxJ850R7PuhfeQyTM5l3mR2Xi1wLu/vS
	 8Zjiffe6IyeNpwsrvLeq7M23ptgm3ezimScmBirQZsBvvECkVarFm9kIZNR+M6hWUk
	 BYj2W2ns3ADEnM/yHwmjRiQVS4Q4+Ctlyu/ftk1C9YSOh1YgXhHFFuYgk1U0BIItMT
	 +6B9J9X7URgWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF2B2C982E6
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179002863373.26005.9386188063298267281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 932c2caa7f6a08dea834858dc354be1173e2e9dec156f001a07ad8cdd458f983
Date: Mon, 21 Sep 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790028633
