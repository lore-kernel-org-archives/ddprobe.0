Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCC241DE4CE
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 01:02:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764896574; cv=none; b=VeDvE9HvVaZ/tKJ8UOKmS2hAtacl0NKQc+kQCWZIKK8ooNmXV7VByOi/c8lZCGYpiLEOE7aA/zr+GKw8NROjH56dY4NQxc1E6omWnO+L8w9jKI5H+HRWJ+A9tfSw0kSidu/Jx00jsS3Dul2IulumBlc5FMKMwYNDayuSj+F1acE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764896574; c=relaxed/simple;
	bh=AusXdO7TeSLGkaGhb6IouXaKfytpRL11HxQgkkQknkc=;
	h=To:Subject:From:Message-Id:Date; b=W3FVAiZBmG3Cn1LvKqHfRGQW7rUrNKTpcxnY1hf9J2HIlP3DyB705mcRPIbwRw5M1Av4HmN20qndV8iz8uyLFyFZcom4WKRodgwvoYkDVRsaryGtDig/EBEycJT5m2L2lELXo0UDtyP8jvSpPBbEIpVLzmqNhPM8X5FGUK20aRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n5HaxDqX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n5HaxDqX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E0FC4CEFB
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 01:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764896573;
	bh=AusXdO7TeSLGkaGhb6IouXaKfytpRL11HxQgkkQknkc=;
	h=To:Subject:From:Date:From;
	b=n5HaxDqXWkHkOnO1HPPK7O92AnslQ+Y9kkZUy6KLUAjAcMFY06sPxYk6thRyY8Q42
	 5FwcdvzaodDJR4VtVCt4t/N0FYzSp4FjqwSKoxpoKFr5IJo5B4Z8nx3aznNHJcg7Eg
	 P62didRFVOLqqG1RPaWTTtZUKcF6I8DNHnXG8dRI7PcYCQRzu+RJ3kMOD1bqkzfcSQ
	 PMNFJJHW3E9F/7CpbWdRb5/6A1d0/fNLH2JsZzKH+u5iDbxNk0Ud1WFGF3HL3C0U7l
	 w4pk/WesKXFo41vmEbMnlfaDkAo6CcP+koyqanbEHJIzL1giMmhvHmaGl+lPEi+ms1
	 2hgQOrPdghg4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928B2D2CDF5
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 01:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176489657359.24206.7280078669994029911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd80baf2c197994fb834c0b0fc60b6830f4867df62cafaecb8c4b1ac21adbd05
Date: Fri, 05 Dec 2025 01:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764896573
