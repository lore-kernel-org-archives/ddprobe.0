Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 415C536D50D
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 05:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764479574; cv=none; b=Om4s4yKMNS47qbuKFaZ0BxV7MMmsbAoZabFGoWB/ujiBJL3NKJyUl8BWNXm1hFOcotZJnH6Pdbo8Xf32XTulLqNVxbSF/qgPq25eeLgB5sFh7aw70SY8vX4P8Qn0uVQsZiH6lOYXEaDfSErby3PhFeR3WnUFqpBxjg9w7u0OnqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764479574; c=relaxed/simple;
	bh=1B0/4bv1SczMwewOAVHdsRxo8OtA4fM1/D5pYdLlAiY=;
	h=To:Subject:From:Message-Id:Date; b=Ifdvc8JrbsHfXhqAvzKFbVwmSR0dgcM87NYTPdw65xUQiXc1Q23Ijhe4YO0NzhKV9Zqe0g7Zm2zqCGmNmhM1Fo7eVGhS5HXH15zDN0lf1JePgQNI5HkHnBfHHsI23ZO2gphQtKIcuVaLFwRKdEMSzFbEiEjk6sp1665nDVcdwCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pgCHeXRG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pgCHeXRG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A86A5C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 05:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764479573;
	bh=1B0/4bv1SczMwewOAVHdsRxo8OtA4fM1/D5pYdLlAiY=;
	h=To:Subject:From:Date:From;
	b=pgCHeXRGuK7+tl6Qqa9YQgdvHe8JjqjfOk5gM6ZWwZPxl2fpTOSBNnq7CmyR8SGjn
	 14In7ojB4intw9DXrtV60MVDieRfdngQOK3fIEle6eqdZr8aboLN7FpTf1WAXgDGh5
	 NhKZK7vc2EDyRZBXljx2Ea95+SFYGNvsv6ZrW1RtTG38NW/7j5zeSPYIYskiAak9vL
	 Yuq3X+WMO7rRqhiFBfa7lCAh7bGKK7DiMKfAZunM2UKJZt8uKohZ2z6I2uMCcCoznj
	 RCPTnxJtbpt+ABAep/JQuzcNwSntM+VHYWPTU90HEK/tugmDh4R9aOFIY2wiea9qFN
	 9FBvYDZ0dcY4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F7AD111A8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 05:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176447957358.32748.11000169783493887653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb91626ca4c1d63be90d377baa3f94c7a064752350f125ae5ca93b8279f6b8c7
Date: Sun, 30 Nov 2025 05:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764479573
