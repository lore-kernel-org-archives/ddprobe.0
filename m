Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A0023C3F51
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789619434; cv=none; b=uraFJQaiZwLBtJS0dpzGzWOTGQ7iklXV3jjg662D2A+SZJk47Ow9eQX/e32yfL53031sBfU8GT3MIOqSqJ3cF0RJFYqnBZxSWDljKvtSAb89n+1eOojEVmfpUSalOnn+jISPGRAK02gKhYsh91vEjbTeGfeZGNcXZduZ+Z0TltE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789619434; c=relaxed/simple;
	bh=3dLft4uQCqDXwRGtH3WivwJCXShHc6p4hEhbc7xMWx0=;
	h=To:Subject:From:Message-Id:Date; b=GWmeFKIDfH5zzmka9ag2rk2jpJVShGlWHEoGYUYZ7QglolOIZ7INb3xlRbpSOLrdGNSoOa7XKgma7MUrMfK9rDLiKSKJHBOAVLjwFkSAjrP2wJr1vKJBORUzziuAVOfo26amTDdRExqAW1d+zwbl74Se110MHm3PI+4qddH5ibA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XPyUKlNp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XPyUKlNp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBC25C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789619433;
	bh=3dLft4uQCqDXwRGtH3WivwJCXShHc6p4hEhbc7xMWx0=;
	h=To:Subject:From:Date:From;
	b=XPyUKlNpE4esU1Vb3H8mTWjkjsI64OeSViVdOY+MJ6tP1JZ9Ea1wNhE6q18KIqIW2
	 XYvgb+xkMwP1hYglkB6Fio5gryHVltnGLNMvpOlTU7T1U9wMJboy9RrnbEtAeNIXVb
	 AUAVJUvNFzdK8j02T2xlqnvO0r3ngKdhSD8pMOy1e0hzC67Rq5hkOfy2882EP7YbCO
	 cUPT8LEZSer7N7FCbHO/x64ZDopNm69L4dbnK5pXp/7aq1hkEHUCOs2w+q7HEDZJnp
	 pKU+KyUg+/B1BMkRf8fvEETkASF5Td5xpLLlzVZYR6pgnmqWWyydeHMWwyHLwi1bwJ
	 +W1p2Cwgna/Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6A84C982D0
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178961943373.18731.5448837808307974746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8deb979277b2d642cf6d1c7450df1219e86750d3beb02ea8cea0ad46fea3e729
Date: Thu, 17 Sep 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789619433
