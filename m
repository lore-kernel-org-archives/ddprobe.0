Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1850533030D
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 15:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765813374; cv=none; b=JlwVQGcra9wPJkJtzERkfjJBMjcWVj4cP5pKy0uKjrODB9rZNngeewLvDHe078v8eIaFQOhlpYfkQzxOVUfyJB6eA8Ki32Bme/1KagEXu2QD/CUrFAuHlJxBPt3BMsnJgrh9/IqNVBAxpiSaUweL/IM8+eMEabt8x0+YKmNaVjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765813374; c=relaxed/simple;
	bh=j0YMwh4hzSueSq0TDUtcbjA1q7hTLENFpZXxAkArWe8=;
	h=To:Subject:From:Message-Id:Date; b=qCsSmJTuFbqtdN9fMIL7xxyQOzyvBV7AdPR0N+G3iYMbcnC7UoLWu8UWIYjONDhvmgKVhihYpjkrY+OEVqdOiNkl5/P053UeU3Zexo5bwWV1K4FfwEVWctgB2e7DTnHNorYawdB4T1f2/PzOkKKfSbtbMGbs6YN099WnLXSiF3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KcOJaq7o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KcOJaq7o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6055C4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 15:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765813373;
	bh=j0YMwh4hzSueSq0TDUtcbjA1q7hTLENFpZXxAkArWe8=;
	h=To:Subject:From:Date:From;
	b=KcOJaq7oRLmZbukxXgcv7LY4yCq6cNssrVljD8Nw/l0b3LywNqkg7tj4PrIt9ahb0
	 uy6509BUNmVu4JpAu40w/7Vnv5pHH3XOSca/laA7hBtZH/9UpOke4nqKQfw1WNS22A
	 3xBvSdBq0yblW1huCA0fz3xn4yvroDcC1OKnPTxxKM4SAlegIGVYTfSKCTe5mYUrft
	 yGW3LqgpEw51uPSe9whUE6CKBx6jKQrFtGR/LMBmXKVRDaPWOD5L+czOoG1aZsfIwg
	 tn1QUEmGUb3spCy4miTXwts5LcUs3Q4owS3ZkrZnP9WMCy9V4qo45XCt5zYhQ2mk6i
	 xtnZgcCg59cfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B78D5B843
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 15:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176581337360.16828.5055547346185300921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c10bca4e5c9b98144a13089671bc21adc846ef35c9d05615cd900e075f417a26
Date: Mon, 15 Dec 2025 15:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765813373
