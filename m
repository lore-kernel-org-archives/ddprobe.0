Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1910D1DE89E
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736201154; cv=none; b=Xp9xTf9WY8TbHPS5u94yYthAITGA48wt4Cd1aLrGVq/9arDN67X2wLgSfiqGvp8E2+4nRv7NA1HAY3w0M4pqFodnXiKTQsO49JlUWogAAv1p2hDGOBC1R58DkUyrHKX7h8bb/5hQ1qTtPRJ5dm0V+khO7OpjyyEztUCT3vAYXHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736201154; c=relaxed/simple;
	bh=L89GuiZLFMJnQqRFMdJvg7nINil9hPihxBX2ACKUHoQ=;
	h=To:Subject:From:Message-Id:Date; b=fKF9I1+SnARJOJF6FzF0swq/G3WdFK3TvLEuBZK5SffElt1nVW6h0E8KYIevJ8Xm3KvNaqaotvn803afF7lbow5dCTxZ83xymbknQMxUxyJUqN3LgUJFOpB97zaDrSVJ4G4W07punp4ST395RtW4VlhEdTOSU6Ryn0Xt5Fm16FQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e5OvHlaN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e5OvHlaN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0636C4CED2
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736201153;
	bh=L89GuiZLFMJnQqRFMdJvg7nINil9hPihxBX2ACKUHoQ=;
	h=To:Subject:From:Date:From;
	b=e5OvHlaNXsNqVtcBfAk1ukWgZ75dHMjpEOVyc2MLhBkF53LuaC3T9OA+gcaLV8mtx
	 c5romJ4rjbJdcm6xJVfhsHTLk9PfxyxRGdbiPo/p9A8A1GlJSxjNFIIuR/D8IRMR8w
	 1RIznuv3Xy7XkedQxS2qTnMjCj1J5bFAOOfuaLF3W7UUWgHf1RGw0j9T+YuYzk32VY
	 Er2xj9VGRTRCvYCbAfQu+KvcLjK172xkQSue+ICH+hcuce8nyErHvsPUkM4AVu967S
	 hnwAHSpDZDRqPlcE1l6LvyqP7lJTC6kuOmx7IFr9ulnsTrzzk4TQMdNSHB0Vk2HyHG
	 qJo1/3lbv48QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F488E77188
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173620115364.704.6439464706254066999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d996ec9f7b5be2be8e719145986dc785010884a4ebce273d70fcd568fb7ff366
Date: Mon, 06 Jan 2025 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736201153
