Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 416FAF9CB
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756100994; cv=none; b=V8enKmlVUpIZp1WIzoJCk8eSjdC8MaWC4Tc8dy1dqEKYlunZWlIjYfP/Gpxvb3tFw9mtA7upT3xqPSPtVyW9y/+KZf9Tav9GgG2AjWrFRTyvk1FQCltaQuSfQfDnWjEEYIY0i1I12fN9FQtnBr2NvR3+BMLr8vkeviZuGEC6uBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756100994; c=relaxed/simple;
	bh=0yjb6hTww4w9ufbPuDbuB7YUB0RJndylc0O5F9q9wcM=;
	h=To:Subject:From:Message-Id:Date; b=QJT8aFK6BOxMWt/gbSlaKtib7/hnHs6qZW51CV3+t+MVMocd62mkAQTXXb33LrOKuV2lv0GRrlxyVgg5u/sq5SW/ufgHjvVjDdkUSS0TlsKVaia6l4dOsfEsZyU1t/OQsqcybYNlEFzlUS7ZRYGiCwWiSk3bHpGIpc03YKHs8NY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U3BlwNlO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U3BlwNlO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8878C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756100993;
	bh=0yjb6hTww4w9ufbPuDbuB7YUB0RJndylc0O5F9q9wcM=;
	h=To:Subject:From:Date:From;
	b=U3BlwNlO6M3ywPPLue8H2Wq3nitg2n8CQtAZ4ZlYKCAXdyy2sc2rjHanIvSMFOjP1
	 aABLCdEPmzJ9Mqf+FFIIz0T2JxmhfqC/0YSBCPqDxM+Qc9jTZkJuy1cLv+G8Vtha/I
	 V98N1GTFrTmN4+NvuQHYmkfxKvPDNdIzom51pcu1YuBRBEC7VJLl3suzHlphSDhU+p
	 VuuUy7XgyfHykjJzQtOtPlZBogSAk7Y0OPvatDzXWoTTbR7p/LcQ7TqsWaE+HzPFxJ
	 gpV1UUhqgw2VTeqcK0zVR7IbrxNzR5auBLiwa9XQxb1VfgTgBScaVsr8hJAo3pZhB+
	 Zmf7BF+UfPv0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97167CA0FE1
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175610099359.25380.5484405002619350663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34961f355e2d7bbbc49bdc0e170c9745568f54310f5c686c59c16e704f3eae37
Date: Mon, 25 Aug 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756100993
