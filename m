Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19385247299
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751716794; cv=none; b=sph3lePIfDnErRYEPEoWWMsqXs5S2X9FKSyEGpt1F4wCIeVaijyWP+xUFxl+1th19RFFKyA3/a75wFZhOAUF/qD+GlNZaBt3iTDGCvtZo6KFNwwxxq4YtyYGe2H+We2omq2jovN21jBV2eTsITOgSHHZI0Se3hNQvqTOVIDAXqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751716794; c=relaxed/simple;
	bh=0whnh1pBZJPm7x5nmo37mLd9fWl7SxWkTbIr6UC+0/k=;
	h=To:Subject:From:Message-Id:Date; b=TtuSWCrdvo0a/k/FgpcpquIj4njNJoa9bxhoXJbOH3FCAbEEOG3Z746XG3dU3yUN5qmqz5QtOqnRaH4t1uJ6DnJ/vv2i/gECdl0s7FQ/QPeRvXnC9j6yXC1ndBrxord4C+c5caCe77IBNSInb8u3J45gUOOV4pthcfoaR8nT4CA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gQhobsNS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gQhobsNS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BC4C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751716793;
	bh=0whnh1pBZJPm7x5nmo37mLd9fWl7SxWkTbIr6UC+0/k=;
	h=To:Subject:From:Date:From;
	b=gQhobsNSOhjuW8/fPCuldseW5zRAMe4UAE/LCNhLk+GCem/Tg63RJO5aqCrV0Trj4
	 sMCxhCbWrtFBzwbPowAO6XIETcAaQJ9fwsTqfDKvUeionoubBKLgi/UwQ80LJRg1Bj
	 JLUVhzpjFBiaLA545cgYokaA8YqfaAChrzxcGpa6ZQqHAPlU5jgug/quLea/UxN1Bs
	 rrleloQpH/2tRINl21VGNSAAbSqBHKaooiALCp/GNhXJ88T9xdU8vPAm4QVJSLtXzl
	 OOoFRHmWYTgNH2a70scMH12FT05UsrgOaQBdDjWjUOs9IhZ86eAzK0ocWnUGXUEWyK
	 PFyk+YnveuQlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911FDC8303C
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175171679357.30849.2055121329607985116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f9b702a8e36e6499a7bd5511b60a7c7aaf811a86bb06992534083f6cc1a0a14
Date: Sat, 05 Jul 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751716793
