Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4372E35944
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 14:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741874934; cv=none; b=azeHcEblNaYI8ANigP8L46/4rL3X98PCy93q+cuoB98UPNqe3AoIwgRLRVZh+CbRxUZdFYfO9aa3MIZUoIaGyDkUiFIA5y1HF65kw4jSXt1wur+YtuZHwP1iTg7fp+9Wfdg6ZEzTkcTOXjtwUw2+D1l1Fw+2xYtOA5cp1RHItDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741874934; c=relaxed/simple;
	bh=fxM3n3zo12yQvrK5bYj+k4Iv0/nuRP8SiDOaH/ryfZU=;
	h=To:Subject:From:Message-Id:Date; b=psxX2GBGhdGbRhGED2xon4voS6AVRzZLGX9Pvqbe/e+1mkkHKoqOxMSiOuj0t6038qgJnq8jb7hgkR1wb7eQtmHEVt90pi849JbvtCAKV9dG/vRO0pF2i+65lop2vTb3tfCpDrVCPO7OqUEbbH460fdRarc+DBNj4fMAy4TVl60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gfJV6xvG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gfJV6xvG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A245AC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 14:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741874933;
	bh=fxM3n3zo12yQvrK5bYj+k4Iv0/nuRP8SiDOaH/ryfZU=;
	h=To:Subject:From:Date:From;
	b=gfJV6xvG0y75HZuDEeKRwj76QdEB0ctYcoPd/rxPx4ooMDdfj2wJNIhD9z946WJI1
	 RVsOADCrKXyoLWLP3iGDWifAGhB5BhOtDEBkIVReG6zkzF75mS3RSubmERBj7D8mTE
	 n05hHvo+CsEq2mKEVUSZecBzRWliwvDgkWS5G7wDCI8BahVwwUlMR3dix+Q/BEYRzZ
	 qPCTkwlBFnXMb00rtaz0J0C10ivWaimNiCVNJqIW9u9698tHZnB+FqQFl7Hr/wa1xS
	 PCGx52IiVdZh4tBVfsuleUgJiykr9POsKbYuQ8X4HxfowV9GB7cqCK8KJOm8x7dpw/
	 0J/VPNtdZdusg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4C9C282EC
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 14:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174187493357.21772.8369082820548211205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e563376b254a0ccb7a573d597699e8e52f2804001b9524eb939bfb0de392d94
Date: Thu, 13 Mar 2025 14:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741874933
