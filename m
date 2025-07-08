Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07EA9800
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751936994; cv=none; b=dYmpGIqJCaQ9QKNaMYfAC6hN/P8XFuaKtyKf832+i3/s6SM/gTs5U3wqB3DcpFeJh3zf9imGOCAHyVlQiaJ/ME4MBCiXWfih2V0KN9srqEOEEAY/hAMs8lfElxVfjIHoEmiS0ORyiuOx262qREwrv6H94Xpr7x7V3k6GodG5zfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751936994; c=relaxed/simple;
	bh=8yV2jxvP+T88C7mu1bDZvNGDWlkzEy8EoUVkIn5IwgA=;
	h=To:Subject:From:Message-Id:Date; b=a/9gDPtfAa2kFHE2aryo88nrsO4tZT6eDhBdNf5fak4qtU4XnrMfULMFL2qufb+HJFmY9AH8O96B1X0o5mGPXZ/8G81b0SCgLdqLkANFaMXz0L3SZ9B8YR5JW3ZrxkE4tItLIjhT+HPGZTHX8SnN/lfGF/IkxE6Y7114ZDHtw4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mg8bTM1j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mg8bTM1j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A025CC4CEE3
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751936993;
	bh=8yV2jxvP+T88C7mu1bDZvNGDWlkzEy8EoUVkIn5IwgA=;
	h=To:Subject:From:Date:From;
	b=mg8bTM1jpgy5ucnQDPtXXEnOhPp+LUrUUUOHC/Bp8xBL57EIJOTWUVrX0uAv6ix3D
	 UVa3Ha8QzbqtK+D/UvvMSFM5aN22EVvU8I2oInzKpnQGoij/2icUAPDcSU3+1/b0Fu
	 DipBXPFFH4Je+aojK+dq8pAHBbMxLMJfZFkjEBdDIuDdScETv2T1aRHASUo3nLRqKY
	 +Vu/39g8TwJ7yrrqa+vJuoyUMNfM4aspxYfEzDNv15IlmRNxXINBJjPTkT4Tm8PSuS
	 hwY7dU6xa+hWZJm7xi29ogDlRGs+1VDqOJTjyhK4IRtbiH/r0UtRvaZ1IbPhw+1LUr
	 J3EwQ8NobGwlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E963C83030
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175193699357.27292.1589509923670555909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b97637cca445080db5edc7e2958537628dd5190b4f7d7ca2d18d8490deeef915
Date: Tue, 08 Jul 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751936993
