Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C9C33A1E7F
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 15:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766675034; cv=none; b=o5nElW1aLpe3+6XoZ2q0u4Qnz0SZsms82R9nose7zeUi0NQrh/OlXF/QmEqF7YpKLieG7h7ma+W+98nxnbgIrStDrLp+wOLD/N8rUJ85iLJ/sTk1sDcbSdQ7hsGR6AdPdSpxsyZCpsZe7tMQ8iqyzh9a/b8ySLLGcgVIEH0Lm14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766675034; c=relaxed/simple;
	bh=AzBYfHPzDz75MrBLUCaqnfm+7vEi7CXUpIgR8Ybf+1g=;
	h=To:Subject:From:Message-Id:Date; b=g0OPL774I9vDKKjCYDhtAKXgbgln0QEk/LQn3qVGx4grAQQ9zU8W9kRpRDi4Kmb6QqXlkAhwi8hmXif+Mu+fg8s9r2R0IAMPtUIm4efbEvmt7EoogdW6CB69IjF4Xt5yqmHfcW6GRt/gRG1fMvTigW17IUD+knKdihrbrKFLpS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lGl2xRpZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lGl2xRpZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1EC7C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 15:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766675033;
	bh=AzBYfHPzDz75MrBLUCaqnfm+7vEi7CXUpIgR8Ybf+1g=;
	h=To:Subject:From:Date:From;
	b=lGl2xRpZVLPSogNdvwKs5ezh4OPuS4dehai+uCTnWqVD/e49WgWonFteN0Ye6xlJI
	 ttw2a/VLvGtQu3yw8vkq5XB90pLjlWFx6F0nJQWI1QqA5eDB2wDPhNouaDBNfkAXU/
	 lfpZ1PMXBkEcWIl4Mjc17jt4n7ueH386XS/Th5/j5RPtGJhRedANMqRiiFXoJa5Z+I
	 uZMWOChKudM5QgIhVwl4wiTmLZvdYVH5Yu5ZsUA9nHEI0nB+ew15jK7aM0yN3eA+f4
	 j+GjEHNC+RJqEV0hN4gJAt3Vgf6lnQRWrVa70e7XK9QWbUyHfrge0hK+Mx2fMlHHeb
	 AE9l+2lhLM9rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEFAE7AD44
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 15:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176667503358.4507.6862817468949979649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c61808cd7d20855bc33501c6e6e6d27a4327271879c1777925c6018a4facd348
Date: Thu, 25 Dec 2025 15:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766675033
