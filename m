Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4653D79B87
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 06:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720594583; cv=none; b=qGf2vUzkzMOsYip5EJFbu5O566lSYNHjYmmuY3WlZSmW/rT/K//r29DIXs8vNknvjb9RXBjPaINlv3pEaKBKPRmIDwzMWvV9zdquGl+n8YQVINTdwVVlppjt+75ZlvZeHk51I8K8Tc1Sf05x0tRokIQKmbZOGApcWqiVJuLIvuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720594583; c=relaxed/simple;
	bh=NxoIk+sOvepWuzJvJogM/taSCkxJeLXMOObKE21qikI=;
	h=To:Subject:From:Message-Id:Date; b=UjPjIJ+C4PPqijgO7jAe9ocixRIKkstMLkkJ2YPiMM1mZDokeW43iF0dypfZWBTOZqgEFwwpDvIymbCOw8Qok05IFT2l43/egnLu7Btm6Bz740cuSlTFZv9gvddnKeNj3pK8Ft/+I+WuGIA1QMppeio/nWrLUmcDN6+4Nc5zhkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LfrdSSjz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LfrdSSjz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4EEEC32781
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 06:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720594582;
	bh=NxoIk+sOvepWuzJvJogM/taSCkxJeLXMOObKE21qikI=;
	h=To:Subject:From:Date:From;
	b=LfrdSSjz8pTi4abwOawWpFP+cUFx/ePqEmuKl072Kleo6xx6IwY16j1j1cJIiz83c
	 zMUID0CuVnfdAAdz47R0Vk8DWE2IPMWT/2At4bcmpj9Ejhh1XqL3ZhBlvUn2g2C0TO
	 cvPlLFTQfVEWW+gqRUoliUm5O8y8m6GhtSqr55YkfUxMh4BZnufQQBSlwpaCWMsF+q
	 3xbzmOO5zuxjw6UMaT2FjjO8UPjnH3Zsvu+L8tJPFwZQLEZXmsGx8zg9hinu3viqFw
	 AXQ64vmeZIxEkJU8kvzgcjwrIK6OwHmyWCZ2vt4XizhJph8TP3Xxbbh4hEk0DyAMUu
	 h5mP+R9sukiiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C197BC38150
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 06:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172059458277.24691.19158195809651371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac84a8a9c6a550367072da1e07ccd309b96b42e9e824854a8409d4d31af10f59
Date: Wed, 10 Jul 2024 06:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720594582
