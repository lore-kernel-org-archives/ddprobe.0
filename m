Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 531846FB9
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744341594; cv=none; b=LPFWwcEOlX32bj9b+0DZ70UNJcq3V8EgVQ016p1T4y9WnjL3zToH9YS4xCbKiEMc+5Aa427iCgBR378ahWS4WGUbQXA3WsNU6cS4Y/QpE53fqWPzcyxPkMfdi+t1HSe4xJ5rWPt/uT0Bv/eL5t7mEit7YCXrycIM3E3qsie82WA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744341594; c=relaxed/simple;
	bh=tujKCwTlhkYFH1UOqH97d92pqNpgs4AzibjRVhqCeWE=;
	h=To:Subject:From:Message-Id:Date; b=leb4fYIRdcUAPZWaLSoR7XM4PDXtFoENYwTAOVG4tmn7yg+ThqJdJlIe1WTXM9vbl33WwSwshq6LXNtvplPXJI/nfx8lghp7yPVQg13KJi2x/0xdzn2LPeWIPtm0XQAPZ6LmOKhGa2xZJs66XygkeAbpHr3M9lAsXal5do9xXv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DeBjPAp/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DeBjPAp/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1435C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744341593;
	bh=tujKCwTlhkYFH1UOqH97d92pqNpgs4AzibjRVhqCeWE=;
	h=To:Subject:From:Date:From;
	b=DeBjPAp/twJPMaSV89cdsQIMkAtbPbZQRWPlpk44ZZl9ciais+34oH/uLYLOEK99G
	 pF/g4aOdFjpD45tRMZCTpBpKYZhIA/xKMoaKpPUPzu0wTVzqHxTcw4y/5ioY7jDcJy
	 6PQdobTTQxw1m7gX5HYhiuj8BsgMDHW80pJdtUypSmfH3FAV8R/KBqbbm2LJ4mgqAW
	 aSTqUAdq4BzijfXekXFH5uYZ+Ln4q5+W/ZOs/E8rLC7bHTKzFaD9DEbcNQBPfJ9+NI
	 x5UjpjiFG5vs2bHySaOIl3jebtSiSefLdEU7rN1mqjLTcoeBbtvrA637jMzxnLWtyZ
	 7LUNpApO2U9Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D76CC3601E
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174434159359.22410.14027912413116399593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 164c8e1dd7fbd1151b7e1994d79b538e4da9918bcd32ee576329aa3ec7c47cb3
Date: Fri, 11 Apr 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744341593
