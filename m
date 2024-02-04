Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09C8323750
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 18:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707071297; cv=none; b=A1SQkSVo6jjYHvjlkuVI0szrgK9C5p0itaIrDV1BCcjXPr5OYm5DFsNQOGrtRs0fbfJUjoetoRDgACL+CSv2FX3tSzMHRfOoSfqJoiyNj1OaFjed4/kOmrVjNT/puvv5lA7sWxjCCxj5zEWzLpKpFdZR2dnKXzdco1slFRa4wIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707071297; c=relaxed/simple;
	bh=J5uC8Iufd1Zfv/3bTICogwzKDl+Qj62aFrsDE7BvrRA=;
	h=To:Subject:From:Message-Id:Date; b=Bg/zBvsjEmI9yqbGAcHMmzJPT4fQdrhEhZ7LCgPcwQLy5YhVrttDWombSykWbElrrntYJcp9n1NuqJsjjIHTM39FRMAlRNgfZEob8AvKqXMDrymLmBoWcbmArgarvqXV3PvvgePu47phsL7pKV9RIJRzNDh148xH3k0tR/fnMLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mb/HhMl+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mb/HhMl+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FCA0C433C7
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 18:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707071296;
	bh=J5uC8Iufd1Zfv/3bTICogwzKDl+Qj62aFrsDE7BvrRA=;
	h=To:Subject:From:Date:From;
	b=mb/HhMl+wFF2Fj6swV1f0Ca4KJnVV9/9kFCOQnOdcocEQzali2c8y5MBhZ64kXTnz
	 QoDrHUuW+Uzi6ihZuXWd5ql68IBsyLwCdKktxuceHs+nxHCUciB1CQp+N9VfJP1qRX
	 LNetrZwRhdlZfzdW8Csyr9u6/TUvWh1tvtp6FJhS9yQZRY7EA/sLsxDJi6PfbjNaKf
	 cFsL8w/SqFnvT0JGFbfFhojB+/xx8gknx27Tnn0VVzo8vo0kjMCJNQjWiDccscjgPL
	 gua1OOsORDmJAjYbh8qCOYKWo9tJ+mbximz88eEUcV+Xr1lC/phhtQwEcbSkX8/E49
	 RFO5NRhrEWHXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 646EFC4828F
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 18:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170707129638.25511.14265633480639197178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6291254f14e70b2501562d3268d7cbb0a27638ec041d22d221666993803fc458
Date: Sun, 04 Feb 2024 18:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707071296
