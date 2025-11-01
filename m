Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B2831E8337
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761979194; cv=none; b=KiLkStYB6fDxGCk6+2D7y+VFASpM8pmjhjOwhibG+CgmbF7WQJRXX9L4vPy7f/wF7cohgMhq3+ZOwWpCReIaEW/5NqFfV8HH8GfanxLxzw9kIzVUHxJlhFDSAL1ERyAJAGoWn6W6ydBryp0SyitbUKkeNVCnLDDznhAtqcqauUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761979194; c=relaxed/simple;
	bh=Ptf3stjr0ZD14NIkA85YTO2/NxI+fM6s26cpVJiRTeU=;
	h=To:Subject:From:Message-Id:Date; b=VbQLgJsZyfhAenkrY33tIqwO5+PMmes61ypKd+/hAXXdX5MU9ZDBOGmUvBhA061pbpn6LZHwPs11VL53UDGHYR+Fwo5KhQoFWae6Rd10PIbjxZmHX1adkZzNEIBJs8mB/+C3ifDYsot95x3MQqvYwun0myYeHuEiiMRFOR4Fc4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kOsejbbv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kOsejbbv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BBDC4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761979193;
	bh=Ptf3stjr0ZD14NIkA85YTO2/NxI+fM6s26cpVJiRTeU=;
	h=To:Subject:From:Date:From;
	b=kOsejbbvXoIQTpDKp7ueBHJMSz5dkyd1UQ0cUrrXztCbPD3+rS5EL99X5xHlvijCD
	 FYN1IW838Up3HTq7Glk5eZzkPm+exZo0HHhPXhMHVaYQiZTY8hz53JOTbC/plb+x+P
	 JS5WRBTDm20/yTu37tVBD5mErw6K1i/x4pVTJykJiv9nnR3yvR81ii8RaDoFkqZfIf
	 72mLAiaPwlM5vLGLx9AecYc8XOxuxrTtRUSB8gqZfy86oiL1E5VrYWv7fWm+ghV5UB
	 6OE4Wp+0+uuimKyhPRexRd0t0ZNLxCH/dH6cOjuGFvlk3Lv9YdI8NGe1IhchjdFu4z
	 XIAEV89MWO6UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C4CCCF9F0
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176197919358.10410.15747585434445145502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 707c2f9538e180b5b2e8cabd794dc1711c03a0ed5619a35719bba78d7e205cdd
Date: Sat, 01 Nov 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761979193
