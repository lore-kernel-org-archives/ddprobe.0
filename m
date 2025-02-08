Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48F2F244EA2
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739052954; cv=none; b=tmKLYPswYiYRMeJUcml1tePrMSlhUX7++zy4bxd55MSMEIEierCCcNsfDAfqCJX1Jfwf1+g705KPl6wa+GJQbYGSKk25ZfD+kvX/0NjGgJNQZibquN8pvfmJCusbL6rATTX9/PH8EjMxCOG+nU8OilBjBdtPNsLFWdMFTnQYUw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739052954; c=relaxed/simple;
	bh=bcQD5pTlm5GnAJ3dfn4YsS8qKsXTPN0yw/gqeyEiUIU=;
	h=To:Subject:From:Message-Id:Date; b=bx3Avk9K2e/mG79JA5Zrq7DnEHJb1QOgMskvNR52chxOrSYK49LZrDMlVv237VIpUo4XmVDle3ebR51YOZOyw4yphLcbABfa3QHgBmIj1mm9xYdM6fx8GSlYc9nshalPk6GcNMSPgV1mucz7bDx4u36cp46O88gOgGGBDzIaBUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FwtGKL1c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FwtGKL1c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8F8DC4CED6
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739052953;
	bh=bcQD5pTlm5GnAJ3dfn4YsS8qKsXTPN0yw/gqeyEiUIU=;
	h=To:Subject:From:Date:From;
	b=FwtGKL1cPBqg76FKsIk+lPfp/LkrK/HERpxcqsupV++HiTGYjTW+SMqybgzCwo2Gq
	 0eB7SmelpWCL7T7LeCqchHDRBFVshjllgby1su2htveycSZLPRKfyaINaNXk1jJE92
	 OVMOagsmDPhBefGsRIKo5GChG5vHW6O3ATWqaOoMkjRWRqKs5y78EX+LlfxGeVX2dY
	 zCZIOP+s2ZUWhKC3PSTQBF+NrbfsAR9grSGIconG6CSgnIUh0KTOBfsoziyPvS9JgK
	 7lhK15GpPRYFOiElU52VOtNwQqQ3PlujTDYj/jtYG73MbRRWqc++p2I0JyiO8jHcvP
	 rn0ASoXZfZrxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D0EEC02198
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173905295361.4260.2354652995942776308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44da6f64c7c6b1da6802dd044e51e377c97214342422f90356dafde629fcd6c2
Date: Sat, 08 Feb 2025 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739052953
