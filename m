Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20818257459
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755202794; cv=none; b=bnT/0WE7u58VWbPKewpb+OA6wAkSxwsdFFy6UM6T4WMOBYBWzRZtn/o9/3uIZKBGfmqCJTGLci06I9rCQYUjFv8BuV4XEHQG7NS9WUjifUTdm/J74P0T05bRMBk4X4/AiT3dBRBh/vt7JNFgEXJ602ddI1rsA+XoapaN38rfvcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755202794; c=relaxed/simple;
	bh=GeGkYcOC0XKGBmY0gnwK7yqbmb71QO7Wphvsn/v2SqY=;
	h=To:Subject:From:Message-Id:Date; b=XUzJEpa9WN5+MJjv/Xixw0v/nARNTaOTNK7pZZecWd7I20IaYsnr/2MqVt+xj+lTFNKcgGdRRqH9IeCymkRkkyWdY6mnkErV+hdl+V9bbxcxgDGl4yiuUTXThsyZ7Jy0KHKz6pIsi5C9iY3T+37YTSEC5PWcXFqFCvkRB3p7Rgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gArS/km+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gArS/km+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CEA2C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755202793;
	bh=GeGkYcOC0XKGBmY0gnwK7yqbmb71QO7Wphvsn/v2SqY=;
	h=To:Subject:From:Date:From;
	b=gArS/km+wDGTPKAYvm47VBthYEuaYRWIsgeMtgJMH4kFoxJSPHsV7VO6ievqsWIK6
	 qKyUEqrVX1SLMcG7KCDX/7nGGyZ9/61rU06z38JUncYIZfKG8GVGzvxqr+TTlZ6Gab
	 OCNJ4XX4aIhEROoOnBcy25+ituTtKZzVf0rFjCvYwy8g0OLWEy21IB1WbM+7HhEDFJ
	 Msc5M3csnhwHQ33EwNxH5wm8HdlXn9XA/+BxPM+xAR1B5tImGZyz4Hk5Sfx2m2LpF+
	 2Kx9Qk5YNM53Z4pRK870RhFN10S+HyV6bd7Whzh2nx0tq4LlWyMzsZNVTUsZ4Hz1+n
	 7d8zt1+xP1uwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E751CA0EDC
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175520279357.10111.11354741934759977556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91f5c397e9d6a4a326dde73ae5ab5588ef6f0f62aadc7455319fc4e6f57deb40
Date: Thu, 14 Aug 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755202793
