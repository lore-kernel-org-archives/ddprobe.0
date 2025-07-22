Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43F692D660B
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753178994; cv=none; b=YmIVOJLDDB3FSUFxJJu0MWAq32TWI4SiPnNzw6nhpDVfWq1tqh8+480SHV5XaGSj1JfdRjRbC7WBOZeHKuI34IKE7gcwxBCK6itA9q4PNBd6Ek9cCWUitiG8kBAb5moA2y8OSnzHwWr3TJWMu8m7mopxfIt0vaADqmMy8xiik7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753178994; c=relaxed/simple;
	bh=ySKJ7nDOjLUcGaxX9qBXNX0kKK+oMEg9ysmQyfvmdG4=;
	h=To:Subject:From:Message-Id:Date; b=rZWXAWra2K6Af5OY/P99XSe7MQ1Cb0AWZjBf4cYVh76i8Z0CLv2a9c86skxgQrwVGB4ju4DWo0XmNvvxMxp4zsyT6cuT9w4o4cYm/DRY4crt0J56xTRmHNTjWdKSzWfCntglFf0wl4HpctW4EMtc8N2WG9gRqtllME4iWFATyQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NxfjqVhy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NxfjqVhy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F54CC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753178993;
	bh=ySKJ7nDOjLUcGaxX9qBXNX0kKK+oMEg9ysmQyfvmdG4=;
	h=To:Subject:From:Date:From;
	b=NxfjqVhy5cCKRTFF6xr5uN53FkkdMsRvocJwoWh8RoPPjxWVaiLt168ilWTQXh9tV
	 SM3j3ljpSHnyXezPeEfBdB/sDxnkb074nsksdNARjhaFnSs75/jC6KrKrVQbUywD9J
	 EV4cuk0jO7atLFARGkEFWclWD1y6+0qL4gEpP7BQ1q//n2F8bNsaPBBLLuaQI0K06n
	 v/esDNp2OWBLXjj7RZY2mhseOfHgwA7QlIH+gwESYKcTQZou73vw8DIHrksOVlGHXT
	 4He/5YJrIeYeE4cx5x6ApO+zW/8jiE+fCo1PHBPGBuwMyaaIxVi086RTo1d07+Oyp0
	 1oUP8oJqi8SdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F905C83F25
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175317899358.17570.18207868078361747403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 622b7e619c4970cfac5518e077a8e06b2489d201b6752b948b9ea9942410b329
Date: Tue, 22 Jul 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753178993
