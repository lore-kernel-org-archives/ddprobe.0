Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E3D536AB42
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 18:53:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769108036; cv=none; b=kfe9nzjmFR4hl4fVtkQ2x0mXu6BQa55xqzL31rFkHg/4nTvAeXrBiGU7wnWohmbhT2/Dr7BT6MSqoNhB8jXbkYngDY2/u30nQuCGyQ9OBI56fMGnV4VKt3xIUmAubZTVLUwKcLE1ltLE3RrR/5WlAQdsUaLIphdjlHsxO4KYO/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769108036; c=relaxed/simple;
	bh=LrEIlS/eNfL8YTVELNxPIjF9N+jZIV0AxRAyY+tCPNY=;
	h=To:Subject:From:Message-Id:Date; b=nKOaUEO8Lk0JMPG9NHw7SjGYZ4mUqq91y6NjZRAKjyoW5Y1eYIV4omv0nANR0HZUrrxW3hG0jM50z268EybpyJQ0kBEhjiQvQfCSLZ+7jXNmW4kd5NjiL+hKfdFlMX/8FSetRyRqhkG7OEqoT2nB4uLZqOQ6qHhsNZO9vu0ody8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sjDUDT6V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sjDUDT6V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1DC0C116D0
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 18:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769108033;
	bh=LrEIlS/eNfL8YTVELNxPIjF9N+jZIV0AxRAyY+tCPNY=;
	h=To:Subject:From:Date:From;
	b=sjDUDT6V8lTBapSoyMPW5fTJcQ4Qpd2o6QnklZYhC2sPBnfeD9CPMg1hatbtGgUI1
	 zU0sNTvVmF/GLTQ9lZk6BtMt/7wmUYMAbcU3rgsJLTmuXAUk3ZPM4Q9SoavEXbvMfU
	 G5KH6dLCfBYx5mUZVfmC65vyWoz/M0N03Tgj5/x9/Sd9sOY7/iprb+2pHAtLopGAPo
	 rvNvrKf0eGg799VCs04xT4qJhwJ9iqMXECR/YzwGp+H1Z9CZWZ1BTT662225/8HQBk
	 Tt1kyQfDLiTiZlF9+JtkCX/6EJwfp4Z7ZuWxus65G93sONpimHYwgD+HkQXQ/2CbvM
	 xe2RF05R3mndg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914D9D6CFA2
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 18:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176910803358.4679.13787920308061379863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69f866f7b29dc82cccc29c0dcde217ca51ecb50a36f6a5c61e14980765bb6400
Date: Thu, 22 Jan 2026 18:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769108033
