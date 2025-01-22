Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7658F1C5F3B
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 06:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737527154; cv=none; b=Di2gK4WcS5mjt8Y6Nwg3ohOOgud8QTI3qe2KB3BnFw4KvUXLvnheLc1aaFCANOlvMNs7RPXK/k9Pvq/4bwp/G0iz9hDlWWECItrlGw8adURhnHSQuYEZ1sV/fHeId5ZuzPimDZRxyjA9sqNuZaxF9PDQKWUncBf/8hEcGKu3YaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737527154; c=relaxed/simple;
	bh=RPFqjhshe424AM2OkSJaVhYMsGFJ/YC5T+Q4TmnIkyU=;
	h=To:Subject:From:Message-Id:Date; b=gPUdK8ZUp5KoUm/9AwhfhQy2BGDnSqdRFgOscYElLCNVmJ9HT9aFzue35kucfFZAMPH2G5drYrVngJ4X96vzPUru3JPdcnis9ELtIBUznGkx3U4yPkskPzzMOFkc0Vh7JXQjcJ/BA8u0hkmowgelD622K/kBIMxBrfFndygCZ10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dg41IBVH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dg41IBVH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6763C4CED6
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 06:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737527153;
	bh=RPFqjhshe424AM2OkSJaVhYMsGFJ/YC5T+Q4TmnIkyU=;
	h=To:Subject:From:Date:From;
	b=dg41IBVHbG66xTNBjdCkLV980N8FaDekJ2yK6FhGozRpgNJElJ1a/Zm7qB20fTRZC
	 Z57yuuAzHmyD6UvMFJ4Vw0/bSXSwwVuFrDgVCIhPmc38pPInXovngGpPcuHyPK1tmF
	 JLQ/icqQ5CBrpy6lpIuzhSjUwLUIKdxJP8v8FGuent9VDZEbkZyeHysZkNvhpeOc/e
	 XBFSphyPcapfwiDFGgv6DSkZ4dmwDjK54bpgWe2tLYcCY/wrbsYyIgKVSkKnxyPUuD
	 ohPuhtKVD3Sy5BnF9zBzZ1TTCaiP7wecvsatUyddrg+aa2/eJJjGehevnVIT68km55
	 EbV+jIx7w7ruQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D646C02181
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 06:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173752715363.14183.14167867262450844142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e69cb3c5a9483f9a2b4662cd80a672d7f39fbaeb09a3be3aa356c514dd9482c5
Date: Wed, 22 Jan 2025 06:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737527153
