Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19A2F2EC57C
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 20:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771619094; cv=none; b=uF0wLq6Znhl3AQeTs7q7PGFPpxavjiNOr7wRxWcP1t5Thctd9Y7gRwCCO9SdbKqxB1t8NJ1q+e2/yKzEQWLYq6mfJhsfn942Zsj16mBYiCYjblGUDbU3prhs7YnEbWxuaP0lQ3c7XvjfS3M+FRntKcSD4WqHviLybSN3KHy5dCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771619094; c=relaxed/simple;
	bh=j85CfxwTjmOFd9wTfqSsLI3t4KmvlRr2xfplKQ7d3Bc=;
	h=To:Subject:From:Message-Id:Date; b=hRnSUX9JFwMpkG1Y5YiLWyxAA551ip6g8NVNLNyLXwRK5uf0tHF5aFZda94Va0boQ9lKdcRO8bVosudbRyXWNN0Q67UhpbcCBhIaeiekSqGcGG4WaYH3KWxDieTjpLpLv9gh6MJtlncaQ+HgP8kv/UaLq21Bddd/1wn0B4DDF2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B11LcmGd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B11LcmGd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1914C116C6
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 20:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771619093;
	bh=j85CfxwTjmOFd9wTfqSsLI3t4KmvlRr2xfplKQ7d3Bc=;
	h=To:Subject:From:Date:From;
	b=B11LcmGdzwOwyYhHXGEPM3WXGhGiROPL88h/ZHaGGiKrPsvZv7Cp5Z9QuHu5fn96D
	 +5C3YDzYuOXoWZ26Onx7Z3vwJsO7dwlK3fjAgjb1jIWnFkDW9SUxcO+xVVBUUFBq3U
	 yUubYVB2zrnb5tqjHvu4ugKmQS7REZbTD6pVW4kzigCwkCOXSV9+hnr+DowFTSdDAP
	 tZ4+bg3u8xoTi/KOuTttxJo6bc8fRhK1KTCMNLOuv0L9micrFpXHkH4FfgUibYKiAk
	 H5oGg/++SfrnpHvou5QxSg9VwCWgUPXTLsW1j7Lyuhste8UGFr6FNulg0gDgqpP2SM
	 f2yBIQcT4K5Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D7BC5AD69
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 20:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177161909358.22546.16175038139524224393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21efd82168ac4122ea1c7abb362ac172f6dc62d15d7831a3a1e0e0ca95722a0c
Date: Fri, 20 Feb 2026 20:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771619093
