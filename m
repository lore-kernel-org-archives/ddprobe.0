Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C73EDDBB
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728954354; cv=none; b=Uq9y84XPu6qhmW2LqdbVwkWUF/pIfoMEtOh7Cfy2oX6C8pk9ojCIR6Zqys9t9AZSx8rH7DWmfcyhgZDCth0R50kgIEQZuwK8l/D8ESRzkGPjqH4M+1ij2i9XsELcUrZRs9vqId9/ndrk880BAnAS3j+OBcJZP5YOCO6z/MMnX/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728954354; c=relaxed/simple;
	bh=L6GYQEonskFe/ZLiEq+2IF5aqeA0iHHSWxhEef3qK2I=;
	h=To:Subject:From:Message-Id:Date; b=RrtatFJH73UQaicjqKMAJQbRJDbCru1sEo651NMEUAeAsTX3njgtOo4ZQ5le694AzIbo7VbQUMJWS/xu4YZNvejwJb9TvgxWIELvnmp/alVDw/EIsfP/p1Wr2xOVBs/GjRCDvHKxz/G5UQ4lNQUJA0vmOtCylp5ecX0D87VcUyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jXmSIIie; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jXmSIIie"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC2C4C4CEC3
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728954353;
	bh=L6GYQEonskFe/ZLiEq+2IF5aqeA0iHHSWxhEef3qK2I=;
	h=To:Subject:From:Date:From;
	b=jXmSIIie/Az+GSROeA2Atf47/V777b/8BH+uxaikXmm8rE0pskuemKEMzDeDMcRZA
	 Klc7XwhamOeUJ9g7FUEWeB4xfzSosj2voWWsPvXRDymCfnlu1WME8pXfBz8x/RmlXV
	 K883lS5IdzC56LlNSxc94mpKgqMfbvfOcpbhEe/q+VYcHsXpbo/dkfTmlH4+d0y0+F
	 XXeC9GZ5xuvayHVo5PIrmcJD6thNWYkIv/z0CQbQo8Q4XNU1cxbhi5r1oXojHN3kiH
	 MJPXVicyAzPQdWv0IPsYeZPtqpYSM3iYYjbJoZFbXx5xNuQiviOey+QnRFd4eD+v/W
	 LD5n1QeIbpAAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C4EED1815E
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172895435360.10941.12183264917061574616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc6a9fc8242cc60af23d59f92716b0f7a0a84af70af2c6ecd14d0a16b573a8fa
Date: Tue, 15 Oct 2024 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728954353
