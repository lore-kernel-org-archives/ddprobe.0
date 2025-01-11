Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77823129A78
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 06:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736576754; cv=none; b=ZdW+BpSUhOU5HMzFMAV7Lm/OOzgTT2WA6AfZ5ydRByUK0Ac5Co98I0VSSRwlScMUaDaOY2fy6e399dhl+QsdCzwrWhlmqSKf9tsBdsfvTq55xIfTB9cgEkUhzfsKTTSII0+aZUlUdg/sqoJNDqkAQnJKNOqh2zzBXYSXO6N2bTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736576754; c=relaxed/simple;
	bh=g2Au/sYDHPWVYgK59K6FTvEH1iD3j/jB3npUjmPUa4U=;
	h=To:Subject:From:Message-Id:Date; b=Z0Ye2T1HJTdln/+L7YCgZZ+2bvFRhDqXM800oYi5mmOK32netbC+vjcRR2YvqJ2Kjh0Yptpv2EGhOusw8iM4CXbjb5GB+yIURH42yVxCR1KMjRQMcj8TIsm6J3iski0ZjsVJbxDEtj1mMAoJelSy9wjJ+bu1+ZsFpUV45IBUsZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cgnc06lL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cgnc06lL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6FE7C4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 06:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736576753;
	bh=g2Au/sYDHPWVYgK59K6FTvEH1iD3j/jB3npUjmPUa4U=;
	h=To:Subject:From:Date:From;
	b=cgnc06lLQEAFnmMVF76mcySsj9EP6S9TupJV60EuXWPQ8sdbQcd6VZFSE48DNq8C9
	 Bwv9fYDK6tlrnCDgDc8293CCU6AKyer1l/QcExoGdfjSZpLQpO0LLm5IsKlJKIPJ1i
	 p86kUOyHws8kL6AqfHTKK96OdlrCTZVQfdJnzjSgWs3rm7gfhs86rRJ3jT+LVf9voJ
	 P0CVufCyDtws5qk5JlENQGYNWdYhc8XSB5PewBjkt/Gt8x4BBbNNl4yiW7gn1rByWM
	 gINZn63gUWOgUFahnypIIkpoQZStQSJAw5LttaBMDzTt/+sOmLYiTczR1Hr+ihDj9e
	 NjgdL3lqadvug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EDC2E7719A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 06:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173657675360.5439.5429453012191854206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f8862ed809ca477587eef525a2ea8671eaf3af87cf6fd4f50554ff2516fc5d6
Date: Sat, 11 Jan 2025 06:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736576753
