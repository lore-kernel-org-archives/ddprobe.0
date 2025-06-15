Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 397A02AC17
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750019394; cv=none; b=sI7eTEI0xEqRj3xwN7SgX+nZ7jPTGSvBsATbwz0OJR2kYXfF/h4dgY3t/HXkCKwuTXGRPRxvk5LsOextaP7AaVbYeMVQkkcCCoSNZqpvar9jJaXTPD4pmsJL2zDLR+1HK5rJ5yHmnVBDDzdHY1kMfg7mgsZJ/tCGd6HFTrQnyqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750019394; c=relaxed/simple;
	bh=gSpwI+YTinRg0hBibes7IVPD8j+mmEYHSv6ZqJW3KuM=;
	h=To:Subject:From:Message-Id:Date; b=tsAnagiS1rew2IAAKTlLoZveaXKulCcXFq/4wpL1ll7xVhKKR5Nb5RdCvWCMZuGEMOOKohGNwRjDwaqpP+DKvKo3nh+duBZ/x6McNkhAMFzWvbEeKzRx+suysX6DjKGSN9Nw2BIkKVnaKtZuNin75KWuZ4dM/vIOn2nFAhvSiQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uRVFsL2k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uRVFsL2k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2C48C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750019393;
	bh=gSpwI+YTinRg0hBibes7IVPD8j+mmEYHSv6ZqJW3KuM=;
	h=To:Subject:From:Date:From;
	b=uRVFsL2khi8Pm/X7rvk8XVK+yssP1jM6iqF3iJaCxdczcSO+DPVCWlHDmHqg0l83Y
	 RKnWIhm7voX1IO/CW6VhxejuLCFR/784zYssXeMGhF8n0LLTeQFhY3CHZlX5p7RVIz
	 0KWWnW3WQXV72Qoz2R/KmTJOmiSb7MwY/sWN7EqSF7anOxkfjSrYoNXcFJDSmUEu3w
	 wj367shdaTPRbU9FINgRfYatHnqiqCfGwv86wyOAA6b5vAmj1sfyFf2Kyrx/nPsgNB
	 1NZfQ0U/KmRBvXMIEaPzuE/DrL3YYUFjfTb24FKj8TDqhWp6RbB8FAI3imPhbqytOA
	 PrQwEKZ4VkK1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E414C61CE8
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175001939360.22560.2907793427332809132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cd8727030794a37c69a53bf49b4234e5d8469c610a7aebab5c379e119b9ff95
Date: Sun, 15 Jun 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750019393
