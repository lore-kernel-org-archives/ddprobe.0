Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BEA126AC9
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 20:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719777863; cv=none; b=PCf5YEltUs7OW2kP4PLP4FTHJhmV3P8xNYnCouD6Zl133KRTeQllm7aszlJ6YIEkEHghojWHjN7h7C47dZThzyGb/jj2sHURYHfh/d7FkJWC6ub6ClAEx2cR+uCn6/3I7couSYcuE65y+nl4W7VVs73mioYoCJRD6bQJ/I5P9hw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719777863; c=relaxed/simple;
	bh=XU65NQcqN0XWjx2ggM9c6Pkxrbzdg+ooepUF7dq2qg4=;
	h=To:Subject:From:Message-Id:Date; b=bP+8bvIufS/OJfDvwwFFxKN7qSlMR0Y4whokeEyqQ88AhIQd47LnU3Lqj9l423QQy6NPHa0NQfO4Kbeu3bjs7zjN+pnZMPHHL5Clyyo5juEQG0BT1Nww3OpqKPi/w7cgwjvchy9pqRdp1VCfU/d0aZfe3lFnASQ0c37g+4qpZkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mRaNw0sl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mRaNw0sl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D98E1C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 20:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719777862;
	bh=XU65NQcqN0XWjx2ggM9c6Pkxrbzdg+ooepUF7dq2qg4=;
	h=To:Subject:From:Date:From;
	b=mRaNw0sl5jqchsmMphxMzqyyZEl3W7kOP5DkofLndbd81PgLrwMMEd423XQH1C+Sc
	 XgeX8Ecpr5ZyUzrwPglA5ZSuoO5tl42bfpUjhORO3OoEKEZsT+GkdyRNsizaV1KtB0
	 clAa+6l43/j9dRFeZRUYy7jjqsHVyBiEZgKBwg6JUhvvHK3Jrysr2cXyCTMtQlwjsU
	 eOdUz3NSlKznCLgvL4sgARmvJwUQq02Andh0dxR8PNtNXCRijavJlWWzS/oeczxt80
	 AhVhWUmxUQfByffsXEgTorA3iH7fF8UYtWRTpDpiTIol3j2gGOn6Z1rvi/G6Vu44Jk
	 MK9cFgKaxASJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0564C30653
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 20:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171977786275.21025.13610680250670222529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4266c5eecc4e7d62abaa0627c703a5b4036d6efd686a674fe5c637dda1d925dd
Date: Sun, 30 Jun 2024 20:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719777862
