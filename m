Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35DDCA937
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 23:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771198494; cv=none; b=EznWZCvphcWUs1qMjRBhCsGTjxx1YRrw9R9wKhNWuPdSilmNtdEx+wdU7mW8xBUFhbWpKLXOlgvRtkByPHiS7el4nxVeHCgd5KOwCu2P+o1YH2Y9cHYty28JDqHtjT0uoPXJkqwAbY1r6ZG08FGk3bFQHlIw78pqwIzVV6BXfbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771198494; c=relaxed/simple;
	bh=TKp1ImBSnHHcplBuhqEqmMVqO7ddLPyStQMJv/kq1wA=;
	h=To:Subject:From:Message-Id:Date; b=Iea5VH1q7NIMEW0jf0kDar9Cd9zJfowLqc0jLJMPS8z3u7PYIDN+eopC/IRfUxvGaK52zc50YzSXF3iuR5y5BE2ElUpX7Agj9zTkUQabgPeX9+xgr6KnVYrlZB2L0dk94UhJfC9lY0krN6jBKtf90U9gZB3IJUnnE5Kd7hEUFCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WSwKGDQN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WSwKGDQN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB4F4C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 23:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771198493;
	bh=TKp1ImBSnHHcplBuhqEqmMVqO7ddLPyStQMJv/kq1wA=;
	h=To:Subject:From:Date:From;
	b=WSwKGDQNij0nhadPEGzQF3vSAbP9nKOkAF/PEyOUTfhICE8mpe7mAMv+jRNAtc/HK
	 V9ubrRC7FcPmuIKP0DaDouIcEFupm/Msk9AUd0bvj0W+0PijPVbIe9eJK4NcWxfBhw
	 3wM0VGwExJkZKooJHMKcElRmnyTabZxa7e9Tj0QsTfQxv9mb63tbUXpktlHWYjoeV2
	 7GtmQfhufb1NKeLZQXvOUlhm6Tqot5MlWNECWPhZ5e7F23my30c+0b7lBW8YYUdAgY
	 Euw4Oy4a1jDNwy9SbdnVhUOZJFUOAwx56AB9kqXKTO6YXTix2w5vbsQavs7XauRV1n
	 YzZmzG8/G8qpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92746E63F05
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 23:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177119849359.2127.8755504210680341944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05333ad0efe6c5f8dff960b84695c40e47c291598cde4aa74d7fb68e9901ca7c
Date: Sun, 15 Feb 2026 23:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771198493
