Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA4C81C01
	for <ddprobe@lists.linux.dev>; Thu, 14 Mar 2024 03:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710386297; cv=none; b=PptCz2hsZVJW2zGI2R3w2EAwJcr21NOANeIT78wZjfkU6ZaGQKbQxSld1zPrhyZYUKFqpAJFvr2EexevnpTIov4n3qro1p4DdunY5LJ/X402X6nAigFbiOCTY4Y4t3aKHYcKsVKKRAFd4sB2dkPkSW4SidktRg4Y9NJUKj7+Zko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710386297; c=relaxed/simple;
	bh=xn/8JUrQXl+8gmfUEBk7UH6/LXyFrVOfzPyitf+gtSE=;
	h=To:Subject:From:Message-Id:Date; b=dSDV3IcGCSHdtidzvtZ6yj5OSxEDTwbe+9AuIgxB7lf90yWhz3KQnh8QXFyWsUoPZkpGK+D6WlkvxUMmiBIXM+Cbv9eIlk8MiaoqZWTOuKYO/BrbsQqYxvecyFU+rwiW9VG61smt8fiarzKci1V36k4vz/TRkLqTUUbeKMzTK5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LxMBDxmN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LxMBDxmN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76D1BC433F1
	for <ddprobe@lists.linux.dev>; Thu, 14 Mar 2024 03:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710386296;
	bh=xn/8JUrQXl+8gmfUEBk7UH6/LXyFrVOfzPyitf+gtSE=;
	h=To:Subject:From:Date:From;
	b=LxMBDxmNuZPgWp5A4LZqT/2JfVylFMxF4bSpvKrig6Gwuxvx7F+sQaWsU0aQgXOk+
	 h7gbmWnVHlQIpvmyxw/iRq5kBzTnoFBxd+i6CFs6mXe+rRj3h3zgBhRd4gjH6TgyS1
	 nPJdaXhvH0+iD5B0D8BJEeqxFO2/rSui3ruWk0k6YiKtsMAEdAogGSIq0Hth99tjfZ
	 b5cMSOoRUoDfz9PvfWV9jRn+AGgGz2mlOqD87YdiRnH8KgZ6i5/hklZYpEXkDfawZj
	 bjNtohm+6K2V7+VMEw3/TSYPg0QXfgkN2uPVkgyAVD6RQ0nR+PhlsT/7wbvgMGJK//
	 jDhn/g+9Zy4tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B70BC54E58
	for <ddprobe@lists.linux.dev>; Thu, 14 Mar 2024 03:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171038629636.6300.1355705746517475532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7790311f1ff9e2fe5c3c9dafc54cb02da8b3ef50fca9e890d3b056a6b0b27ccd
Date: Thu, 14 Mar 2024 03:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710386296
