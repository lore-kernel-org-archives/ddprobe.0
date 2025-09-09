Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12763343D9E
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757430594; cv=none; b=VThK6UPxDQXClcNqioaxlyt0dJi+BpvHNhUR4skhBvY29ZHpl4GfTbsPavQZ9qrlTq/VaUcPuTgnVyT2FNcRPFvlGlrvD3MttNPc85zI3jnfJTc/I6xKYMc1mWnOjzFEKNuGJj+QWw80/Kdu7FiyxNMl/w8TAZX4dFhCjkRnEJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757430594; c=relaxed/simple;
	bh=TJTMkk+6qE0jGe3u1DXAf1nJRMo12AleAYOgTOuAj1w=;
	h=To:Subject:From:Message-Id:Date; b=bmVw1Ig+AsppmFnUmKLuJjz3FpqdQbdgU+VINKg3j78LePnnue/IPsATU3zr3/p4xE0Qg2IqJfC5D7Wuf6Mn8L8eipbUZ3c792VjUSWWyYorDvwcwdmxY13GyR/xp4wnvcCALIQ3fXCo6vd1TkFcA7pVxKRNW0mtqvNyx80CkOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b7fw3ydF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b7fw3ydF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13AFC4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757430593;
	bh=TJTMkk+6qE0jGe3u1DXAf1nJRMo12AleAYOgTOuAj1w=;
	h=To:Subject:From:Date:From;
	b=b7fw3ydFqlGOStXCcqp0VKFxFugoSwPxovJt9lLQBMvnHkhjbNBush4uswA0rpbIg
	 APwcJ2DHSvdybzTOfE9FfgBZlxCzokbc0yk+SWfhuPDejza+im8Cib2DCX7USD4XPF
	 beNzjRtEChkaRlr5n+hY7VFbb8KnXZcLq11pJqBav1RaEGk7PEzON2TBePLGekzlq0
	 YkQnKffyVpe1xKAgcZWp0vwDm+WVEMmy9vNf97aNCOJFjULHJeatBG7ltUrsRX5f6+
	 TZPEFHx7uvnaIqLsgwgO87KV2B/QD7hN0TE5t4jlB6MvOUQNO5dqW3zO2SbIEhHmwg
	 axoZ6TlmMMEVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91923CA0FED
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175743059358.16952.14841744878317482876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 348e91de18e93eb42917b58f57add7f242b90b5c520cd4ef5862e142671ab990
Date: Tue, 09 Sep 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757430593
