Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B87A2BF3ED
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747156794; cv=none; b=THsueQ5cas3aYylaMRqIy4ocmjhW/eeel3qDns744mqgGnrAxN4CylYcPjH2j7eXuzb1mo0C98EPOiQZermwxNUJYU3OKOBmwnuaQIo1EGdTJeIDMrBVUIxe8pU0FUWdkNcltHoKi593FFefqz4kicivtijfDdrhX+6lafcKBRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747156794; c=relaxed/simple;
	bh=zUBMb0BfxEZlvKVv2C98ca4WxnFS5FR5N+5zbNvFhFs=;
	h=To:Subject:From:Message-Id:Date; b=aHGOnApmE1d3zhFaxSPZze1mTLkudma/OOTPG02uMK+uy+LlKCSTVceiyNnxdg2AyWunEAIUb9zB+WNUl1zX+znindBnZDvFoGHlnO0ZULHLbi18B2xMg7XB5UYpbiwGSGN56NI7SR7fBB/LWpWWS3HVTlNrtIsjWrsyFCq1KYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=htIWrj76; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="htIWrj76"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A674AC4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747156793;
	bh=zUBMb0BfxEZlvKVv2C98ca4WxnFS5FR5N+5zbNvFhFs=;
	h=To:Subject:From:Date:From;
	b=htIWrj76hV94cQcdYys7SH0LLJjDJ42STVJ1i/DO8FM65p4xPPljE5qhc0ImHn4tF
	 W6aT+8/uuqHO1+XJ+JLI9V4vJmICqsObFI49uQMZffwKdz4mzMHMs7f7dC/y9SUoRL
	 8qGeZEyKNwFmL+3o1dvyi1uCRIMExySuvhqmLAI7iZKct35KThiQY1gFXBbq1KVhtV
	 8II2ExotJ08+KFWucjYNuWg+HcS+BKnBc2GH+aKGk3qQF2fUSpb16bJ4FSI/SCViNc
	 Z+GVLs1Re9gLfl75GIPPvzOS1ebe1yh0Ya5r91aCZyNV09p/2xLO+66vDWGN6vGmt0
	 EuhsIclma+9UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA0CC3ABC9
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174715679357.25125.281675338963799786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c43ad381fe2c4e0ca3b41d96c0c558fac26c4d1e82dc1f9a4a2e922ae0b0f78
Date: Tue, 13 May 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747156793
