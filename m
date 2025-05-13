Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24EE828DF28
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747141194; cv=none; b=Gsng1Bbu+xN/4XBM9wXofenDE/ey6rULn7+IECr12idct67snbxSGfZBoCQlifFy8qN3HCTf/C1ZYZLlGOeyP3s2XO9wgwJL14TynqlER5TI5cUA7ZV27bDqzE5WlgESynUPU3Ep/HAkXKwgplRxkGM+MHHeS2hbQ6fNQ9NIaWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747141194; c=relaxed/simple;
	bh=BOUWCTC85GFLEZoYG82Wgnzd7IQomNtIWiqUKvkgztI=;
	h=To:Subject:From:Message-Id:Date; b=hLJIN6scde7aUrCfgL5GNfgnDtidZkSoqL2oBpBbmVsW5+JC6PlCEW/Smxy/oBKc3ub8Kqeojn80XY48OaLn0UMXGrN/61CRpFcjmvUY/UEgvj9JzxMrD8eDdd6uTuuPaH0kgR0iJZoR2F1eJZ56w4v3n8IgVNbCgDfASSBB10M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J/I5RUv1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J/I5RUv1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A208AC4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747141193;
	bh=BOUWCTC85GFLEZoYG82Wgnzd7IQomNtIWiqUKvkgztI=;
	h=To:Subject:From:Date:From;
	b=J/I5RUv1P5krPZja/BP0HFnHDKkAybmQ1JreMSY+8xbBrTOJHDLh2+p0V7eEoCdlB
	 GUUgSf+KWqqWhqNXjUkMKxaaloYyZOTzNO1MHc4Mcv6poUbmJXt1FICktOFk5NEFG5
	 HNW0C7wdsHdCyUFpM4UqQx7t2iZBjFE65/3/Q3bCz0wnn/DlBJ+KvkvAlZ77K6ke3D
	 1MM8YhpG1KhXcGJJKkaC0a0owoJPKV1AZ9qzTmLLHX4/X79wd8h62Q2X/oHPs22u1s
	 DqfFCSVO4VwzgBpcOSEByaNQXkzyC154WWCDBtKsQXwubNH2tBtLD4WXstY4fxIQCd
	 4vz2qU8bIIPhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B86C3ABC3
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174714119358.21337.9736793376928152798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e19dc5df76050134b8905e31fe6756d0c2e660b3edac5586edcc8735ae4e914
Date: Tue, 13 May 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747141193
