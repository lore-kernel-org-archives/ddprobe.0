Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BC7F362137
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 20:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763584914; cv=none; b=RquKX6zE/aL5MKfa+AC1rVGRCNrKaop5boaretAkAc6fHipKcf6Q0sIV6LrYZrgUL568he5m8jN6SUPhpA8IfI4of9gk+y5lqsBJfYtpmlq0yTBqG0Fy4j7qa7895+9BjlAg+NgjSl12iARLQ+66uBWx7TgugwkjhjgpsKtdJr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763584914; c=relaxed/simple;
	bh=O7v7xggQqo6EaNfepiySPwZ1ujx8/CzBxaoxKmk9KlM=;
	h=To:Subject:From:Message-Id:Date; b=EtTyX7UJo9iXpYij+ik2bC5o/6AzN5/IIzhnVC5vToKw9imtJ+AUrgbxpEQEiJ08ZeUYtCahSbnlXwy7Jw4AcXPrPezMCe4dCViaP6MgLzaVOFlQ18d+QYbPZ5iuzOXbVl+e6X2s1cspDQVsQbWZMNudxoH2s7FT1GpPoob8dCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HA+GILdG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HA+GILdG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AABE5C116B1
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 20:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763584913;
	bh=O7v7xggQqo6EaNfepiySPwZ1ujx8/CzBxaoxKmk9KlM=;
	h=To:Subject:From:Date:From;
	b=HA+GILdGEtkQnKWcxuzmNREyhRtQtSY5xC//FwlNxdpAHXVPaSnb3blw+KKeJB1W+
	 oTM1IJjCUFJGDEDo/vO61srq4xNBzFp3W/6H3Ix28CcbjrydXuQdyR9WX4yAQ8oEyB
	 lt8W4SwjeDmUXCNjLL/lgPFcfgiuRrhXP6NUWnXF/jU1gfofvyZHmx9H8I4GjZTKz1
	 y+RvmLj5/oQDltWkpMShV406Bt24uWojRxgm9XquUtGmGkuaK+tQpILpS51gxvo9tr
	 tGLDyMsfX1Qp8L7HVX9TD6to3ccOoWvWQd52awza45+NS7J8PHceZjuDzCwDLL8nRi
	 PZhemSvc6a7wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9241BCF58E0
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 20:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176358491359.20176.3835100234596189523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2e934604c72188eb68f59b1c5fd948e99b5b49ab5584ee22453e5356a7c2054
Date: Wed, 19 Nov 2025 20:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763584913
