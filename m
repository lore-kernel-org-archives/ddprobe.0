Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BB7817BED0
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 03:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766545434; cv=none; b=SJnHRaC/SPIsBRdjg6ZMfLKaFu5KbNOQ07nQxX/DcHrUM1GJJXG0pET7aBWAGneal7ry5g6kEUEzfoH4vEoW4stMz6t5nhtbXHP5UI0CPN5527MeGBmsJ3C8xF2jIb17nblaXfpaeWT2Z6RaLp8e59+McS7N1aojZqaCTA+qhOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766545434; c=relaxed/simple;
	bh=quuvXdPXBZkeHOU7Tmp11PU0rrbYf7MLsqUnfWiP5Vw=;
	h=To:Subject:From:Message-Id:Date; b=bxiLtJrVbLMKkm15ygq3NHpXb5kfH4oR1NpkAa71HpAyyDGcRqUUu7cIkmRU950wfXhDusWLpHE2nex6yJYB6oYGof372i5zt8uhz+HzVV84KZeAKdmcXJ+hTjT3unwtDRrP7IRmAzEMK2J7wh9Oja2IL/A3Gq+zg+ZQp2GXrb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UzCbfGI8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UzCbfGI8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3E9DC113D0
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 03:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766545433;
	bh=quuvXdPXBZkeHOU7Tmp11PU0rrbYf7MLsqUnfWiP5Vw=;
	h=To:Subject:From:Date:From;
	b=UzCbfGI81v8VAS+uuql0m6+OdUIbyXqzelf02/6f5N7cLg+2AMSKf6jl4igilijLs
	 fDpnWZ6ZFDmKQgF6tRt9f7qZ32IIiehO1q763qNU0ZPytgdMuR5ATrl+4FY/yd8rqS
	 CpjB/iHS9TwlLy6DzdUTpwL4nOWtVSQuO0u+7pmuzImfDiYJ3xvzf68uviFwXtOs7p
	 MWzVTitWEVFkGdSszuUJ0f0tqedFaIC7jswqz5Mye2Bpa61d1iVdAYTQOKOPV+O8N2
	 5UW/keaC2yEc4Kq8+X0SneFOoG0oSEAlKOsOLoSpXkpR++wcUSFMKRlVM11Z6PPktI
	 V1aBOjF9hAxvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A24BEE6B279
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 03:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176654543362.19592.10723191482472329067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 648f47581d03742a7e6d66cd10f73e7deeb68681908094da1ccb8b7c392149d5
Date: Wed, 24 Dec 2025 03:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766545433
