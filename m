Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46C693D9DAA
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 23:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785971434; cv=none; b=eXrAvS0VOSYrd3J6JonVHsS6S8261Oo/1yP7Vdd6wf4xPBHOR/tpVo3dgzTvTGNK3/voxOMPmXAAcozjViHRpqmmbgiAMOn03fdO0v5YAj59AJMdVzJyBiDs6M2zgkjAwKwoIHIQA6OdDbKbasIQl2VyBUehnD3bjtUtxsGGL50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785971434; c=relaxed/simple;
	bh=WacoxL+Qe83YaLsTre/WawYL7iz+S7Y+XQITzTH7wXQ=;
	h=To:Subject:From:Message-Id:Date; b=PFLVJvn3U0YrMAY8Viix7z66vrzv9Xz/TpR7Kh2+AExB4VHCdcPHI7hk8QZv5xY1BmYGw/J22jKCJnGoqn0Abd62P1arP4A8ytbqqPrZk5mFDeZa225QOO4g4sws71ijIGfr/bV+s5BZ4vguEAxeM4flOT5aQ1YuJLYIsoymdWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GRtoHuiB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GRtoHuiB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF4CEC19425
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785971433;
	bh=WacoxL+Qe83YaLsTre/WawYL7iz+S7Y+XQITzTH7wXQ=;
	h=To:Subject:From:Date:From;
	b=GRtoHuiBu4yGgWz561fQHl1pCOXVlDZ6X3cgeU6R4ZUrTVyAhosUFrucsfAaudsg+
	 dEs3kkpbZkYKqTaVFBrtlsUDIICL1ow0ZQJZYJNq1PlUfdbmdB804pdA9wRpR4RqhE
	 wCP6H5NFnb83e5RGSpR+UR/4RhKDj/Ch8Us3ES9G7+T5QzL3CC05GaAy8sDO2CaUje
	 ULO3Hp2jzUEzESkq+nKhFy+mdG+Fj0nzuAW0YKkYFXGK3VCPp4HGHf7vJo7c71TjAS
	 Vl1sPuDo1ZGSiY4PXb30to2iNMwHKgm20JTDYvxjr9hwkPlR9oewmPKxOWgZBTgSlv
	 NUWYAJ/zN3t0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB1EC55ABF
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178597143368.17537.16887346902775911701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4179bbf71461f15891a31cd308743d0b1b939058e4e33e63ef49516c08c834fb
Date: Wed, 05 Aug 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785971433
