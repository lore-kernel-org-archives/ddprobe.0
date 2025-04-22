Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D7F31E9915
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745358595; cv=none; b=q5KXo0qreHqnWhbqMySzBA1hMoxHPpAjIJNYrBDPtqPoRdipU0uweaUByZizQilt89WM4cKphsLnlkON86jaTfJ4sbZAVcElb7EayrkGqeBtxqNCDNEqomU7JiFD0sjnwbz4CycfBIBLUKl11DybrBCFnHxDzS5zgOLODzabbyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745358595; c=relaxed/simple;
	bh=qSnJst6ZYbajNy8DWvVaWhcmnHGM7mYmneMcM7928E8=;
	h=To:Subject:From:Message-Id:Date; b=AcDP0c+wh44JscVg4xn2w3yjkWaAunaiq9UN26lNJ5o73p2GUN3qb501E+8VWVkHkZTLZ6D9jk1cveiO/LEzeutVBN96sHvwtqUBpoUth96feDu6+yYP1PbqisXAHi1pCiAgxUTimaLnhNWr6mChW6q2d+hWehY3kdybYezcbbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SXa9s2er; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SXa9s2er"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2896C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745358593;
	bh=qSnJst6ZYbajNy8DWvVaWhcmnHGM7mYmneMcM7928E8=;
	h=To:Subject:From:Date:From;
	b=SXa9s2erI2VWWNP8tK3TmpVZj+omOsezsbt93XKxLSqh255LTUlYbMZJI5ap67v9h
	 t/ZEFPYqeFAEZRhd6uLExXFIFhF9lV0xVJV8mMZ0zdWKw+FXO4wKyUla+wZ5iKvcDg
	 1MHTqpMoCq7l7E3oHM7nrPvFznKXw/nCNHI3mjZiLMvGbkk6cf+jD4lWB1xpxOum8p
	 SO0jJpFhN/ur94Xug03kGIfJhzRvIUpdZGHEk8r2ud22F4PQ9ARAnokMM590fTO3M9
	 wqm3vXzyCjkG1HY8fI0y0KWmk5FhK6hor7R95mZZAlFwrwcsqF9FsCv2+EVVohwek7
	 LbdSjmmtHBCFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E45C369C2
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174535859368.614.4532130448403721741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 835416af208bbc31c97b052c1f045165957de993645d1021398c097507cd61f9
Date: Tue, 22 Apr 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745358593
