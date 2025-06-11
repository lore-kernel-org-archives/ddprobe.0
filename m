Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E6B42253A4
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749619794; cv=none; b=IsMD/rrF6PPE8UfLqg+xHyaY5rCDA+53b6cVW5TY+dii42BXfiAgFdq37AzqZXMEcovEqqSQgaLdM7fp9CbOG2/gsnYO/7Ws2fnXl5kPzIuXoNGUNJp52dpNOOIlzrH6cRQ+6t3+vTLDkJxvtMUuAbHt8DtjLJdtvB4heAWWkYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749619794; c=relaxed/simple;
	bh=4aLRqv+m2c1N6FgpVd+Kieu/RLDjqjcwjxwqTlY9FUU=;
	h=To:Subject:From:Message-Id:Date; b=YhcxkXN9RW8SlPYnJgSXv1MiVs6vmkMWgmitfma8IWPC7JoBM0OK/hT19xuQoI1dy01+i4cnRhGcU9yxKu3itJDv4MGZOgRH//SwFc7Eu+DZ+LVdJw3u0iw5zd/ep966tu14kSPtN8Jtjr4x1jWkNz/CKRR6kf9skLvI+/GyE+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TmHqEd+a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TmHqEd+a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A46C5C4CEEE
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749619793;
	bh=4aLRqv+m2c1N6FgpVd+Kieu/RLDjqjcwjxwqTlY9FUU=;
	h=To:Subject:From:Date:From;
	b=TmHqEd+aA/k7XC6JRFD58wBs0icHHB/Bt/cEBZTE9Er6W7vNJn+WdVH2EM4z9FbfU
	 /d3DsiPnPCsG0RleWBaKL5htoKqoLbXxBYbssK1nVq1bpDDrQaVctXacDKB1jgdeZ4
	 AsBUMFpEOB9t7YqOtFZ1QxDvvV2KwGA0YXprPCPJVo39zhpbd3s80GApdxMTZdWY0V
	 cTAD4obX+UNfOiHpvpTdeNt0jtxuSxn+C4AHIFHjo46sgjuYEsXi+gzfOCdJZhG9r6
	 2V5YxRnlKTZAutPFZhJRnghgh2C8fKJw1NLPeXQExZ+SzUJKjV4p0pABIP640AS0s7
	 rU0r1MKPi4WZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90568C677C4
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174961979358.27781.3304804557534330008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec3c13424cfc269eff7dbf9d0020687b53fecc645dc32cba6317951d02729455
Date: Wed, 11 Jun 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749619793
