Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4F57101FF
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751590193; cv=none; b=MstobseS7DTD/zh5fYbnpJ6qLufW503G473tc9cn7GqOFrZeNLYsEWL1xlt0arBvRXLCF/n8tuBmyg+1FsSvjqgYt39otlJQXqOBpDsnoAyfx7P8eMB0GH6ieyJoA2nyUKkFEUPkfVxohgTq7+yNWSn9sqNUAYYUggz6lTsoarc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751590193; c=relaxed/simple;
	bh=whkaaE/k1yu4PpDIIupBtjV462EsXpUz5Bila25aegw=;
	h=To:Subject:From:Message-Id:Date; b=eM1PMR0U4dYbRLptLGnyhoL91IshBX72tE5VUyNVSnfepyU+KpesnAk/K+DKLoZZRJnoYeuPanhncsDw+8Mmm5+FqZX4ytzOw1SzJF4gFHRdgthm8oRHPAcChEPsFc9R/A8zR6o3Mt1kuQQoDB5SbW6eV60LZM0X8wWULHdGf4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=arnIZUj7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="arnIZUj7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A46C4CEEE
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751590193;
	bh=whkaaE/k1yu4PpDIIupBtjV462EsXpUz5Bila25aegw=;
	h=To:Subject:From:Date:From;
	b=arnIZUj7+NxYZcIEnBs0+fsd6BpzeRZxS5SFMohxogbA6TJpV6Eyd17yRaK2sr4xm
	 XknnJlkiq5ur5cqS32f3UUe9ZfD2g43zQ+UodhGgAfh07Oq66U0Zh5A6PFAdZAjHtQ
	 pTkFMnTp/tpqJg5PQhpf+6npLhgAejS9KcvoGSWR9meLkdAk/cD7++U+UFGyKCm0j/
	 bS7j3vydBykZfh1Dm5o0kMSi8iov4zs3HjE5J38Bpa2SezvUduKC0dtskKLyFRh4cN
	 8tUXpKKDAFI1gplGRyE8tmnOPvQWZR808/sAtO2AUCRaWZTSFn1sGvq67TzHdcpw8n
	 NNeHoe2Xtmhzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912FBC83F03
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175159019357.20267.14721543285620565449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63886e61115b3b18edd110072904918efe291f4b9a22d92900d92445e61582d8
Date: Fri, 04 Jul 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751590193
