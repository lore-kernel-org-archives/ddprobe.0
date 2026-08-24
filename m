Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 663AC3839A9
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 23:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787613034; cv=none; b=FpJvuA0QO0tLkpG3RJo7iI/TloU1Q3nUlDKKkWEup2lT5TuV2/PQc24JYoU/nO2ZzEVkexLL+SJKXY+mPP762O6QrU+NRN31Ux0F2J7kHukiIuZAEHZJ1Zcf3VyUqWzaOM17WWfWN//Pbv3jw9E2DxbAsN/vLLhUhsDXoofJ4oc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787613034; c=relaxed/simple;
	bh=2f0qhnH9brzhbDwOMWFR8ml3LCgKfrcl1AgCn9l4Cd4=;
	h=To:Subject:From:Message-Id:Date; b=Su/UgF/uK1QD4ndBJowKx1d4hQv9U/0Q3oDy7uzCpgowJIVESDgw02u9FnyWh5zI8sZjSArNan3UzcSm2ExsfYGhV6HfdnXZGMBCrMxkAQZwLlEW9JcqBND/CryYf0/3aTc3yHGwt5VOA6O+rB46UdTfOCmIkJqdkXh/UioKjrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oz9bjwye; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oz9bjwye"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEF6FC19425
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787613033;
	bh=2f0qhnH9brzhbDwOMWFR8ml3LCgKfrcl1AgCn9l4Cd4=;
	h=To:Subject:From:Date:From;
	b=oz9bjwyeHOvb39Xt+Ikqk0yShCaVWSkcCTNvfOnNlPyIsi+XZs0J7kRIT4N4eQ40t
	 +N3KYD5sUGAZmreiU6fYGufD9ngZ8d5zbMSxNmLpoP73W3UVfjqIJS7aHnaChIF+Sw
	 rgRS1p089ILao2H9o+sKBTOnhnS4qUIJwWRBxf9EDp1OvTXVnmv/CTmuyDW7VjddOP
	 hxbzd3FoDbx48KEBHh9PtPfRLUZfPdIgXQCan/C3CHRZOZzMssgjsL80atjAvQAEqs
	 wDCzpd1aoSDL1LyGZ8fROPKkSCylkHmKcqe5eXCDb8aTFoadIXtacQURQaZPeEmdiN
	 2PlNLWF8RU5dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF4BC5DF81
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178761303369.8391.2382931634983626217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29ba1827de177b43d65cf7aa603f9f834aca31664b0a6f8072d54a4fce0f0109
Date: Mon, 24 Aug 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787613033
