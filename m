Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BCED4A49B5
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 14:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789051834; cv=none; b=VkNBwHGEmE4Ccq23uAlQ3M8uWvgk3cRVr5HxE5xxnK5z+Db7UcGIyj1IAhi2MLLgnQn+CNbmPn0eirk9GcwTFlBKzhWN+TzBl2cP+yqTMojGQkL3VvTy2NlIjqfECzcqM3GntJwbdvtUtXiRSb/VihTrNyTxqtXzK4RtifaSo0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789051834; c=relaxed/simple;
	bh=E5TU1qvOXTWplH+7hSs4wL5ypOgBx0Iis8NHk/fsdZw=;
	h=To:Subject:From:Message-Id:Date; b=UVcmubNONI6eyxQOwL/3Z/ViCnvkeZ+VJ0qBj2HRRv2SEuvcz4vzz3YsECzh2WTDA+R/kB2jxONvmpfbSl+4vH/Rmomk6dsWAqsxJLZEd6VZxFAyGR0yPx8o37K66nXW8T3JJYQYgA8jgJR7mMNB32216VbunDKOfse2GNOmoug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RFPV3WrL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RFPV3WrL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7180C2BCFB
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789051833;
	bh=E5TU1qvOXTWplH+7hSs4wL5ypOgBx0Iis8NHk/fsdZw=;
	h=To:Subject:From:Date:From;
	b=RFPV3WrL2drhNk3HKK5sgSc4cqSUN4XmQUNFw8siDSfqkBogyP4Va0VCfTnsHz8aJ
	 59e0kPwvODHKDiCZCMlWnqhgWKJk1fo8igwvl8Lh4kxzJyjpmBQegOKtWjM/ehn07B
	 qJW772BYt2t8LowWMa7b6UJZIIUfBHbtkXQVlxQk3f7GJlG28A8yI/uZGDTxCJDL5v
	 XXDploGS3NxjDyW5Z01Lu7YUfgkjvdwwZq8eXNtuLFDD6KfNK5sKUmD94bz6u8kjxP
	 0LMAgdNJ1t3iOBmQS5RkGMSpok8m3CiFEkTax2QPHgtNq01evyIqsHWzvRSZQw64yD
	 7h56tx/EwQH2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0393C79F9F
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178905183376.26858.786210797444707761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5013b2a1415ae5148c18b8f8c1d8f3135cf2f2d63684e0073e8009f11f15cb3d
Date: Thu, 10 Sep 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789051833
