Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35AF03C3C
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752300594; cv=none; b=M+vOKA4jWBiFiq3LTBlcCUpbK+aDcRLerxr55HodF+2WcR+WJc3yBh6i1FPQ6MLThNcprvksA6eGblVOfaoWL15sBXFQNO2KRITJ+FZjBAmCT75AVe0YI5n2gRRK88f41qu3nTwQUUSGvvrRkes2Zzb7FqIu4XY8EU5IuQp/BhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752300594; c=relaxed/simple;
	bh=AocS2iKlasvgBZSMjikA+uZYIp9hbi1yIx+7JtFc4eU=;
	h=To:Subject:From:Message-Id:Date; b=gA7HpevX/kIiySrEByHk4ntHdhjcHFvJpCqcsZn2lHhG5Tnv8EuQubhuYuJut0/Nx1Q9TxHIoVXtZG9H5Pip+00R8N0ER65fG6mNjuEMIeEx7u34yx6ye3xYVdetobWO4gGKqX5NfefeaNqFO+lge8rjGeZVkjjZMflXDnPvpU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=moeDFdaw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="moeDFdaw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5EFCC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752300593;
	bh=AocS2iKlasvgBZSMjikA+uZYIp9hbi1yIx+7JtFc4eU=;
	h=To:Subject:From:Date:From;
	b=moeDFdawX7XkkCYhVk2nM559f4hrHXvosisbHRS6B6fxoMDjgBGw2IWgbZesgLl6v
	 xGvd6JpiY3y9j0FZQ7MsGpcJrkalymGVM6aZKEQv1pU95j+6HLtVDofUfL2ObzW6GO
	 xqEb/G9Y7G3XCW+zmO0w/lbALQ6AKYexhe7UViLoQmxVEJCsEAQI4QhZR5Tlw2Af1D
	 tgtWPpJdLoZD0ueLCrDySKL8wQ9K/Ep2njIrj4XPd7Maxq/Kd3hAtPKHQ146p3ZTHI
	 CC+6w8qX9NDbl5Xr3+5pMSS0g1nw1cnsZ8xnoVU2TxDjw6BySHRadkvfEiSQp3rtFU
	 /ToxCjHcLo10A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93899C83F10
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175230059357.15587.15207986951673134661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c404eb65d25f99c62dfda942c418877001e5e41a4bf4e7ceeff6ac13e4013f8
Date: Sat, 12 Jul 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752300593
