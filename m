Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AE33EEB3
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 00:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780358674; cv=none; b=WATmNA2mOEI2ZabHF7dNswSmAq1NoyDHWdmHIQnJJWUmPY6Q05xNg6E/VtQspvC4fptlpODiq9K4f6gQBS38Porl4LpL1k67g0E1NhYCvEHQocsnl/xZBHRGzVfsCZXq+Os4fsDXyZFaJ79r7BxewqqLU5bkMm4H89QN1VDUgtg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780358674; c=relaxed/simple;
	bh=nsEc5LncPVTu+rshvW5IDwEqlMlrmIm7jpt54NVantc=;
	h=To:Subject:From:Message-Id:Date; b=Y/fub9qD75oJjO+LT9bBGVWQTTkzc34ci9i7Xv7mpClQNgWoyTdAiCL5muTTE7F3BSv4ARq22wkbc5hfiJ8uV4UxItl1kNJ/pf3xXzWmhcJTvMz3ryPZmDFzy7An0bD1qvZPUL4wCw6drZ6muuKaTtt3KVME+3u6KiF82X4+mb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cz3W4yBW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cz3W4yBW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D07D7C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 00:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780358673;
	bh=nsEc5LncPVTu+rshvW5IDwEqlMlrmIm7jpt54NVantc=;
	h=To:Subject:From:Date:From;
	b=Cz3W4yBW9DW43CS/rwQs4lbw1tRynZkQAXNZEFagT7DIWfReepKFr/Ob2WkRzxRQ6
	 BzQABpTKTbvoWxWkIolbzi24RbJfMm2yma1Mm1X6SnKHSJHbhzc1VnQ6wHRq5/ZGEc
	 shKO3Ls8uNWF18uSigmlDOr7XYEYfittcF01oXvCA7wXIylaW0QZy1x/t29ECuijOK
	 abvl/edUVbXPzgWdMaeRK3o2WbBBGy3/fiaE7Pw9xECtDIph1P9X4TVlnqrdtw3DfC
	 jTjYU/d8NSEar8h4AtItSjAwGcpmrqmS4ZvR2SUzLuLw2SGsWPAU2/wirUP1q3OZ8M
	 SrRUHHjCSDsxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD815CD5BD1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 00:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178035867368.15352.12831144750139356264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20892fd1d049b6d24fee08d53ce9803f3ff83ce96a8bcff2145715e8dcff0b58
Date: Tue, 02 Jun 2026 00:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780358673
