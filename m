Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64E7B4C151C
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 12:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792065634; cv=none; b=SlnYSd+nEmDstBYJt5GDfjlkFWEC920s0OcC0cGuIRopEHKUzbDb9DpXnwOL8k2lgQA8PgUJH+oXbxIS7G7UJ70WzZ1wby6byaYi/H8eQLmmcmrFHLAoF1SpTVvnu6245LH5oVBcVgmbEcX3JCtrdNEJG96n/KfiNZZv/zTEGFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792065634; c=relaxed/simple;
	bh=NiZDmuH4FYYuElk3c/EB7PJJVWWxpxaYPAvrzAt31yM=;
	h=To:Subject:From:Message-Id:Date; b=d3aUfGDpvqPEr98Gw18lkzy0s0B5CbSgKNWLxfq3Ezv23nhh+4f8tD0JzwS42COqdIOSkm4fmCB9jgUC6EO1HMGYy4P9706Y3ZZVNqwAgLWpf4VZX1mQjzGQuyA0WhlFDIo/dk+ysJ3HgA90HC9S60KJw/31hoiz5oY6VAtoq0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pVVtArIz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pVVtArIz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE5E5C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792065633;
	bh=NiZDmuH4FYYuElk3c/EB7PJJVWWxpxaYPAvrzAt31yM=;
	h=To:Subject:From:Date:From;
	b=pVVtArIzGQoedvikk4yaeLTG4Rudxt2fqbbDvoyRAZhi4Ad2YPabQ95i33naMFUHm
	 QMtHfMGoNiGWmipRanhOZfuOY2dYZwuAF03R33+q2V3b2MoTbl1xqKebi6KzIeiu/w
	 i0gB4M23M2/7HtudCOCX8OEjW75BATIpFO18wCi7sGXgrh+pNIM82er9VK3b2Xl3jl
	 sAMPuL5ZPvfsWaEBMlS5mjc+qqyPYZAlFZcS2DT9NCl6oEiS/29A891OHb0p4YH4Ao
	 IAAGtRaWkk0AUtHFtTtugYrzq/eYXyEotjEfCZUu4qPIamASbGHF56uhN7kcnkN64j
	 kBgqAmI7N9Jjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA97DCC6B34
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179206563369.29618.4188570725073448458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f24d85c30f7186685b40cfd91a9539e13b9c41894cf2b5843999b4ad476a6d7
Date: Thu, 15 Oct 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792065633
