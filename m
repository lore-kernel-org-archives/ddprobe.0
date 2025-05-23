Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CC5B199FA2
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748039394; cv=none; b=WqUGP0DoiUOOvqWn4u9dZVPMvW7YjX0aJ/DMLc9u2ir2qDyYwWvqwUWt2gp16h3/KbmuhfDmDVarnQL6Jp82zktUsXsXmocrxBZYXzXMVh3UCzWlka4PotH9R2aU8GfH9QttTViV0lrBnMgInKHkY0kZK6Mpub6PlnM7/SNHOyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748039394; c=relaxed/simple;
	bh=RhNQhE8qSq9wyMD2KYfNneUoiscfTGtac4OHztuHaew=;
	h=To:Subject:From:Message-Id:Date; b=MFXzdd2IJlBj9G4EPpJMyyIK0I/2eX5yK8aIOPeQ6F2vRyzHsI1FeTUT/wxEC7dPMqEIGaA3UTQ0bY8BAVSCODmCX7KVsM8rmAkd0S1aaEARhkQ8B+S9GmyXh8y/8IJFO8CU+ZtFrJILUd00UtPiVkLDWQmHuR2s/GclhonG20w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UACBQhfe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UACBQhfe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A404CC4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748039393;
	bh=RhNQhE8qSq9wyMD2KYfNneUoiscfTGtac4OHztuHaew=;
	h=To:Subject:From:Date:From;
	b=UACBQhfeLf6XxQ7ubaT2MXPwLSHGetKjcwkjvqvfi4IKreQB+YvPAdeF5togi5n8k
	 Kd0B0sKw7+9MrY7useu8JGTI3PBiCRDncoLpGA3sx9sq4d/NIRZKeHOhAY1kHbExlS
	 wxKtxOpd4NHMRdrGHSKeMm4Dbard4Wym+18JZsLiQX1zIGAtqDKvADEXzOwFptS+6Z
	 T7uGTAqwSgUD/RqhMR45+2HKABHnkHWWfIdl/TGbZ/pQFZ3MV6JnSnZLb0aEDf6lc2
	 JzBxVoL7ymqe1lj6SGe7RYFUk28T4ZvrSx1jNeGFTZMvLb17Z0beDodm1odLSIlyrV
	 nEzBEa1tvmxGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF14C54ED1
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174803939358.4222.5580160730666177007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8ede77e8b9f6e27fef248c9cd9ecee86d103f995337b7ae4d6c83ef2e233357
Date: Fri, 23 May 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748039393
