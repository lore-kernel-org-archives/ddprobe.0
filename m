Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D6083FA5FA
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 07:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788420034; cv=none; b=VQm6RFB7g/0leitRNHg+zf1ObM0DLc6St9bZ9a7txAUCcA2kR1faQ4ovlb0AL2KgT7HjS9hxaLkzIqLJCnJFtRI5FRzygJlE0pc++sPbTSj8Wx1ECp/QsDs6tXG41bG6b7bf0kg+wyamlBLoeO8slaxVe0cYCiGYxserq7z0EIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788420034; c=relaxed/simple;
	bh=jyLQDJZRy2Jf9sJHaJUXxG+vs0JFQXv9kUQNxcP85sY=;
	h=To:Subject:From:Message-Id:Date; b=foeDPdDVg9bQJA0W7VvKxihKhN2LAxF5pHvPZUW6adEIzf5tXGnSZyTRcw/J+4jgj+9d8lhdsP4iNcvCXqtz4F1RIVp5sTGB6UMbqmugqtgBMoVRO5Kq3agz/ESSXy9dAaHL6cQRFSFCsI/QRXjn7/J0ihW0eaWII2OEoxLhOUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FQRoloPm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FQRoloPm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCC95C2BCF5
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788420033;
	bh=jyLQDJZRy2Jf9sJHaJUXxG+vs0JFQXv9kUQNxcP85sY=;
	h=To:Subject:From:Date:From;
	b=FQRoloPm3mvwnVtrXfxdJsgPm1rRJ0ibKzUFbJCckO3hBKXsHijqHGvJq+BtIero4
	 46mPiLzdLQmvTFGCC8M2+n501J7yM8RCq9MAzWRUcEJEkSjguEspGq9hbxrGz6rtQ4
	 I/6rfvub2+5o5D5u5Dn0lOn76mLztQCALvRL5tm1nZgaDATlg/cpPd+tCGkCzEkytH
	 TVbCSPmprtX+AYtL2l43gacHF8wpJuov8jESbFp5MCCbAYi4zABcyACyHeW7UfCmMg
	 RUzCo4BpAD5hX2cSUurWAzV9m9sNx+e21IFHizl1FYj+4QF+ZvcM0MqUrZIRWh4omn
	 aHYRzvGR+7Idw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC6BEC624A4
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178842003369.28000.7792985711785856545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c6666a6de5822fb81e4674ba33a60a589cbb4c0c99f6d51b8bfff92ea43f97a
Date: Thu, 03 Sep 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788420033
