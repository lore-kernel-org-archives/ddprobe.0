Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D41A1254858
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750684793; cv=none; b=GHdwHQQXybkOQ9LikAMKSq3XdRq6l9R3O3yiL4Ydivx2uXWNizFjCKHSH5TRgWyKti0s166ovqjcyOOW6dIP7/bvTAiQYTWYs58ZKwqPxowVFGtg1refkZOxnF8AYjiWG2FzAX1EIv5nWZ296xLqWxRpahNxTcinfHqa7F7t4Y4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750684793; c=relaxed/simple;
	bh=fdZgP5+pZTpcXEe92X4rzoalLeBx7OjsAywzj66SS10=;
	h=To:Subject:From:Message-Id:Date; b=T9vT71H0MZE/mjkfnbiNT/HkLsVAwKcX2Y3NQN8CQwTi0ZokRDQnsJD2Sm01AtGIth15EkFBvnjKi6ktvdf+b/wN4bn4vJDRTRx9ZJAaQIHmUXc4x3a5asgXlNNBYQjtHpVXwgGDT4aWJ+gPizaa/8HAjf5CCkr/aJy9EoJR1NE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iZonho0F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iZonho0F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F924C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750684793;
	bh=fdZgP5+pZTpcXEe92X4rzoalLeBx7OjsAywzj66SS10=;
	h=To:Subject:From:Date:From;
	b=iZonho0FmIubz6jB22imseQxtStNuQGfUVqcjtfa5nX9mwWr8IDvrWEXPyNLNzWO1
	 FnOSfehomH13hQ8nORuUF7T1GWmLg1IHHuwr8NeKXCWXKYy94J+W92hFaghD1yKMqs
	 w1PUO2LxooqdjhliCQmtF8Qbq9siVC6A1YuR+ZRp3DJxkdRewHfXvzKyTzNMtJZQSC
	 IogANd2iKW+ILA9xWMBjlAOeoUJESR+xoWj/6TrcVs/Uok4kniqQaOFXDx1AtcxWM8
	 BxRnvqli7Yb14f6pjfrGqIPBYnf+V8ltxIDKD/BEpc8ndd4USJQPpWr/OVWz7dekAZ
	 c1grualKcuylw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFF2C77B7F
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175068479357.21200.14638393895962718332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea1f39e05c146c730284df35d799752576f7aa8b27df0bcc369173f6812673b1
Date: Mon, 23 Jun 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750684793
