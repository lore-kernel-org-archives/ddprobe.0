Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41371371868
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 15:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789485634; cv=none; b=o4I5dCcqNHhddKas9fl2JyPcEEc3hDMLeBUUZPIJCSsITn5kvtxlhkyCkBSNVrQmwnEr/D5o6aClYhbHINsLrlVEuph79iFoBedjfMA5gN97N0w14WZzqBqMovOTdZfFyDr/ntqcyn8erePdFUz+xH1jWaYbgRZeV8L8nQZzM2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789485634; c=relaxed/simple;
	bh=+IJA8uYz95S/INGHvq6Zyf31gFEW+JCy7J8uEkoXnRI=;
	h=To:Subject:From:Message-Id:Date; b=aa5nnMXDWP7dN8hhHquCdvzjeMNuhx4okxUJUO6vRXKCP+PmhkN2KNWPVhIfn/Kcu4E1zuS78AlFP0pPrFRFU9Xu1V5AAJPaqVrpd1/25DAix61Myb+mhIx82q5LEu68PjK+F16H1ZXDb/F/VxiPYkDnXCsIlLdJv/CpS29Oa/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SqPtZJya; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SqPtZJya"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC335C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789485633;
	bh=+IJA8uYz95S/INGHvq6Zyf31gFEW+JCy7J8uEkoXnRI=;
	h=To:Subject:From:Date:From;
	b=SqPtZJyarhNoudgLjHP5uvcKPhw8AVwzaZg8qgRKNaxgHFv+iqgbg3B2KmvOK+108
	 uwo10SckmgPx1gy7B7PD/7VbAMH6SDCinqmMqzSYxuQW2EBz70gfDmBfsISrXcrp17
	 NSyX4ISgq9d4wLLcMbpel9sI1bQa65mUpn9igt3u+fH4NOwt6DJPtNrxhI6HjiuMSy
	 RKcj4HLSkqSwOpJLihKtXqdH7s0GVHTBLuyCOE1K+Vf4C1c+ox4E/jLDsRG8Saz2zK
	 GZVGrcFJtODdXyq9KzGkAZQCiJ1kbaN0uyxxr3pJ2fQviLiRbrJsLVChbAu2kNx9/N
	 /iznD3v3nnGPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A91DAC88E75
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178948563368.829.5195151896077313455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d979ce61168aceef5378ea6a9ed8672fda8a7aeae8bedde1e4945732d459cb59
Date: Tue, 15 Sep 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789485633
