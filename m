Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15A772D836A
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752583194; cv=none; b=RfOi5iyVADv2yZEgfvvlYzTuwaq1C0iyMEg/0o7L+rJ+WBOy8xFdRyweBAZpqWPX+UWUfNyVbcRc44Z5hIOlPdInlZmx7jiLbZqsHuuKz370xNhHlYLqHc/P7wFUcKpAAz4DDzFwKYOWPh6GFWmW6Fq4WHO/D4fxkNvUEK5rfdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752583194; c=relaxed/simple;
	bh=bAZAhmnRiZ44YCU2PFMJ/yH48YPGOFf5BFa8UEAWx1E=;
	h=To:Subject:From:Message-Id:Date; b=mMK7xZWv22UlmKrovWD48MvzvL4fAc5VNRoXCel5VhOjy+qO58KDsr8ABiH8UO4yTVV/DoY7xBBwS0/n7u5Lczn1gmyshbfG/T813gHdwb5vGMoDojqGRHIlqzm0MC42q6RuFDvrpUuYAH5vCciet019xAYfeluOhpcjZPJ3WYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nHeybk0m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nHeybk0m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B03F5C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752583193;
	bh=bAZAhmnRiZ44YCU2PFMJ/yH48YPGOFf5BFa8UEAWx1E=;
	h=To:Subject:From:Date:From;
	b=nHeybk0mKjqQcAL8A916jT/L8XgcwuvS5hLdyy9Qr2m3d8DaKum3G1x/tc/gGCFTa
	 gT5FLy7JF85yK3w4m3YW6ejOXColjn9Tsgo0Tsko9Oszn+M3K9tZed+/PFVLhJdalI
	 dD3D06uwG1OF9wvmaE/R9HZY++s6i81Y31YqubGFXGm1KX7MEF7+fDByyFV0crG9Tb
	 d2QIov/YhEzDzhgBIId6eD+UIMCykzWYWGt39ctL6GOEpz9KljqtAJtRTPZThjPhED
	 1wFislqS0LGl1/bxOy1C9bLj8+z/ZsbA7e/qrBKg5yMCDYaG5Dqh22fU6ODUk1ODGj
	 C6MorPERisKJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1B15C83F22
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175258319362.3955.5897211635395354808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68b0194e71d60809afb6a2b08698768952aa19833b5cf1a6e06ef05bcb2d0844
Date: Tue, 15 Jul 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752583193
