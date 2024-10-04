Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 182B91862
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728000954; cv=none; b=m9pXt2rD+CxfQlh8nKQjiJ/Yo8BAredXgD7Pehv4jH6FHIAML5YEqdXV0FslYUnFAZ9zrTmdS//OlAuFTX6x5XLSAHuVzMyR11jAXd2r8NLbxVnXJws4B6b8LAmAdPgTxzGDTzoBvCM6+bq38cDccLcOjY0jlb0jq1BBcPMwAKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728000954; c=relaxed/simple;
	bh=tzlsaLNnVUnBlYyfbEPUKhw9H2hKHF9OBytESXmzovM=;
	h=To:Subject:From:Message-Id:Date; b=aXhX8zhGQFMffYt2qkLen73xpwvc8IEq9aoGbDED/6B2oTvIxXPh9D+7Ire744UIJaUFe1MmwJt7wt02jZL0BLtw9EVEvRp6jxPBlQHK6v1t2/yAPP+7/AkgwCXDtAf32Qks3sofLxc6lZV+EgBToOkwD74z1pqls1sgNmsU7Y8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=edwxXJ66; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="edwxXJ66"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD5BDC4CEC7
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728000953;
	bh=tzlsaLNnVUnBlYyfbEPUKhw9H2hKHF9OBytESXmzovM=;
	h=To:Subject:From:Date:From;
	b=edwxXJ66olx9En9Brpw7XwYulfmRxFYp0pB0hH2t0lqnwqitWK1Vd9tF3meTTKzTa
	 P4BZG7NxE0pOWWDW7yxlBUcuyckzPGfj0GUuCk7yYkF1K/voDQkIgz1+2kJLjAPBzI
	 AXq0xTKaaF69IZ7LtYD6Up0v3mNVQnACdIuNB4++vzsV1NPlXWNURYt6FIIxbndLOO
	 m+RMLujhLAl1htLPU9ip0qXjMK+fO3Ny7bNFv5FZHAgLt3gdsTO9kMnMA9EUcsWVfK
	 3AygWZOOll+Gk7nkQW8SY58JwfljKSk1e+sYlHGhDml5QWEBVNKBxcWqPtVwZy+oXC
	 b9zPf3VOmrEew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A52FCF34D6
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172800095359.19381.4815357521698713424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c2a5bed1545b0e5f8f2bee12f23c02b952d6ee99099e349db9a1ce379831484
Date: Fri, 04 Oct 2024 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728000953
