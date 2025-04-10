Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A9DC1547D2
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744250394; cv=none; b=pj7IoRbENKM7BXdqGniCDrOzEXCxQfoby41386Pbxq9Gu5Mo8uy1d8GTOaK+1mv55J/cLhruRwZpvjqzTfKOi9lduW6k6PUeF0iA7rdI486KVd4clTRW7ZekKFU0N6pubeSZIvEOqczmBHJHM8JJ5hVamyXd5qjKPVJ09c1Ipog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744250394; c=relaxed/simple;
	bh=o3sncbNhewxgilePp/IkND7YEuKT6OIIrTPGUodpArE=;
	h=To:Subject:From:Message-Id:Date; b=b38MedmdysMZaCB0ZarepgfBWEA77SEvyU7ApcoE+BVc2Y33pPLkkdTSrn0RGh3YCCMgwqOw1wn6Ybft4NRWlds5puh4qo3n/ZaUx+W1K6GIqowwYDyZ/TQGEwYj3quzGdkqLbW3qf46KNYcVTpaknSa3fSeC/0YToTll4cHiTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VcLysJVw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VcLysJVw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1725C4CEE2
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744250393;
	bh=o3sncbNhewxgilePp/IkND7YEuKT6OIIrTPGUodpArE=;
	h=To:Subject:From:Date:From;
	b=VcLysJVwwcJP8yANJEQkaeTMrClnj+09Gks8Uz9sAUDfI0cu2430oKnB6CjBl5U/l
	 XPKkagqIImhHrqw0uWI5jVSVU8FUhPnTgjPhezo63objWl6WhPzejXlQqpuvCXps+k
	 q8I5Dpy8W47AMEnekuV/PM92EgIHpFPPUvb3v2c6Bojos1e7RYPEql10xLvFkgq+2i
	 98oPFxZB0A8F4Pcl79f1JDN6gybe7yC2LGbV9qyCLHoa0f4HOd26UIHByuef3zgvSS
	 EWcEtVXSxOKvZvqqW8Hc0Xa2si2kMNNpEsZWSB/wt+CkJ6sXw+S7dZqZvswhI2L3iX
	 +FQtGs9Yzw6kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948D7C369A2
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174425039358.28289.1477974495551374415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce0440de3acbd260ed15e2b23a0fdf94ab09de95adc32fa214b8ecf83feb3f5d
Date: Thu, 10 Apr 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744250393
