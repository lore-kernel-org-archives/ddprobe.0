Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5732263B8
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 01:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719626063; cv=none; b=bYtLpmddfX1xmLRzHS38rqwX15WqzaWocvRa0xWidWkbrGt6AbZyifl8EF+3f6uBc3eycypBj6ZMNAUAeecq/YKC9IrTeiRvdfPWYHgufBNWO2HHYDRvnWiMxhUTYKvcw4qvKnPjS9DuJ6UMRpFFtmhV+CxQ6hIXIgQvQ7Iqxhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719626063; c=relaxed/simple;
	bh=GULaq9nf8VtE6Pkw0UYquPJbG62685nu79sQk2Rukfg=;
	h=To:Subject:From:Message-Id:Date; b=CpxhhL5A2ALW63634D3UuBsZYkPfla4cLjq4G3l2r59scLtGgUcRQNFk/qJpPG96cAm+YFiblU0ue+5ax8MnXL9TIMW9JsE/c6HdT33eoIqEZd42cpjL6/dL/8n00zp682aWiPHerOPqUeCAa8bhgxvYnNpEuBwD7aP+a4ClKlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jz3nDlmS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jz3nDlmS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEA6BC32789
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 01:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719626062;
	bh=GULaq9nf8VtE6Pkw0UYquPJbG62685nu79sQk2Rukfg=;
	h=To:Subject:From:Date:From;
	b=Jz3nDlmS3e2bvnb+tAUXAnJ1em+x5Zz7bM7kwRbY0kepXrZvwyehHkYkSqpfUkate
	 SHqHcFufgTCsAUlPRHb6VZTsYvMazudNKnm7r95LHhdLsGj2/SYOI/q7gY+eF7iIiR
	 UTPd5RFKLRjf/3LhA8mi6BGkp2eKjlCFD/cUad9rl4njhcVoWg///UEi1M4shG97YN
	 7lv8acg/kQ8frA2RkxbAUfNm1wQcucXPIajU7WP/M+sDGX562A5tE9v3BO7RmfZ5Zv
	 /0uJsdYnsXp4NnhVRF1jWP1N6l3gpnev23oiToS31KC11VXw9xR5rYPDN1NYsYY9+9
	 Oezs2uZRxwBDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA02DC2BD09
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 01:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171962606278.16336.12689843728021760635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60511d93176c660e8240860c20687369f372275cccdb40f55c18d9024e8a5306
Date: Sat, 29 Jun 2024 01:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719626062
