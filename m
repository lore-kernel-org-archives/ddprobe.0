Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AC171E5B78
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754387994; cv=none; b=sL9zuykr9c9k3k683JY/gDQo7GMpGIAiLDlUTcH4Ao/nEOFmgN8l5vVcaUOA7R3GS7WOXT2KQCR5JWfq6/CpvsISG5CgeoBLOqxlPNKlFnqAaQvrzSrOcL2MSvBSkHLZ+N0rlwA5H4oPzLAlPP8M+b9zh3jDfbRvLG1IJCXcZrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754387994; c=relaxed/simple;
	bh=ocLOLMzQ87nHYd26V0mK+O8z1DX3iSb5fOHzu28NYrY=;
	h=To:Subject:From:Message-Id:Date; b=KDXSv/OusMTW9A56HR2RSWDOiQ0OiNN6/MOISd1Y/pQR7zt/dmIl1+E7pihFH6a3ynYFE8nLA1NLrEp6fARGqvjAbmA53FPZsl/qU6u+Q0vBluqTdFbVc7i1RAmmOVZQcjtaJBT9OuMh1/aH2fF2/Q5NO2NPytDJW4xyNiVjZcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uYznrJm/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uYznrJm/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D671C4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754387993;
	bh=ocLOLMzQ87nHYd26V0mK+O8z1DX3iSb5fOHzu28NYrY=;
	h=To:Subject:From:Date:From;
	b=uYznrJm/9zPJgQ/itYfxdzpVuHEv5GJio3WYWoY73qhRkNYvdn1yrji9V6j+7rihA
	 43CF5HRbssVOB7R/6eo49bcjGoVIKSayQtj1XITMFjSDsS9IY4aMWAKYi5rM8jCBJS
	 cy1Gaca6P0btg44oZaImlzJWmB+z5UCuPct1aLaBbY/lVZbc1kzmc52lRlhwmcsGC8
	 RgiDSoERNe3JIzOTC7gfjXeu+wTeH3wUQ1rn0t3YpdzrmNeFiaP5CuZHtN+IH8Bo8a
	 kHgL/PTS5kOdZoxljY6aHWnrGKPeovJyqFlUxVXNBuhBSl+6bVKuFb/8pPWXIY7Sp5
	 j4+CO7A1474Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7E0C87FD1
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175438799358.11668.18429982622192023082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a881ede6f20c0bd237d458246db44f6c8e73d1b8f3e65215c07ea143c5551b46
Date: Tue, 05 Aug 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754387993
