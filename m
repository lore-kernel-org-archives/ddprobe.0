Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A0F22EB10
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 03:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741836535; cv=none; b=X73iz95RlNdAJLodqOz2ILYecz2+ornXp5EYSoIJIpUzk4h8zZgf8QH7k99WLnMMslmimvD9tQuJqsNB/9OyR7pF/nE+gbQkTvp5cJBcYQ9hdfJ/XIayDEUfpnROUj5vgUcMxL+1KjHkajRd0yFXxHGySxycfhqgV1RBbS5du6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741836535; c=relaxed/simple;
	bh=NNdwuXtomsE+KWvr8dgRCNQ8ArqFW7K0vjENvpvmfDU=;
	h=To:Subject:From:Message-Id:Date; b=JYJuB4zKL7VNsCcuJSGtpF4PkOZtHZDnCI3bn6FckSNAJzFGigjwN8hojqwfFrIU4T74YTYP6ZiZR1h/cOBc7UaetA4D+Sr6+4GE+IGTasXlEPsakWRLf+AUnh7KcR3wvsaJ2FyYgvmxFl1qdKy0vs88CJML+xMGd1IOot+VIx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VnWwWnAB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VnWwWnAB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F31C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 03:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741836533;
	bh=NNdwuXtomsE+KWvr8dgRCNQ8ArqFW7K0vjENvpvmfDU=;
	h=To:Subject:From:Date:From;
	b=VnWwWnABgopLLeSdQy43lP7H7RW+2Op0OQoVwNjU0o/RXGfY38ZTQsDIlNj1RWdq/
	 hCuQhicoMaHqY2aZHzF3K4yFshrWWdLudGocvMNOVqGEaKnCS6b4Tsbed8DUARByRL
	 4lbGeEv9egOzgp2rahUPjejf/DevqWBv8gv/aNpMd7LkCvlBHnP4+KCvcq8GTnO8Lg
	 T/1XRPR+KjJ4XJM2y03EBQBqJb/8WidH6DTewsYAu/3goWoUkwR41G+xPnv1OmAETd
	 LX4YPrTR39IGBaftwxistcIvb9B9PafJ9x93lO66pKt5jnrW/O5XY6Mc491+OVlQkN
	 Y/X66m0OTYVVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FB6C28B28
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 03:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174183653358.16132.2884206296385739716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0321561be6317acd7a60b994fd4526900a2badcf0a16df1741c967cff1709ad
Date: Thu, 13 Mar 2025 03:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741836533
