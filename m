Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D4251C84BD
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763143194; cv=none; b=iELO+jc75utAZpAqnR2CIi++MZ5HLwPpaTtizeDN4m2m678tMDPNksyKMmc9/suUCwzwFtc2aYlRsY0pKGCLXQK1fIAgJGB9t9C3YnZCjO76fiEZ+IyKcm6p8se6GZDLG+Yn5D6Lron6cx6fDi0tnp+0CJEo8SEZ4gIYu6BjJPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763143194; c=relaxed/simple;
	bh=MSfWM9sr8qpoNOmqAMTn20DjuHVgxazvKcZLVGduVtE=;
	h=To:Subject:From:Message-Id:Date; b=RCQCQBSB0xGySaDZM/ly3xj6Q8LgCv8xhK+PeScqML97b/am4GbLclfMocGkXUQMT+qGZ8UgSsXgP+/QBz5Jh8i92rPt2gy23rLqyb+0t+BlGq9AByR8MZ6Yl8BTCxs+U4kczNjeLXOHbT0efdHUkrcJHDTNC3F7wFYRu1MdDLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z8gSV9Xi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z8gSV9Xi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A066BC4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763143193;
	bh=MSfWM9sr8qpoNOmqAMTn20DjuHVgxazvKcZLVGduVtE=;
	h=To:Subject:From:Date:From;
	b=Z8gSV9Xi1HKNq2wTkuCQ4JUqfutJ5BJxRF7WrtuFn5XyuIeZ9lgjjAwqr1Bi2n7tJ
	 7Ajd6EvEFc60ltuBufW2K2HqP35arBX2CNQmZPXdiyWuASG6Wu3zzsCcjmG44k2nBi
	 XsdUsC/onqv3UBcW/zf6fGxm04fn7z7Yvr8OITWltyRIpTtAdyH4wxI4d4RgRywGDO
	 J2THBHj/D4tpDFDqnXOnK16gBOsxkVqCSy1WlB5HrMS0gqINHJfztJP6kIDFRJrQ3O
	 blmRXcFx3rDhnJZL8g4FT2vDKeMelF9Z/j3F4F7t+UbXbYpW43z4OtERSb4SZ4bB9J
	 o5ql9vNISgJoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FCACE8D67
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176314319358.9176.5703289028314238771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dab0afd2e82dd87f47df83a9ed97f1dcc29963a243bf9a973b3118e0ff317ce0
Date: Fri, 14 Nov 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763143193
