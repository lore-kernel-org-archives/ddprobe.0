Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CAEB187342
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734819954; cv=none; b=S+/XVk7ZIPjkYSc0hjiutIX2IqckJbamgFCy9Im3g6V5VAC3qSpBbEtvbvQWuC7775+NYjPJZ0PcktWDf0KpSLM6hd0EuYpocX1cqblFjLzhpuS/cT/thEH0BH1P9yFaS6qcbxS6lryE9sSP9BPZhe2RgXPD/Ne94RJjRDB0Q+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734819954; c=relaxed/simple;
	bh=0aSkIWrheKDWWzzCc5XsYutm+R99pdD9PByOK0bithg=;
	h=To:Subject:From:Message-Id:Date; b=DjfHC1TkLDsjJ1YvYPHCJVk6jEjwobmlYNYQiIyPGtF87mx1RGHswz/GD8Mjog1hiVBAhMa2V50MYoNNHIRIQI+zwLfXWVT/+mwUdvTUMft2qkFz3mMh0qMukY+1wo2Oi+awrfOOgOj8VsHxnFdkEDbgKdBHn/84yqAisz0SWVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UWi4kNV7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UWi4kNV7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B053FC4CECE
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734819953;
	bh=0aSkIWrheKDWWzzCc5XsYutm+R99pdD9PByOK0bithg=;
	h=To:Subject:From:Date:From;
	b=UWi4kNV7gKHGRBvR3r63668Ywx7BWe14ZApKvrvVCEtY+0iNBFfUrHS0+IcEoN0bR
	 scbQXAZjNc2k6L3KSmee/xKhZAAUId4DgcVNyzF9KwQ750sWYzu1nPywPokQv3lzGR
	 wbXjdvpHETg2JzQ94+eysrErekRkyQB1bEgvpDySMLfjonYu6V3qHUv1v3rHsm8xuN
	 gotVjCE6zPnY9szs0OnchBmDIOtRg2krwojtFf+mh/eE1weFYw/+fiefdbJplbIsUe
	 u1e1Wkq1T//81qwlGUWxkCTU5HtrPzUrU5qNI4FpwWkM7sDPlPq3kgKzHkuasJUlmd
	 qZNWTMMsvZfZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A403E7718B
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173481995359.27526.8900460611253617489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef57ec9117ee76b63d78118cb44a654b4b90e55941df12b1ab9eba8d9a95a77d
Date: Sat, 21 Dec 2024 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734819953
