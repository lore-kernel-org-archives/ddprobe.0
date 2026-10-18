Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D23A40E8D7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 18:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792346434; cv=none; b=psfwWCOek4gdcwyrI346P9Itg89dhEK+t8PW50Q4UpULIp1X2BsdhpSgLlUP7Xs2VfP2t2onl69DXPOHp0XxW3SOeurBTuVuYQYbeyOsxPEoTp94Yk9bbWkkOPrar3s5V1H1Wi/0/HZg+2uf1sVaa7KtyknAriyLc6mfzQt+RaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792346434; c=relaxed/simple;
	bh=amWhVa/uPZIVVuGpR0U0jsjHomt1ugpG9cdFCA3cwQo=;
	h=To:Subject:From:Message-Id:Date; b=LT4Z/qnFVr9Bw7B70vMDu2dJnB2AlOCTp3nfCKcOlc9a9PlCHD/vfxxSjf+Umefyuo7SA+k+w+d6ZjhH/GXt0b0ylTARqyWPG99ZOiTYU2r839chJ1pex21J79I0rvwNO2f8/0PuTKSt4gfcw0JdXLbWj18DoSfE2wL53Ce5kuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b9l2IPVq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b9l2IPVq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D081DC2BCF7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792346433;
	bh=amWhVa/uPZIVVuGpR0U0jsjHomt1ugpG9cdFCA3cwQo=;
	h=To:Subject:From:Date:From;
	b=b9l2IPVqIMGIVPt9Tb/wc+saeAWBkD98ddZJj+57iR+aHsMo1BaKUPEDjgilmBp61
	 DVLF0Ams/2/8/RES4l28i1nz7xDW4FJyty8d4jFGduDYQKhdazdqCGvXUcLUkgTUqN
	 Z02c/gSnhxqdHGP5PFa2z+IK2Nan2ayCBL9AH7O1fn5SSyXFS//dKWSWLuJlUsUKMG
	 JzulywP8d1i+7qVt/WXhK5HiMRlUHxwc3TygV4pb8i2FXkhsgMhc623WOgNZbyxkVP
	 5xebfapKBYiBhvIBKY46NCYCazZ7VPV3xZsPq05ndcsEq2aDOJhny4FoN3cIXPKNVE
	 a/N98P1QI02Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC080CCA490
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179234643368.1545.5362032704538456572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8afee2bf031a8d0b4f9da21de60cd3126dbae799289b810b548eb9199c589b4
Date: Sun, 18 Oct 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792346433
