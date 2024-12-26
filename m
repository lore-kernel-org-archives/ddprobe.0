Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E42871CD215
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 07:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735197954; cv=none; b=CamXLFrf3yjAh/4JhtGXPcCaQUxU1g9tztwR+JJQrYVOf5z4vlnYHdChHPMdDHchpvpMeDleVTpRhNrfAggkGQfGMuIzXSrbRz+PmzDy0x/BmGNthLeFKnp9wxRRG571BZAoFzK9W5dKKm2cfNBMM0kqYK2CqrLgMFznvSQCXuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735197954; c=relaxed/simple;
	bh=Z3Q6bfT0/WLGk9PG+ENkGfiZngE2T4iHYElXvWSOhJw=;
	h=To:Subject:From:Message-Id:Date; b=BNHCucjtbt9ztQk8Dy10m5PPX33SirdGYJzCsPWDFeJK/gNzjAevutYWI7sa5z0PD8j/zKzhocbGplYTBGYW6fYwy2/7ZAqRmYhq78E86BNHk1289y8T5PxM8ZLa+LJEvHNq/j0EI9EgLWlbR3cyFb/nWNKdRKIIYS+9SxUuRoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EtBuOfEZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EtBuOfEZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A947AC4CED1
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 07:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735197953;
	bh=Z3Q6bfT0/WLGk9PG+ENkGfiZngE2T4iHYElXvWSOhJw=;
	h=To:Subject:From:Date:From;
	b=EtBuOfEZp89s2AP2E/TPqAXi3HAnijFYPPdZiwDSC98CYb27Dx4dvL8FdeSxs3ZV4
	 JXrbrlZ8Xozyh3KS2hrpvg+o7VrzAICKkdWoEH5uNqUpj0BRFF6uzpg0BnH45moOJI
	 bboil0+Gjq80lkgd26UZZBJS/bnXTeu7+MmAlb1x9v2t3Gju+O1e9VrbxqLxHElAbN
	 WQKzN3Z9/YZ7CJWRfFirjlAqN8jvrwbhhm4G/vMvY09JHgsV3znkSZlsiuOzF/g51O
	 rlVnULBCHHOSR5e4cMAPnQHQvYdgvrL9mrDSXVanVySI1D5GiDU1Gylj600w0pvmbQ
	 rtSGgnbhgk/qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96061E77188
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 07:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173519795360.17927.9156076462813090366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1525d1db1c4e06bc2b9a5c17f9323dc611b712333486bd4356e69155b0badf69
Date: Thu, 26 Dec 2024 07:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735197953
