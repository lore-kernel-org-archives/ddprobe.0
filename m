Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BB62445AEA
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 14:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786456834; cv=none; b=ORXzU0snKgj4KzsZnFLAe0yQDsxSjh3H4jOUlbkXjqGCKQwnvwbC48fNDhXXx7Jvkjw9LSnC5a4Ir/gwTOwOceS+X1q7KS88BnbFq6UprEtJvDiBJCBq+vDrI1iz+0+OmUPfIiYY6blEvTI8L7TEY0A1+IqaBvXAUmr9eQ+ZTYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786456834; c=relaxed/simple;
	bh=0HzIcIkyZ5jG8ueTSmy33xkQ07yH0aawxnTv462g+E4=;
	h=To:Subject:From:Message-Id:Date; b=sKGSHKRkftRINEJUvOOuAoU2+u9izniSaQSwfymR8aGJoGA4B7kCtYtwulhmn1/dcdWGWA003hMBkdhxv9mt3/M2ktB6JLIutnwnghc8nhFj0154UL0hXST3mgsMrwJ4gXr04Alp/RNh0+qx53PqU+3IO3z4fHde8luksywUBiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kSEzreYP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kSEzreYP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBF24C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786456833;
	bh=0HzIcIkyZ5jG8ueTSmy33xkQ07yH0aawxnTv462g+E4=;
	h=To:Subject:From:Date:From;
	b=kSEzreYPt7+XRxCEFnM7vKcK7EIkeNiJBMqXmiF5d85w0ToKNF7f2CnKEDUSH1n1g
	 vpHMZ/wFgpH8vCH4yCMY1++8sH3+iZ/oazoyXTtV9g73ZYy8nx6nbAy8BFvreayj+5
	 /UEOeTzO8k96Q0nspZE3+q5VXa3kFVla1sqrm+7a48bvnXMVkAx3y+V1Pom/CPVxqY
	 nVTaOMdunmEOe+NqhbyMDn3BJxp0UxHv4DEWxX6v500IOjOSqNyEhxz6EiI5s4hRU5
	 I6vtQkPgLcjM6t7VvxaCKmearGfUKamx7p1wcf7+QJIZinMbX3MnSNCL8OYbDVrQV6
	 2rXSCR2ARwqQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99EFC5AC67
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178645683368.21452.5349576385779665692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69dc9e85c83c0e574c6ae81148ef1b78f93b77e48290272c32ee16229e403eaa
Date: Tue, 11 Aug 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786456833
