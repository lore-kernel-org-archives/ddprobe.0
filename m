Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D3B330F544
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755628195; cv=none; b=NQGqkyBsTgiQga46V31JcJ7NLQrZTKVUasUP41ZTjMOu2P7QME8nmhOsK4EJXCqukHXYljMhF9EYcY3fd0YRPwade/zKr0SygvK9/vcgJ//SA2sAU8MvwM3AaC6wBTEu2j/Uu+2Ih3SfTTV53uYaUDVQORzTWe/5uCIQ8rHR0ec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755628195; c=relaxed/simple;
	bh=/e2/mVNupKW6nMqoHtuerD77DN9au2NbIKgVCUg+qqA=;
	h=To:Subject:From:Message-Id:Date; b=D0QYYn7mEIhNLdMDRYZobLccjFX4lTZe4RbNkgRbCG4zZuGZgwdciQWbfosyfchck58a5BOocxbDDhp3RoK1CUf83FBKGAz3XCp0wxCBINrKcfeMnAqTKhRT3fr3Hr/CEiICDjzWRG6jQw22dvggDG5mnr7HBTCqortmLCy8fHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=By2psV5S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="By2psV5S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F113C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755628193;
	bh=/e2/mVNupKW6nMqoHtuerD77DN9au2NbIKgVCUg+qqA=;
	h=To:Subject:From:Date:From;
	b=By2psV5SDMaQHk265lY4ryUuDzBek7HfxEmcf5uSUrhiNnZldohZBZtqqf90UD8yo
	 vtMDQJGugDMwsIsTIxarCEDiBD5y68vJEKJHe+vfq3/Vjro4s/tJPZ1r7kegImg/tv
	 lCfRC3hZOoIt8O2vVOdj8oms51R5RsjHoWjLKcpJsUHeuKlaapshGjwxe2VVamZyU5
	 2YK1feBT7b3lQOlX91AEd+TPZ1zKxE3XcAGtQzBbo4JWk81Zm+kqWKjpP3o07MLgS4
	 Zq5qu+gKGTiAvwDvj+Gw/hTyJ63QzjxbOIzHbpRz324NR9s8qiGmMx7DLYmVKIBaI/
	 oiLUgI3SjG/Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE46CA0EEB
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175562819358.14857.13390461877399096845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0eae5ef9cedecc6da1de1b0da8a21dd3ac31bbd9a160499155482ee8f4c5e78
Date: Tue, 19 Aug 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755628193
