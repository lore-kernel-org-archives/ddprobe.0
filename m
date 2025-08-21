Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B32C22A7E2
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755760194; cv=none; b=bDZl9uTadMI2EjkLZsEv61jqTD3NxwF/avLA3j+NPO4irSHaw+uShr8GADDJ+18VXvcXiyCEtr1mac6ZSNYL5yyCluH5uKXSV8AyJVb6uMLY3hfV+l8r1u9AzBKmgOr/dh2WFov2N6HJC3pvqEAprrcPd7qF4sPbtyfjf41Sy2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755760194; c=relaxed/simple;
	bh=uvn0OTcnRT7jZIkLZKK1UnE7rVUvWCo93c0CiKuzTPs=;
	h=To:Subject:From:Message-Id:Date; b=F6lsI3D5VzJ5Fj3KvWv892VZtT7gDoDqM1+4/gG7EMpH4mzED+T74W9YdMWf7DeuYC2ZrgAjQgNxWVZ7ABKLencCfQMK8Ao7w0Croyc+PPUhegsQ0ifM0wXQSpkplHUKAIrqM6fw1o949538CIOiAJBIK4TEjTS8uYlpGg85dHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JSLduDZb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JSLduDZb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B22BC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755760193;
	bh=uvn0OTcnRT7jZIkLZKK1UnE7rVUvWCo93c0CiKuzTPs=;
	h=To:Subject:From:Date:From;
	b=JSLduDZbYvXBlye4urXTKE8euIbagyo3h3Ih2AtaKMeWqQoEZ82ObHUr9AoXN7d/o
	 No+oeU4yeMk80k37jHsZ3KXyMbGHiBVWaDXq4SlmAQzf9ucQj2rS4QZ4v63zGUjLoO
	 EC74FixgqLaJFMlzfGYFVdoaK8UC1qsxUyQeVx/zTPVBA2Mybi3UGxGiVEiHjXBBQU
	 uKEKDBPcfpjGVxNYffokuUlQo4GfG7QjHVllitbcsd7oCjyfoCVSsxRZjeVcB/tsHN
	 5BSNyh/TVGWGtsSCxwPf65BQDczaHoYGfBV0UTdn71caaDQ0gtVmXmalKueSUgwxiG
	 vDhRXnbWLL/AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E37BCA0EDC
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175576019357.14702.12334055431673359302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2006ad5558a7b1ca6d00d6b9896c54ad596b9aeeb9ea04e3e9660d5b18b615f
Date: Thu, 21 Aug 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755760193
