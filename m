Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46E3126BD82
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 23:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741304334; cv=none; b=lFVTXOmAub9ycIbg8VmrPOTlwoTCCmirOSiXJBKCunmb+OA2yXYlzjXAompdYWa19KHWgpf3LuFU8QKX0sHYZb5xzcCNZyjQS+AAEutrGDgIMhIPysVqqgGCwlBHN1EBjaXM+lThr7ot2Q5IOm/Ba61HwJEE9x+Rt7YlLkqsg3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741304334; c=relaxed/simple;
	bh=A6f4bNA0c1tceppH+1Zq5p+eKVlR6x0RsyhsoVhO6Qw=;
	h=To:Subject:From:Message-Id:Date; b=oHCMx7x+nEHTSHrCy+tAwan71HsLIGfiYzQVLF+YhiFAI6UO1DRuqDWmdDwCVpFQQfi5hVp7viT4nn+zpYjD49lN9EGyVUlPHDgca+FzYRZhYzUPcsxNL5f9ezpiEIDd0bZgizc3GZ1i5HziOLC/iVzCKNvy1ouUCTM8UzoCV0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ayRtPsaL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ayRtPsaL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A87C1C4CEE0
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 23:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741304333;
	bh=A6f4bNA0c1tceppH+1Zq5p+eKVlR6x0RsyhsoVhO6Qw=;
	h=To:Subject:From:Date:From;
	b=ayRtPsaLJiRJGqSQR/MUkNvAlHXn+KMpuFuSrsTCESsQ9NjZ5IZUgHQI2QSXLMyoQ
	 X8jlSIyaNYDio2mC92SU1vY7mQym6MfnfVia+fN7h1UZ8uR6U4P2Y3M1veZsm3mrD9
	 RIhcPLBuVvfWkLK9iiIy7osicAu18Fg+mXioCuzutIiRYjRscn+tgornNBc/vbTpqM
	 +QixkDc5JCBQeqaHpRbGUdqCDSHMVcqdx4w9htHXvmRzsDWHKhvgUd9PcktVRrWkoZ
	 Nw0vvexya88HAQbfgIoITUsfIH9prHM212DDl0ipzoNcLRf7bHmrersf9fAPzUs5dH
	 PCcpAdDDaXdeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DB9C282D1
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 23:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174130433358.10888.3565460457968130661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb7b25bee7f34b3f8f6aa486cd30f98a6bcbfc720eb7c6544a902a2afebe3d57
Date: Thu, 06 Mar 2025 23:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741304333
