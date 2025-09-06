Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5E8A22541B
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757174393; cv=none; b=bSe/+OsQUtb3CWgDM+N5tweYU5uzQ6hUnvX5uY1b47BO/DFqt0ktOoO2Fc9a8/nQj6aVreI0jnz0WIJwYgpRAWyMZd59pndxjW4x9HUez91FkAc6fmTIxcpwOpWTqQbLtf/oi0kKafDtIjvv3f/+00sxA1NbDPHDoyRShytQKac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757174393; c=relaxed/simple;
	bh=nKPkmJt4JUG9E7qOWlwU0NWDI4frEj5ZpQTgQccCgv8=;
	h=To:Subject:From:Message-Id:Date; b=Io+Weu/MdprD5K3w/PSt1BScqPX6VpHcW54QfPA0lUdXOsRhnWaM4Ih/s4xQOQgHTzrvAryn6JWmTm1UsrTBhRh6ABf08uTJL3O6poX+NL6cUoWdGF0kC06mZIhyVHOWqfzafZCH7/mywoflcQZlm5oZXi+Nf+gvMkcV1py5Jtw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M8B+nlha; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M8B+nlha"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C922C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757174393;
	bh=nKPkmJt4JUG9E7qOWlwU0NWDI4frEj5ZpQTgQccCgv8=;
	h=To:Subject:From:Date:From;
	b=M8B+nlhasyQkpP8KxYXfTYM1j+MRCuvTAoZYxOmXtWkBPAfqAqM1NOnjBeIdYrk0W
	 WSBMcxi3Uu0fC9v7wqbmtPVVPNpQOmkH48TNN/Q9qMUU/9u2os7+hsmvh4hGb3C4lB
	 vk9iuUHR/FuOHmr27FIphMctUzk1FWAE3cc9dWl8OC9phNSf7al4N4saoPWgKqiu56
	 0gmLB1aAZeFj2AY7lY/8kYnyxEQG6FkHukXNc6TBrAtkLfnKSKpSbCs+xaUVGLj/Ew
	 Eo2IJaaAaSDyzLujUIQYtYw1BOB8RevTfWwZ5suUsPVrpKh6nwIJqTbvXVxlgaJ0CF
	 3uQN2SjvSd1rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6A1CA1002
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175717439357.22917.12291425919292113858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ac57bdffccef633b57d34a5265ced3a9d35809351484fd81c4c3588b42bf14c
Date: Sat, 06 Sep 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757174393
