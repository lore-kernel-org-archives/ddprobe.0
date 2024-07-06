Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6218043AA1
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 19:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720292783; cv=none; b=PH2rOkEwMLyeuwZ/lGLF0+9dv0mVPeG/3fpB1wd42SAskEZUXRcvA1qYKEB+cBVYZoEVeaztLefgu+R8Jieoce2Aa04LnQgHdR/bkFPdmR+sQOQLIafHTtBLTlr8NUQSj9Rh6pereMHmR9JXlqRWs68J/kXuzcH5AIOUspkxhT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720292783; c=relaxed/simple;
	bh=5OJsQGB+7rXQzrWWrrRw5jmNFxZ5lvlWFy2yibKIUME=;
	h=To:Subject:From:Message-Id:Date; b=mfjJ8uFFc5WTdqgh3rgyuP280inyqDSy4X+slT4fT53ddqOH+n9K9qazGjax62Kkd50XsQ5ML9hnqqUAdsoMNqae1vJxoBr8/YiMRKd/ZqtFJsOw029MN5DPLLN+y9GpnsDDnNZRynjV2jLIM4giEhbPJWwbh3oH/tfLyqiWgNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jav2JC8Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jav2JC8Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D69A0C2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 19:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720292782;
	bh=5OJsQGB+7rXQzrWWrrRw5jmNFxZ5lvlWFy2yibKIUME=;
	h=To:Subject:From:Date:From;
	b=jav2JC8QEegVH33FcFS3xkrr8PQc9A5iWpdvRgbEtOJFcSMkcamczQ92RtsLRR4FV
	 IHMc6PvDFBseC8p50GUKJzdLv9ZJkVl9bMqp69Dqbkp6IqULtWnGkI95Jv8YxIWkda
	 7hF2R4DNzpENtU6k4KjCOXnO3NGCcWomG9sLvv0Q2Gahl4UkX4zGjdb9E9hq5A1S8B
	 Q7IQtK3cEAFnsIm7BE5InUJyCJ8U14oWmBcYTrIyQHoz4R1nUu+l5MjBFu0LrESKUB
	 jrVN4smqH7PuVur93n6XqXNmG/Wp5Wse8RPsfrFKCzdX43xzKZYW2th8Zeymtyb4ZH
	 n92pDW50qyvgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0A84C2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 19:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172029278277.26070.6874989968534168704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f80f9fea19f3578b121b9a3a79e9416b2411f29cf85d450275cf10f17fa647ad
Date: Sat, 06 Jul 2024 19:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720292782
