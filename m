Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E47A3AEF37
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 09:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790760034; cv=none; b=XHXDq3k3Sy0F0Fuk4ElyvQCV+HtnEQHoMk+SCr3wDreowY7qs+9EAcUaG95O5wvBNIru6OmV632lcsDB6+GPDFFZbUcwWU4kCiW1wah0kstqOzaHHqEEVho5gL6bXWpSbyTgGUMZxV6skjgc10gCL089ndt5076nSioBlZ8HPYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790760034; c=relaxed/simple;
	bh=Qtx7i2SPOiRn++9VuLnoQd9CWDEsVdDXHDZ9iaQJbxk=;
	h=To:Subject:From:Message-Id:Date; b=KQfaI2qTAjY3SL1dZr4pXpUWStkaAhhloH50M2Vqiyl6cJlCwimZnFTMMfrpEe+JWq8IRbz/eJ1FipZCJaZ/Ry7lvjeiF1Br2nEuK34a7VqVZAgaw8AQANRcLmCFxg+F9BVeQ0CkJ+eg3w20vP5kbd/vHhYRpHSlWSHhvpBzPxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N0WonPvJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N0WonPvJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD2CFC4AF0B
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790760033;
	bh=Qtx7i2SPOiRn++9VuLnoQd9CWDEsVdDXHDZ9iaQJbxk=;
	h=To:Subject:From:Date:From;
	b=N0WonPvJHDgYgcqukWzJyKPZRUQI7Fx0t65mNgM630CItFLn6b5FsHm9Ht1WXn4pT
	 BPXAshWPSp/E+rsidt7gr1ouM4BqNLM0e6CPfu/S2UKPikdN4x5x4DqezgayYI/6tM
	 rDxN007C67m5qmHwb/NOO4zpQGvXbE4GUn77yc3AExhMGbmZtjxjFD80TDVrLl93Q7
	 fAEHv33KXMJ/VhEEHVo/iROXDQHJHYs21p6kxIOcDtFiwBF3VtN0MdM9f4y8Z2cUy2
	 60A7ASCrH744CgmY5mcH1r/WUFB2Dtqh5RDJheN0W66D7zo3GEs2+JlHa1r1Cq2a51
	 POsFxSZ55XKeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC73CA5FB1
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179076003369.29660.4955137457306161354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4077fd0efeee59d87e7d60fa3c3065639b7e398b5079b72ad9bf5ec9fd6249fd
Date: Wed, 30 Sep 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790760033
