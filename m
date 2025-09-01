Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAECA26B75C
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756757993; cv=none; b=Qsa8FHrs1oT50GQu56A7/mm5EKDWFhWRa58NiXi056a8wHj2uWb39DaGzxyBDMIeuCFxzcQl3z4pVw3MBYAycXCIKC0S0jCMAV9b41oLZDLseyB/EUuzqvryK0ie1cF2hna06+O8H+swYr+Aki9JH8Kt1JPSwvZ3xWrSUHtCUB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756757993; c=relaxed/simple;
	bh=cVa22FbAzFybvUdm2HBv99Yo2cjjfv8DsB5m4IgURmc=;
	h=To:Subject:From:Message-Id:Date; b=E9wNbr1i5QmKd94zVX5R+hrPvSz4TCv8feuKT9cVI26bIeD0GUOVhzUefO69imYpghYN6C7fqLvTCCru1rhPExhC2Qy5C5cEPrzUNDaz8yIXAsxgHmwfB7i92PgIpY7TsWwalVkxHtSQWfSEW+/4nMmiFmQp9Dtb4xYXqCkoACc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W23WOCFX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W23WOCFX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A608AC4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756757993;
	bh=cVa22FbAzFybvUdm2HBv99Yo2cjjfv8DsB5m4IgURmc=;
	h=To:Subject:From:Date:From;
	b=W23WOCFXoIPfX7ekRo3gNqzU0LhX0/tjnOjhgbPpRdpTnia6ngT6N3oxr+GIh2ylA
	 8xM5mn4DeLkHNbM9jl6qtchllxwFrSuKyKOTpCds6kcrxBy3Qlj1bATUZ8qxviXF/w
	 vr8o6ojddHM+uRkNGk4OmQJjxSHGrkbB+Q3iOOI7QCQLcmBYuTmHSCTpp85wEzeyME
	 p5gYGOF8vWR+Mr6WxmE8Qd6W5Fau1yVyZq5OysmNHk4jLYlFp5ftQ78wpK/CHwn8r+
	 UJwCBoz/meChQwrUDcrCKpv12KeP4ZIabcdYehgzywtKrk9yyLu7XcvjgdAoUsh5Mr
	 0GQliyX/sZ2pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949B7CA1005
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175675799357.17464.4723304431433429091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd5ca1b536f17b63302fe358f241b5cba2cac2bc25ffdc5b803713f62f66b7a9
Date: Mon, 01 Sep 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756757993
