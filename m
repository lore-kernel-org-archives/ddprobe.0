Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 404111CAA6E
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747636195; cv=none; b=peBiSZu08qxcQS9bMX4uSSWRFxmZG2OTjBKtLHE4ZGYcVp+puQUX6vhr/rpTLaU4IdCVTjA6KSLH1yksHS2kkkzARNkXtFy/i7QxEKODVS19REfpHbv1TsUJGLKi/ZZw3jIeLiOdXNKTFdBmbbeUlMeZkvykVvJRrastgswhjdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747636195; c=relaxed/simple;
	bh=IfZoiQbzlwlU2JAZ4RN8rwAYCtqOHlJ8tTqWSkUI7xk=;
	h=To:Subject:From:Message-Id:Date; b=f22RnDIWBWDsE4mhWeiLP2siL6jR1FoGhr0/AdsmpOuUcJc3L7xO1dzaIbFcpwdnu8FJCSAUxqXCwTCD2GtRWDg4O6p7Q/NkzwgdvgpMPOcseKVQHVBKxfpgcoflJJ0JzQqhzmJQrmXjSa6IafBYpY61uqhccxE902VHPKNM+hk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=biPSCcI1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="biPSCcI1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEAF8C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747636193;
	bh=IfZoiQbzlwlU2JAZ4RN8rwAYCtqOHlJ8tTqWSkUI7xk=;
	h=To:Subject:From:Date:From;
	b=biPSCcI1v36AnDGYNWVjXXPWBEoLnQwk1Hak1qTw5K3mUOZGfwdWguUM1Ru6wiG9q
	 jDc6qTcioHMD3fw3VOvriJ7uGUTnbbKJ+NbNZrOqEO49PeByn+9Rm4cQhziJQxaxiL
	 DpLu2hUbpJueT8sa2jx+kn5AozhhDCBfnvm6JgH5hKFl3iDKWXAs/gF/tcNqnG9UJ5
	 It15hMzs7MY/dUkdKBVGplmiAH9HWesOCj2qTMCb0N8kTCn6f/oIdYIekiahitHLuS
	 HHWZM/yJyg1kGvCn3c17mLcf5PG1Qlmzd1vneRkK2qZCiLeihvEmeewHc5O3iwhVIu
	 gN3cIk70WkFyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931A8C2D0CD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174763619359.25181.6807010282757830565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b68d98ddc1e8d0c411c5f2aebc2978b79e7e2f7b1e66621e0c1b376aed53d934
Date: Mon, 19 May 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747636193
