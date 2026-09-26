Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6866F31E823
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 04:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790397634; cv=none; b=OcEHU0hco5UJQCtgXDKEr/3IHILUQfSxCZmJjwETuj8g6gOz7RyizljjJDg/PNjvrnvIVJMFi/a1BECqzdZJU0ZV8WkL41PHGp7fO9M0gyn+AWPR0n1xQhumL9GOgrvkacrACzuzoMq1wM74CQXUaG+igT5tXoU0r8zGYaENo+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790397634; c=relaxed/simple;
	bh=wnbIhFNLBvTI0dQi4qa3PSi1Mf5OlQu8ajvrTlTDMmc=;
	h=To:Subject:From:Message-Id:Date; b=ppmnMCD9njSpqno9hrPVoTgyd8CzsYCHGZT78Q+d4KhdPmia/QVnz9BD+Irdc5GLOhfu+CQj3UfudpVjCo4WHdGIbc8PjTcba4/x10pgAelgjmiNwoyUs9Lz6wWRsOxYO99qz7RoHE8MmK2AZf1WhDJfW8TRDPxvXI4rntt8b+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E4ycgqM7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E4ycgqM7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9CE2C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790397633;
	bh=wnbIhFNLBvTI0dQi4qa3PSi1Mf5OlQu8ajvrTlTDMmc=;
	h=To:Subject:From:Date:From;
	b=E4ycgqM7crfOuFCaBs69bHIPy1J8y2M05ETFGDlLWMSpwII3vT/xv2qtRw4nqD4tM
	 aVSoqHEVmieB0ANWZSmN011n5CNkWTdY2UnH74Gk9cef+YbbYD/uU5TEN7RYe7lb+Y
	 DnIQliZ9KYh9IdRXQya1yl68Vjxsr1GgVYaOQQmZDxrco2CKjxMRNubXAyw5B2s1Sg
	 YLxFGQyxsqFGLVyQLe/Hh66AbC7DX5zLdAOm96O0gGKjpcE9puIKMfrKlF10kP4OR/
	 i2pUvfe3cVIXHvXSI3v+PoeYXfwzFZDRxl2xUiJxbPzK2Nm8irQOeVahEFudFYchCg
	 V1ZuT72dN/D5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3249C98318
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179039763370.30304.13214050963590691862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef599d39d1f91d3add7e89c13109852960f7d74f8e464978e4273d8871012997
Date: Sat, 26 Sep 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790397633
