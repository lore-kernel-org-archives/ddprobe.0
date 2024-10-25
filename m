Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E5DC20D4FF
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729880754; cv=none; b=PFSVRFmI9VT3/L5o5JZM+3rxCjSP/WiEoCJo5JP2cXYMCHO+usXSPY4PlxeFOjrqYyfmyROx1fQtNbYEZ2Yjw7417v7x66iibnACZ+hcP8ChOXpVlmSpSX59Gppv5Rae0kusiEgA610E2JHgxjahMWf4kyR9ixpZS51Iv4kkthQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729880754; c=relaxed/simple;
	bh=QA+pekw6D6gcrHkfh9i18kFOYPRFzoL4I6Arpmybge8=;
	h=To:Subject:From:Message-Id:Date; b=sauJfo5viBx5/4Gdj3E0Pbt7qB502031q5fH1/5qpska/a+klodF5akBnJOXPkhm7jV7R3MjmNkBRQGV1CeFhiGX3lajQe37yXwwxpuPfTpWllkB90WNsFJFUATcphBybQTx+0elKXl9jhxhC5Lv9gcEk7HZWaG/dpAmxxs0GG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qNADWAR8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qNADWAR8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D12C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729880753;
	bh=QA+pekw6D6gcrHkfh9i18kFOYPRFzoL4I6Arpmybge8=;
	h=To:Subject:From:Date:From;
	b=qNADWAR8NFSJiGb4Ubl3zWCMWt4UDj8DohcfuYqHH24aA8FT2UEvn7k5r31LSM/r1
	 da9zOrqtFGDNcKUc6QMGacUElxC4oebbr9GcCm5VO2JvX8A296XH0WFrLlGkUPsMvE
	 BlNZ9knG9s7R2f5SvuiIO7G/2Yyjkbljkj3qQws/SOHXLqo1VyS+A2md+xlu31JBw8
	 Zir8rKFrvUbYFGPGJuSoCKZkTRuLGMY7CPcmN4JSS3IK97Vj6H0QvDdmTP4shYxiLe
	 p3VvIgkREykVtsYblCd7qjj4iTwxaL3I4eGzLV6Tx/pBkAbS2QKV45usQ2Szz75AUz
	 PhpqpNqFjzO5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DBBD149CD
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172988075359.2195.43967817571702600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0327dec3f93062be36a5788a57e9d2345ca1af7c3166e6bf2f6023854a0c9282
Date: Fri, 25 Oct 2024 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729880753
