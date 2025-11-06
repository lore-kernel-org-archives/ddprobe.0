Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E90C23717F
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762418994; cv=none; b=f78a3xsgx/M/G3I6zWJ7Fj9mtkN+621Jh1b1ozGterGXyxk4tgPDzRMFQNQdtpVdPOvLh82avlrZYSwSV4jmr3rmC6trkVPe1FQTY5GRsRpxb0u3f5ZBVvPnHoL9TCI4ZUi6OU1sIVapGMFS1ar3U2YkzJ3mdyEi/N/Qw4F+m/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762418994; c=relaxed/simple;
	bh=0/rZAXas7hs4iU8hIFpePXRjHlhakjqjSdTAIqFBH9o=;
	h=To:Subject:From:Message-Id:Date; b=QieeQpfWcSgd03M4ZacY5f/LMAYHvihTrJ2XNgSOY21H8uncE0QRTL8vWE0X3+1JlAJBT9/8QGqiNoZnoQtFEfcr8Gh0t+CnDV+lU+d5pOoq3QwixsusdMfaTtyulhtB3tNKbs+/JJ4LtK7EtsmKwNQj0nClzu9tj9ghFMcNOv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L+zKCCFE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L+zKCCFE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5ABEC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762418993;
	bh=0/rZAXas7hs4iU8hIFpePXRjHlhakjqjSdTAIqFBH9o=;
	h=To:Subject:From:Date:From;
	b=L+zKCCFEOJLJKfZGKcCMLFX62Y38Q70bUx+EM1Z7LJe5otPRVCM/C9v/QmpZMOMiz
	 ziZKtLzUZfAiXrLc6vxDfqB+uzAiQlzj9Lm7wfVsxeuDnJMqcpJfwA6MpLMHGKtV8A
	 Y+/Kyoa1H2q+/3RIBBgzgpyuUbvnxH+I3sTHtp4sgnwWT5zk9fO+DqR9Nho/7IiKm7
	 KA896D8cKBjcLyO/pWxtHC/A65lRyO/6YmGW9E5R85/J8ZOlLD7KVC7sjqatX6YkNa
	 otE6Vb1HL0na3jMPM/V5BapkVpe5zeAg5D0QmiM2f+snMYFE3kNLUajNv0tC74ld57
	 rEKuomLD0ptUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99422CCFA03
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176241899361.7159.3021937049147262421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4aa9ede278a45e68e0bab730509656e40441fcb8497bebe2c6cd80834139f579
Date: Thu, 06 Nov 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762418993
