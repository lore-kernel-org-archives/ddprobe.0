Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E2BD4A3E
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 00:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771545894; cv=none; b=Z+ArCP0aBWTwpki37ByclNtdqPWX1mmPsISnVKYvvmzgwglCPXFxhTaRucF3nSEd1YGzex3r76Hsu9Tt6urAjWZTRTh9Mof7/RJ3Z0vPMBWpouOdXlfKYkzc1v3NaKoIa+3rX76U4GDYHeS6HozzpNpyrSuWSg5kIL9uS9L4pac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771545894; c=relaxed/simple;
	bh=8NZbdx9iqLSPUhUN7GN0iWmDelppRB1uLkyAillJpKk=;
	h=To:Subject:From:Message-Id:Date; b=IirykvcV5w/92EZh45iX3F7AVNSL8bZSBOtMhXM5I4yG4BVwQiY/7Xd8uzQlzAix+8NJjCzYr+WHnPNgZp69sy3kgyVA0iZWfd9+p3/XihPw8uWO9P/8CHr07R0fZSl7Ik0aedxpbJ9YEEWm4R80x1fjabDcfUeF5SPHX+vhf9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tTQREM5N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tTQREM5N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC46CC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 00:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771545893;
	bh=8NZbdx9iqLSPUhUN7GN0iWmDelppRB1uLkyAillJpKk=;
	h=To:Subject:From:Date:From;
	b=tTQREM5NMqAkDQ6FtSp+VVOpc/DB8WSkOEDbgzuzgJADg1q3LjGz+t16PdXQShhnO
	 6DYSyXc47fD6EW7aQOcgLnh8THA5Q6bu5WGF+OS8bJKq8ufEvaV1IDTLL12e+pqqlK
	 p43WUPB4lalGKuHTbzDm3mQNNjiv21+rO+SQA2ZrKxn5uvLH/Q2tuJQ0nv4qsGPEsv
	 BY9xnBP8D5WRr9jsQQYrobSf2d5prTPjcrOIIeu5UYhC/xQ/xpnKu5pjd+HPylV5o7
	 q/4MFIwKv2vuiZfJ2+bolbofU3uCrdTwW5TUpsG4cvvymbMCQVkNu04bF0I6/BWkU/
	 Ev2Cf7Z0t0uWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99F7EC531EA
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 00:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177154589359.4574.10331382551901227828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6e9a1bc346af821cc5f058b95cfb47857fd714394b946bec4f1fb32ba1df2b7
Date: Fri, 20 Feb 2026 00:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771545893
