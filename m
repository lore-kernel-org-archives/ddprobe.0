Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2938F1419A9
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 13:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764768174; cv=none; b=U70gJyafM8maFoSN5hacpxn4k1foitg0yFK0wPSo7tpov320rdq9pazYMiVFhs+kYEW05wVwuoY28EvOTvQtXPgVUnGxY8NwH+RTibC6DfGHfZfiigwg1iLHq3dHZ571voqxht+ajWvB5mhiREb8+ONuNIp9NMUcFETGCJyv+k8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764768174; c=relaxed/simple;
	bh=+ZXyUMQeChxsEUJ3xLUMCcUVsy/ea0p5wJv5bEoQKJ0=;
	h=To:Subject:From:Message-Id:Date; b=Krqxwmf3FdQt04hCZU73w1pxEn+uUiGe0o4dTZYTqEYFrVOSETaFt9wXuKAd2O/oH3hT0bIrwZOIdYgBU7qB2H9lfvfbVVcQ4Rmmf+E+jkzdWPqpXS5IvfSHKymvbOyDu/5ZguJYH8SgutUQrJLIl8uCOFdCUWIHfY/Ub1MN8v8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P+7Qv8bI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P+7Qv8bI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A06F3C4CEFB
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 13:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764768173;
	bh=+ZXyUMQeChxsEUJ3xLUMCcUVsy/ea0p5wJv5bEoQKJ0=;
	h=To:Subject:From:Date:From;
	b=P+7Qv8bIjDcT5Cn+42y8i4YAG3T/doH2qwtSZ3ffMaMQueoNunl19fW8/6k73M0w7
	 7HR/xtBBGClMlvoEOAl3ETF8Wa5NhOLdX+gp2jLAcRZRIeSa+0rbeMrOWnWIVJkfHA
	 8cBQz4Shf8czokh3SIhV2PX1GgRML9J0CS0aPazAAUlOfdoaUAfbcgPcJgWpbZobm5
	 E2jHgHOrOeSWA5xQBfCHI20E5jJqICIgAOlAFp1nmsHEx29ezYIDM8XA19XBzSkrjM
	 oWrBKoNMidZZUcBX5Sz3YWHtRHFcj5csdKyireZtmzoR7qp5kK69SLC1y8U1eARvC6
	 c5VU9yiaI4ZIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91754D12D56
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 13:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176476817358.5910.17405644136071699681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 129b5ee4562becbea8f33895b01a7248431c6c871cbdda8c780b5220171a3224
Date: Wed, 03 Dec 2025 13:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764768173
