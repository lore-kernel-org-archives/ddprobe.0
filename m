Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2861037187C
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 08:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775290534; cv=none; b=dzk1Gone2AjatSWT8JdCmtp8jBlnhHMKny41r6NLQw0LZ2uLIgFfmF8pFfToS0w5kVgW+AG1SL9d/5KiH2k4n9wNslJMjjeuL2cmlLnrZyn9/4aLejmRuce4wF2peP6SjOd2243Ge8k3racUJOtPMU7wnhlul/pCZh+DrDVHDqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775290534; c=relaxed/simple;
	bh=oImXuX5uWGXN9hgI3EVHOSiGu1G81lOTaXigDMjcs8c=;
	h=To:Subject:From:Message-Id:Date; b=hIUxbG6Z2O2LUIUd3U1a1+LpT3fSAfN906ZnE3SqrNgswelFf9f3I+c+kPENvVKhuRo4nXyLPAwsKvadA5imNDv185Xq95C3zvyHn4HrhvtHDi2/AWWn52Z0NebarFn+B1DTW7pgOcqsv0vVdRSybDrsRkfM4pgnkLCO9DA0CTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rxiz2HU1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rxiz2HU1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0B77C19423
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 08:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775290533;
	bh=oImXuX5uWGXN9hgI3EVHOSiGu1G81lOTaXigDMjcs8c=;
	h=To:Subject:From:Date:From;
	b=Rxiz2HU1+pPNimAymPYWF+32Rs+79U3qXTqFL3FFi48TwFExwqp7qJCnhoUH2KBhI
	 stiSdZiEPYCoxFhmjEK18+qzgvkF10AKygfAIUQldBUybrQ03p1ObaxNmPAIsGZA/B
	 aG4rmS/QA4l6UbQPMFDPmsqHDnYbVOnIdB32AS0Hv66bv65A8MJZEVtJAvzorxbLGg
	 4Qx+nBJsX2gIGszVV6kUkolP4Ntd8ApWkgnS6eKs2Ng4OAuPwsYD3VTvWVh7A3SQyf
	 fcwrhFjKEH25lM6R+0uOsek5B5gQERTj+AQczWaxhoOfukRuXJkaT3tHoqxrkQWU6W
	 sD/S5x75P86cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEE20E88D8B
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 08:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177529053369.6882.939348656658953859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9800193e82bff1d6d00ef4853c0010ac6f9b94f260df9303619a020f4f17654
Date: Sat, 04 Apr 2026 08:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775290533
