Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23B162E040E
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 08:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767600834; cv=none; b=LHA7sp5jcYjlTAEJ5Ml4P+jUQEVWNE2SSyfQ0yI4uFe9tzESentI7bboaf/VP15VF/RtB4k9pnSRAbol5Mz4Q3cCdaKPBK8cAemGZdbb0pFUp7y8PBUzj/myICT6C4G+PzbhRU74n5Ks6OCN+q11WYsBXPbDtAytsGu6ieqDhwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767600834; c=relaxed/simple;
	bh=fTudjuQlUeRAP9lJQIK2Yr0LOf/elf2F1qqQ9O9rzVg=;
	h=To:Subject:From:Message-Id:Date; b=LnJFjnYhycwFhXi0Cr7Fads9D5peXjrHU52jtTMJDaAuVNsOw505moRlzUt9Mq83IOayiHA4gpDtfoZQ1EJEXK+ytikpuT80ZEOy6mLf0/jbjs0iMmGdDqxPYovZ+pAM83JXEUI+1XbEI+MhPND79EMi9fofBidPMdveKE62EPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XI+KVack; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XI+KVack"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC78FC116D0
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 08:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767600833;
	bh=fTudjuQlUeRAP9lJQIK2Yr0LOf/elf2F1qqQ9O9rzVg=;
	h=To:Subject:From:Date:From;
	b=XI+KVackwc7AweWilJ1QRSw8r4OSjBp/1hA6SzvNU9YABWm06Y679VxihRAfsmRZK
	 zOTXmOo3pFqjmITly/Sf5DbzHKD8o/0oX1kWfHbYdjO+cnQW2a+knDb7yOUkMKdECA
	 hDyOBq6Gt5YGZrc9CtZg+jHKQ2nsPihitODTwKKiWnOVCinY2dgsrxtb7xFbr8uCNT
	 JKWF51ixpYewp9h0MCyY/JAvpsZVrRzN0eEQ6IsEd2xXTudQ6KF2OhKJT2a+r+XZvu
	 p3DJVfYRQOCsI8N0JcfOK57POOwhrDHCKZB0ly9D2zmibvSPTG63vLm1IJjM6VOcgR
	 nCKF2EEcc1SDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CC6FC2A072
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 08:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176760083363.27222.9112199839874776693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b04a63ac8781e976f1c1385932848db04200d4d21bee0b07ca40fa2ebca4721
Date: Mon, 05 Jan 2026 08:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767600833
