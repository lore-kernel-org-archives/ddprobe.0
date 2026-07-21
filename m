Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4795546D098
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 17:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784656114; cv=none; b=Fs6Mw/pw7lnVF3cfXwPOa7VK/roY2zSAG17fnm85e2rpRTEUxSuvQjmakO+O2WuQ+35ZjcuvpxEA/zioB9upDCeeRYX71rl2CEDFnwlJsxJs1+XRRBHJZ2FSPNSsLxKBaA+uMeW/6QhNwgYC3ZiBkq7XXaCnXuAKU4iL8hq7dGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784656114; c=relaxed/simple;
	bh=bD8MSoGHrMW29gg/pvlnpfdSylsprdpeDGMnUai8lQM=;
	h=To:Subject:From:Message-Id:Date; b=BTmFoZqdZvCiyc49fB4Zt4HW73ZBbHtGKZecN8Tgg0AltqbG/sJZI6XQLJJ7J+WjNPcLsSJ1pj88/2GG1A4FcQPtYCb1HJSRR9D62GRm0CoIuOfyNsmt4SYj0cF6pAVbIMR8tleY0jtLgPlRVORvtqiMz613VEw4KJKUtUkiHso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jX8YbKGI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jX8YbKGI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1AA3C2BCF7
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 17:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784656113;
	bh=bD8MSoGHrMW29gg/pvlnpfdSylsprdpeDGMnUai8lQM=;
	h=To:Subject:From:Date:From;
	b=jX8YbKGIZKCyOm/k0b2KJoGiHWbtWOCPoIC6601y+fxRh3d5wY5frAVoV5M6xrGKg
	 00bQwhfikv/GvatvyKjn2VM6HMuvkMnvMSTVYnVlZFaTsHhiWY8jWkaMH+4RisSsIm
	 LmxXj/CSljWCMzvNfPxepaMF3wTYGyZGvFzwr4swNqlR925ZgX3PDdP7jd5AVioME6
	 g7EraSTSL5ovLzSG6yydH3JV+7RiPvfAiM3r1cc+or+Usdki77S4CXsJ/0LHwhXlLI
	 i7Bd/rHnHz98a20HYQDwgO6CgDxeHC4CGelbXM5DTXKs0B2T0bNmVyaSvgGE+a69X5
	 3HlqMT8/wiMtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC78FC4452B
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 17:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178465611369.22403.5704101252096493136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 132a519db6e210fdd56a7894e5988c21de062033ceb7b321b707b6429bed0444
Date: Tue, 21 Jul 2026 17:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784656113
