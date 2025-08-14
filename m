Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 157BB30277B
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755192594; cv=none; b=WBwmj62Nb24INyu8ALZVxVAJ4UwrsvVV76gTbXkrQAYZBV+i8Nd1ZLyk9k9gVZV//PXb3mXJfBDu0T2Z/bC19Itr5MjyOu56HM9z2m8sGTCjCJLL9MeqZ+BVWuUfHhdSk4etJebpZYMMnImviloG/L28xVkEf4DOkDHyKrC4Vvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755192594; c=relaxed/simple;
	bh=+w1Mo30NAlYWyImKvE374GJVP5U6epCA1dpolgp6vi8=;
	h=To:Subject:From:Message-Id:Date; b=VdoCLwkoDJUrHN1Al449pFoD9b/dYFxOIcd1SCcT6Jq5iMkPZRDmMRbh1K4y+uMcKgo/fCkCWxsjdo1X0HA/C16ubLtNK+tZC5C+CJ2poHK3kw8yXBIvKxBmOS7cigtytl3FCiO7Ud1sToFFrGNV/1tcn7YyzExQeVpHlOG9X30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c8ajOQai; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c8ajOQai"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14EEC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755192593;
	bh=+w1Mo30NAlYWyImKvE374GJVP5U6epCA1dpolgp6vi8=;
	h=To:Subject:From:Date:From;
	b=c8ajOQaiFAaSUlESawIDfeqbFxmBLUZK7M7crB7Mxphyj06IPnkmlszzUVAdixILH
	 LXzUyPt9MTInwZiJbxczcm4BbxTRDl4/NrbKpuvgmOVSMfgjy8uRpTvzfqG71eWwzA
	 jl5hziO2VBtJcVx2GVJjIHYEocT+q74cY1nij6xy99z+WCVZiuxFXwUpe1yyMbxYx9
	 fA2FCSMblrn1uciKo7PJwV5yHKULzzAgoZBh+iQBuWxw8amYu8U18RtqXZqRL816um
	 Qr4yaHnZ3dN6QBTa5Nx4Af80luXBNhMdDdis0EMdmw6H986ddRXPflRVJCd7aw8FvI
	 x9N4BhS8ZcTTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94860CA0EDC
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175519259357.9358.6745490284831697570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09736854fbeb9213e69faa30052362c243fa3eb31a13792a051e4c22813c66fd
Date: Thu, 14 Aug 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755192593
