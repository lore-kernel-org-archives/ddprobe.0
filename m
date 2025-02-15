Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F7DC1A304A
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 10:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739614134; cv=none; b=ex/16QASGtx0XeQnTpHlKFHe0+W8DDoUH2R8Ynez2HcGaXri5q3qj5012mrS+50tvFRizr4YzPZzmX6jNMnZ+N9S+GaC3z8cfjzVBHX8FFexgIX6HdHFR3c2jngeSYuM02D/7YhAEqxxovS/M8xLA6XCvBjNwZt5UzDC89WvItE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739614134; c=relaxed/simple;
	bh=ewcGTRfOE/gWq2vbjNHqMIHWoLlmiOzd7d7uioJVyYw=;
	h=To:Subject:From:Message-Id:Date; b=qoigGNc0LoWe3/uzbbCmkyQLZCSSbPW4/udOos5qx+n2BLdbIDUb2CngsYMYqdmTNDWSa61V7b8XRC4kWuE9pAFhlIVKidzGOBnA15Y1tqnMF5NcVrylnH4kpiRROcHFZQIWGZhaPOsbHrwcb2A+gmiQY/G6LyP/vAWclZIhbck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cDjRL8Og; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cDjRL8Og"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6053C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 10:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739614133;
	bh=ewcGTRfOE/gWq2vbjNHqMIHWoLlmiOzd7d7uioJVyYw=;
	h=To:Subject:From:Date:From;
	b=cDjRL8Og/e3OjGL2Ffc9nU5nimz9nHjTjqxAZEWFl2KVG6/AGKLpf57sCo0eVG6qV
	 7hDJT9TglZUk1fwORc+HilnZwfrItQLcS2i1e0Hvmq0033NahnR2gfJQJE6Eg1FSeb
	 Q+Ls5KHLczV3UGL6njjkuLJq5JmTEo5f+qAgT7Oc0b2jjOsYNZY1WJ67SO2fddeqct
	 r0/0GfigavghVNk1ZPMjwPGE1o3lPNmA8cgqkOCsL15P0/Te9XQhuERn3qq7TGfyun
	 UvQmZAUEvNjjQvZe6YlPqJ9mdYR+6gVlC0mbpt/oJSedxYqA2Hw1Rl/T/7KQigZl0x
	 gT0gFPZZy1O5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957D5C021A0
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 10:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173961413360.16747.13648692299443577956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b4daf5efe0301aa28beb78ffce048fd61fb6a02684f80552ffb7d859703b1c8
Date: Sat, 15 Feb 2025 10:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739614133
