Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13CB02DBF75
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761820794; cv=none; b=qWJPLLivm+4cmwdq3KiuVvbi2C8R6qVl9OahTnD59uPH09gedv9ZeV+VuUy89c5A4BjWcsWSxU6OmQ3LdSA1WNj00Sb1LSmi72iRxQo0X6Zh9PP9VKwo5i9ON6ziAZ61uN04a0CWV8IIJeTCL/HYMoPB6i54TvkSz+6+zuxBRJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761820794; c=relaxed/simple;
	bh=kOB2B0NImURcVCaG+v6f8Mc+rovPAG3YRKwvLKqZiH8=;
	h=To:Subject:From:Message-Id:Date; b=ooaIg2eBsu4x8U0u/uFKvIwbOM3q2rcsW+lFO0qzM28nZoTvrjdAAsz9e/StMvqHVZ1d/PZYUIuJ1/ND8fSKjFT23V0Mb3mVywVQwhv7rl2xoSgMd4N9shVgWFAMo5syXiFKxSwa/VpdoRYH8mhgWRLB3ayWVx1GYddcV6J92LQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z98AJmrw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z98AJmrw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B38C4CEFD
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761820793;
	bh=kOB2B0NImURcVCaG+v6f8Mc+rovPAG3YRKwvLKqZiH8=;
	h=To:Subject:From:Date:From;
	b=Z98AJmrwVP3nwonkolxcTa2x3MT4BX4nugRnJDnGDPeCwttS0HoLWPgDwnjAN36Vj
	 v3Qv2f+hfvvQsiftKRtE6D6XOK7fxGDHjhCR9uYNRiH7aaVJqcNFQzVz51dqZlT8MA
	 fiB7EwNsB2jClTFX832PIewqfXE+9R49pLZBT295aYrQYmz7NqCcjnmSFJgk9GK/L0
	 iLBUJS2w3uMS5JR7YsMyii3G939gG69vxI/RU7WpgQCi7yqeHT3/RyLKWjWP7QuTip
	 DcjUlkKZZXf90kXPbKjJyJmcJTMV+hQsxC6KzefaMmO6vhxQ9NxoNq+EQjtarEK8yQ
	 AgJ2OK04DtY6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90212CCF9F1
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176182079358.12682.14376781059967301943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 029597c740c254afa6bf69a4dd3189aa48d65af6721ccb1d8ea8978a6f5830a4
Date: Thu, 30 Oct 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761820793
