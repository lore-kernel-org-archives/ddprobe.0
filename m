Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 264EC2F1FCE
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750962594; cv=none; b=QJPR/63vXX74qCegshE0ETIdwvXVEGzYvM66TmMnFMZyE6T/XXKMMvSR7spXXQrtar31yYnTjUD+28GXv3GWMEz5eKgOp8jlNEGUwxbrG3MnyyEQ13TUeNsZRyrvM3nOjPBT01M7TdPGiipmBEKkb+1vfJz6UzeCRhZ7/c7c9gE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750962594; c=relaxed/simple;
	bh=eDNTuKwnrnD3jApH9rdYqe3PGlozMyVA9YJ8+/FOgQw=;
	h=To:Subject:From:Message-Id:Date; b=q3d8dkLwMrPTKikWWjUN+7AZoLWZJacMZdGvmcygtGk069tcHVn/hEjw1fvQKyadWSWxFvLUIakO7VM2CcSIdmLmK0zDcDaBHNwNPa1yaFAkLalqqPxX3nLuRTxX/smYI/geR7cj5g0sWX9zWezA17fvA2q7DMK8WviGbfFoPUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y9O578yc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y9O578yc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7118C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750962593;
	bh=eDNTuKwnrnD3jApH9rdYqe3PGlozMyVA9YJ8+/FOgQw=;
	h=To:Subject:From:Date:From;
	b=Y9O578ycHzGAmK2BXE3S90GsU3m7HY5Yl6PFlqvRaz5DKwNivdi7DHFWvMz9dbG/d
	 DDxVIOEQEQhQQsQiB2FQSh39yyvD3zUwr6GzIZSaMBHQ4iNTTfCRBtErKasxhqAuaB
	 4RqV6gX4v+vymn/sjn4BCPpZLD0pwCzRcJtuYuUp0BaI2v4TeSA4584746aMkTTavr
	 4XS6riHHJO2HiccG6BIQVn91VRHQfHpZ366a43ejOQFdzIZpqWbIkbTmJ9oM2K2HCJ
	 NsmJcgml0bl2jjfoJskHzedzvygWDbQhyzcnFvjNepJF1GpI2wuIDHVxsSiwawW/Lx
	 h/0YSYw+GCTfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F5EC7EE31
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175096259361.28673.14277875843041366997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7bd0f5789c662206bc4304c641cd52f98d4ae5fb826479e60859e7120ac516f
Date: Thu, 26 Jun 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750962593
