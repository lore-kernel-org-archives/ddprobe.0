Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C1221E5B78
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747350594; cv=none; b=YFNlMqdaNrTBCR4ScTF8FCUllzUCt9YtKxK70YZwt3uy6Ib3ld+NDoMTNgCPJ8ICLuVmSTf23U9UhV0XR6gr8NtxfPjZe5x5MrIXAZHoKUA2l1X6pl9eV3elEIeSeuPQbgmlp7gyBzIcHqzBe0poE8cwaaFMxPD/MpK8xz8zXAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747350594; c=relaxed/simple;
	bh=g0UBB+Y6QQMW2fzLK+SUcKQ/LUCMcSUlcebCEEEvm70=;
	h=To:Subject:From:Message-Id:Date; b=h8AU9Fqok7qmy+Om1dssylwx77FQRiXscKYx27QltCtnw/EN1DVgndpMjDYfX8zvWvwRVfkpAp4omcPoEs3UHrYq0zMYgIktmbRaikPInoLxt5HUMifZkouEJ5wJFMdxa3C2oE1VXbxe7WU4OLmwaQ7KUDPkb0CO70hUouNgOAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MhsS2v6v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MhsS2v6v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D11C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747350593;
	bh=g0UBB+Y6QQMW2fzLK+SUcKQ/LUCMcSUlcebCEEEvm70=;
	h=To:Subject:From:Date:From;
	b=MhsS2v6vtEPsXxvWhzb7siNj7dPVRI7WWP8/oyEF5azAfamrk19H0+biT1K9gM+R2
	 Ubkla05RkYLpyeA3mLaVhqtlzT1YBb1gqHyKg0vNWKcwuFQU6oWzWZp0vBb5sN8oHw
	 vfURH4MEgUHWII4YdP08fIfspPwWHU9gbc0aFfv2VS51awLTa0L1QEBdUpHH5rDG+u
	 oriQmzR7BAhzCjXGS52Jay22M5Cw53N732yNn5XG5jTHkhlhUFwLfynOc0pqn+LjDW
	 UqdP2w1nv4+Ec/GKrGwO6x2IUyKkslmFxwQe1H6mVbiiSOf9NFh0BSnax/jiZ6mbzc
	 +nlyzQTjyhiQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9556CC2D0CD
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174735059358.7160.2834280922512772496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0635da7c3c9c006ae29355ca810019fe0004866ec9b98f510ebec934796319f4
Date: Thu, 15 May 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747350593
