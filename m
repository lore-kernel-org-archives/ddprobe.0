Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2887740DFC0
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 21:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777931854; cv=none; b=dHpxhOnN9Abgodxt3IdcezEpCwxA+c5g5BqvtTB0rqa7Kx0gNGx+WHDA+pLBB/fGQ7vh9YiWqRd0Ksw+/w3z9tH/x8+Q7CvntRWvZeEWpORAtKal4+cds8892EMokq0XQAUtc4ealq3zVmEDN6CjLtC9XqLpftqoBpNIUZc/Vtc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777931854; c=relaxed/simple;
	bh=0yReQJMi6em26f17l5uWABZjwhYPgmc44GWGAI6UM84=;
	h=To:Subject:From:Message-Id:Date; b=qEQHUQ7KRln9aE33vvNzXw+WKSABG77/JFi6HA1mE9xS3pCYpG0miRPyVDvw3FkfbXROAIpKDLzmXeO/ucnrYf1ByqE8F/6m6TYFhhFxXiK8PtsG9i14eZGyZLf9mH8BuPQ2gYUR9RpscmsuwE+xPtmI2EWrXugff3ggSt8Eivw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DOrD/tbI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DOrD/tbI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFE25C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 21:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777931853;
	bh=0yReQJMi6em26f17l5uWABZjwhYPgmc44GWGAI6UM84=;
	h=To:Subject:From:Date:From;
	b=DOrD/tbIFuZnA5GsVedXAKMfkdUAGHlWQK3nqb46H27USQtU0YxLVVKpY4UE7Djpi
	 dmrQL2UJpWpkPoOEgHqrLpiKOWZ1A5z7+9rmGO3KYgR7mFqfXeC1fzA8RfPutzRmi6
	 hUvSmhK8jgmzZJpQdGRoPwCNxBtGhW+D5CLoXFSdYGpnRWLr7/j7xPH0/IYALwOJi2
	 qyMRmkZmeT8UWOCYjJeHKvsp8a+6b16Nh+2VLjzDY+oYYlmv6r9vEtOdkgRwFijn5H
	 1PtIvce2FsHsoOUlgQESkwKRjMl93FtR34vKw3hzxnWBdsyewm0OSiB4omwI21PQHc
	 zF30PAqpBfw+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD58DCD342F
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 21:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177793185368.6343.352382781099627330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c109b817278ab2947ec6f2cd39cde4e57decede7b10cda16d3cf5f2127cbcb88
Date: Mon, 04 May 2026 21:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777931853
