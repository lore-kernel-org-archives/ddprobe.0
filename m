Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D6094A1E
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754892594; cv=none; b=a4WEY5KvyVoAY7ne97c9eixYfc7HS73c7ILdnyLPkI6BD1RjyBnhAZCGlnzhR5abvWUdaij2uTMoIbicsUTVtdTBt4ZJS0W64lpUI4N7e2Gp9VllRqk8rHHmH03wAx8t/c4MILPWTMbnGSUoNICzZcft3AAgd6MXamSzp9iphp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754892594; c=relaxed/simple;
	bh=EALi5umtHyf7Y9BRwVS0i5K9JWJFh1TwzxxtvHg/x1I=;
	h=To:Subject:From:Message-Id:Date; b=E844LGYGVZEu9J2ir1zkDFkcwY9Nz99u+UYyNSLpq8rlHUK92gKaD7JZSW/W0G4cOmaKpNg1ZebF7Ygnc6dkNh5z2fuk0gnI12I1sUVU5s3Z9B4iEEgpJSswhw8cqGVXTDLj/dxicMrmKaYYS8qhwRe2SL/lp1cX+FQmdWeCV6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pj75HhAy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pj75HhAy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F99BC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754892593;
	bh=EALi5umtHyf7Y9BRwVS0i5K9JWJFh1TwzxxtvHg/x1I=;
	h=To:Subject:From:Date:From;
	b=pj75HhAyDBzm3z8ihXkJpuOcQ14AT5AHpM0X73yBiAurUbksPopmP5N97JDoy8yMf
	 O5qPsGnVKPRUsCULDl5N+kfiPRa3jfbaI8tYDumHrn6Bf2jolMbBkvx1vgitDpwuAx
	 smttMjenmtzx2rDMqmKTjDqET/BOxbOwk04c0B0DlAnyx64cvDbN2TNGQD4n/tzarS
	 iqBfdsO54MS3FLSMPrRd/TlDmjmr8OuxKCXXbt0+fjoiJ2Pb1W1617EY+yVfVnZVRp
	 xiCWosxM35hvplFY/xTYNjQxOTIcGMhIT9BE08kXXvE68nG5iCwcAxmkKgtOLSfW8h
	 dJGY8TnbxUQ3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91224C87FDA
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175489259357.27393.405794227240105506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2be56719733727ddca836ef10d2af98a7a3e4147323c60d5d02e3fc3cc91982
Date: Mon, 11 Aug 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754892593
