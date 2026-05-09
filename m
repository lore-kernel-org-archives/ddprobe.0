Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FC7F28C037
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 03:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778296054; cv=none; b=LUkztHTPEj7P0E9jaWdfAoGg1C/6LtVmDdS4w7zfvM9Rmqq+6e2kyW3hWtepbxCMjo4Shp4nUSbciay3NCP51U2nsTVC/sxXSxrmhjNiNw7ZVWZbwz4hhN4+Wrk2rv5FwT4bGm8aWupxk35xFI5qvScGsnYrB+aOyFHZIcXndaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778296054; c=relaxed/simple;
	bh=ROwd78gfO51nSGcXgzNJHyN7TFlzfQEkOkAaMIlnxTU=;
	h=To:Subject:From:Message-Id:Date; b=NzLNbvP7dIbh9Nm0Jp7r4o1673J9CLuoCQbUPlrdATMOPXWGGx8L36nfdFAp+aRoxK6QRuGqmmlJITlz8iLULEbmA1/fXk73Fsq8m/amijIIo8BzjHaY2lXSQDfMB1GxdIzCuDLD9klLOYd7QHy92YHT9k6xl+CuGjamXA/UmPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gnTNaVaP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gnTNaVaP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2D65C2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 03:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778296053;
	bh=ROwd78gfO51nSGcXgzNJHyN7TFlzfQEkOkAaMIlnxTU=;
	h=To:Subject:From:Date:From;
	b=gnTNaVaPJx7R2wPTSpvnV+vwgCEuoqisdOMUKBzmW8rbCMLei6nkzbXsRVNVlnfg8
	 guVidv3qkAIkuvWm8+yMlNr/iDYEw3pvjMUvifjvWonnRL9cr42LKT8myd1yjo7Ivb
	 l98M3qmKCDBEMTK9E9F+5XsPOVkKSMtr9F7IAdCcNKcZpcGvz7pMUhOdhn3UiG3imX
	 Ij8jtJbnPkyV0JneQfy8euxfAcJ6VC4jHOSG7HQIF90pxIDbJw+GfMsASgkYJXU8+v
	 2qQfeozmncKayFl9zuhlHbIK5Tuk72igE5fNadjXN/KlTJXV7au0IpicC6ZCYYvSE0
	 xDgibxLsxTVCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC4BCD37AC
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 03:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177829605369.9039.13230333505644194861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7e28ddf5a55ebcc29f669c559204eea2bc1bfe46be844fd9297d01e785b4c74
Date: Sat, 09 May 2026 03:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778296053
