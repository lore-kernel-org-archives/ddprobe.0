Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2276120B22
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755916794; cv=none; b=rkyfw32BaSYQl51MOJSm0lJ/5ds3Z7/HlSlV8wZVkEC798EiUCXTm1/hdVUFqaER6rsopaduO4hVIi3LwqE+7zeTTI/yT01sYtT0mbv+69EiHqfNq+D0zm4+DwCW/NYIUeQmaHKKypZkEu2rVo+G3pkk6uU3VZc27dzKjyhcyGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755916794; c=relaxed/simple;
	bh=Q0uP+UERmltrN/2UYh1VJs1WOxda2Z3cdIMuUUCR9w0=;
	h=To:Subject:From:Message-Id:Date; b=I8gTgGPi3rlAQ3MKgC6pHafUUpyI0elNq1XzrwDKZDHVzzd3yNuXVujT9BN6B03vPCu2bP/7JPFfEM6iltHQsSVmIgdOt0G3gk+bvH3t+ntISKBnIHr9DSpB3ZWmFr/D+GHaLhcCvNVr5tUYu5O0MfUdO+XQwGTEFYsTikeQmzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LX2FBI4s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LX2FBI4s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47A2C4CEED
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755916793;
	bh=Q0uP+UERmltrN/2UYh1VJs1WOxda2Z3cdIMuUUCR9w0=;
	h=To:Subject:From:Date:From;
	b=LX2FBI4sZyXUqI9RkoS/IwfXohpAGeP6dEprCK8FGJL+ygauPwDVQ8tMBgA2d1zN7
	 GOBsX0Eqzm7ebDJKHkffoxEZqG0VL9LVCCYRYgEBZtZXvJjTrOKC6kKaLpICSGqysP
	 GGj8tQVMC5bFsl+WfkHr6jUEDgACbCVmgTl0RavT+JffH+8dDaJh1jFbYpmrvE1h8u
	 /mOZ5NYdjkRZbp5tIEcR4FAzwPDMgLlUyOD4m/xHfsopBtSGx4WUb/QL0Hf8hZan2c
	 C+LUHkIGvILRcQhQu1isHeciQqyeXa0NWdB13gaD94VX1g7NPjw086IiqeHSqPnwvH
	 oA0I4MGhBcggA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9243ACA0EEB
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175591679357.9344.5583540878878393788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb24b4cc8de2b8322c8469240704fbecf8af54dca8fb49bd347a8d42abf2354f
Date: Sat, 23 Aug 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755916793
