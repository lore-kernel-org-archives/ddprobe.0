Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D1CF289829
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750947594; cv=none; b=ivQ7jUSXpWUv3HD13Nafl562c2I3pJimvuLH0uRBhdiOEffhuTH8cBskuKNSIGXYAmN00X8kB10zuM/g9WoZK9B2wvBGydxFtZETAy7BjYc0hKB6I239bsnYf6sdq4i9Qw1N4A9amFsmt/QhU36Xe+RX2ZOzUxQkLRmI5Lutw+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750947594; c=relaxed/simple;
	bh=1ZwXCILZr29iyLzNzdtiyRZTfmwkltC6Yp4OKyxb64w=;
	h=To:Subject:From:Message-Id:Date; b=uyOvtGdBRMPF8QqQm5D4veujdC/QxA1iXO7xTuPg4tHuU/pCIEbgas9CwhoJN5ZfMNQpVNELJbiNMmQ9v6Xt7yNMTW7K+4tYTl7iEfO3STPro8pF1Udfd1Ywc5iYgqqdubV2ho4V0Ht53lBdvhCLY55sVGJ32yVN4zgbqgODzXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AmK8Uff5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AmK8Uff5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB428C4CEF3
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750947593;
	bh=1ZwXCILZr29iyLzNzdtiyRZTfmwkltC6Yp4OKyxb64w=;
	h=To:Subject:From:Date:From;
	b=AmK8Uff5734E0bX+RuDuOXg2AKqwhaZvmAKDauKiVWY5Hw8fIcjVO2qGCaS+97Pae
	 JqjGt1WKnBRtsMYA5hQSa8wLwpJQ5siMVfGB5IE3nD3y6xSAKZzReXd/OCsx6NGPBF
	 vhPcePK0E2Xu9QvZI+gxvyKwcdLaZUzc8mBkR8RaTspIdFrDD6jI6Vy8mv+qZYraNs
	 hh+t3kXghVoKvV9sLCz3esmiEkoCM8+yURmPa9J3jlP4fGiL0dVmH45yvOTf9Ndj0r
	 SUzFTGfLD7xNuTyf/LQMB3kHnVQ9BGa/FuUtLB6qcvJFUVMKJkwT+awuwPlLAmLiP7
	 k2ZJz3+CgxI/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2D66C7EE31
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175094759365.8278.18246452799324614177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fdc478e98c396951dce25efe30c9b1e203f886473adb9596e62d0f2b9752648
Date: Thu, 26 Jun 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750947593
