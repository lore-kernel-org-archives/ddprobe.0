Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8144C2E0
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758668993; cv=none; b=FdzuNiFvgXk3ignQReqaC+XYxIeGgIPPAz7WZOgpxWEEZE/cwkG9CKPi4RyKxA+5APw8xgUSX6+IjYMpOYbyKKu/YR/2+vjPB5tIA9DYBuAvcUILGfZLsvD07qF7hc8ld1TVUg2jKxjBGc686QttpEqOEcC2EquOgN35bSeNVzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758668993; c=relaxed/simple;
	bh=1GJDOlEP1aBLmzLf9f+ic4Smnd2R1PNtdm52kpwdmSg=;
	h=To:Subject:From:Message-Id:Date; b=BaQJa8xOsgqR3RYI9lFNxTx9oyTeLqK4en1MDgX8HzpmegKayPvvZwm0MRY64VBzhZxgtvtygNUTkdZCBGzOeOYSFlnyX7Dz0yuf83TOYwt+k78dFfoK71uYJ7m/45Xfsoc9eD9sEuZk9APpanntMcAOl9KUxUdxWxxU9lEbEQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NtC1bVh4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NtC1bVh4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02D8C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758668993;
	bh=1GJDOlEP1aBLmzLf9f+ic4Smnd2R1PNtdm52kpwdmSg=;
	h=To:Subject:From:Date:From;
	b=NtC1bVh4KLffU9mRwg3W8fOdlV+PYQl+z43jPnlU7+i6/rVBqbNDadcOSxFcX8JpY
	 U94IdinWoGDlIKlSGIwLfb225k2O5qgzlC1mF41WfIkBH+Qt1DriTWDhtrs+m9bm3N
	 GeNQKGf1Ut1A6t0uW9M2yZ1vtlP9l2zuzKOnqLlTqmsfG2o3eocc4kvIhrJkf5isPQ
	 T7pL1b0P7q5AB7XPAIPF3SUXFmoOxSqVnpqvwwtR+rZqG/Dmi8vgO/jRulajDJhUht
	 f3zMi00/q4AF6HkC+dA2T91DtUOtqWTVTF6W16SXMBddSVRthA4l1fgb+Z7/mt8AJ1
	 M1r5u6GSrlxiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902A3CAC5A5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175866899358.26408.9107587339168847185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e1c59709476ee8a854c6536a6a26c4b9e58083c69d301655c8278c7eb35e200
Date: Tue, 23 Sep 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758668993
