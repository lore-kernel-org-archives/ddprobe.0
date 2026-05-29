Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BC273148BB
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 19:12:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780081954; cv=none; b=mjYy5LFZy0UGJqQPB4ho4wk0Q3ouvE4FRCKZyesQshCfPzniI7NJd4LgCl1r3kMSvOx5lVOPwANkijFg6T0jL0zgIVL3riYh141D2UQSmqzqZ0jKc6GeJplGh+rE/134OoxUNw0qEiLR5Z8qLK4A0BoiEEbn842/DAIlFj31/EU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780081954; c=relaxed/simple;
	bh=IaEbAqKWqDDJ5d1C0jAW2brO6uog580ra5q0+Dor49I=;
	h=To:Subject:From:Message-Id:Date; b=XbD3Fnse8XvkBPhlM9OOpeqGob0I2sHwExnw8FpfgSjEXMEeHXgZ3RAgwwUWVpglxNxycO0ta9EXMpaq7nnwdUJyqddRAz1fZlH4hMMMm6ZHPft6kiO9HJwmn+lHN+0Zj2SCov+TayfBWEIhs6nYemPH1t1wFWWXFBOwn4d1rX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ldzvwWPr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ldzvwWPr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED4B0C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 19:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780081954;
	bh=IaEbAqKWqDDJ5d1C0jAW2brO6uog580ra5q0+Dor49I=;
	h=To:Subject:From:Date:From;
	b=ldzvwWPrTkWOg56Fso3XHqsFJs514d0ntRicDCyD6bLLWts4iroKPo+e0G4sUHMk2
	 x6fN31k55rLhfethOFZq6pRZV5l2ciJfqHY2kkRLkFDAVqqw1AoIUIKG7TmyvLKchh
	 QCG4gop0tlDbxO/qfjwjIwJHev0JBl6BAq4PX/JHaevwWUZ3dA3Zq7nqrvimY8dBkz
	 WfE/2NZC0RqHPWXIaCWwl7259FAiEOX+HqnWHvW9M4Dbox+767A7pfleSSwR+/XlDv
	 SCn6Un8ImRjcyGGILMAzYLQYyOBZf5Dup70S3oXYICI7JQxpiD2n4zqrayFysIoRlc
	 fj5o7wyOzsG+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8F94CD6E49
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 19:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178008195375.12114.13227183457595445777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d7f9bbe695cec1da0b7a51362185d1f5f6f624a850783f168dc5d7fcba890a4
Date: Fri, 29 May 2026 19:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780081953
