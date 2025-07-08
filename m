Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC78E24B29
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751935793; cv=none; b=JNsj1IWaoFS3zWi2tz4ez0ftyibgjltxt8xTqCvl6uDCwzPINdDNw7uQHkqxco5LbpyiE0ocan3d7OxFgQlrMN6d1JgEkPGpcPQComB04NLVNuYUbOY5tbbiqxrXXJRMqOHjKGoz8dEogaJ9B1Ivoi+VULc4goVHaYEZgb6vIc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751935793; c=relaxed/simple;
	bh=IPBtNvqd0SEdG4LyTvA1GCd1sc9qNf6WIe9HvCWXIyY=;
	h=To:Subject:From:Message-Id:Date; b=AhB2qudOLUTt/uzh2rybjgG3Evtlb2Q7g17ScNdubgSttA0GaFnD1AP6js2m1+Cr6PtHXrEtdzxLpfd64LdtKzYP3z4lra8yWgcatQrliXP2pTZtRA1V3tD4nXD7rdebOh259aP5I1Z+C4r4zvI67kq8HpAW10aWngdJlWXir0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rQvrKhCQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rQvrKhCQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B82C4CEE3
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751935793;
	bh=IPBtNvqd0SEdG4LyTvA1GCd1sc9qNf6WIe9HvCWXIyY=;
	h=To:Subject:From:Date:From;
	b=rQvrKhCQULOgigNUA8jU6lIS/funfOEiIT/H+LgH3UkJjPQcWurHPC+TrBpPafb7l
	 Kq9aHYW52vAQddTobriJhUW7xloG1CTEDr9+Uk6hHNrcP2qKqIgMjF9Y+W7uzr6BbI
	 LzFrdSPHwvmHdkKT4cUwvoZi5rzseCGB+zVOrVs8jqL34hSJXmuSJcF7hafQq7bDZ+
	 yQmy7TLwYD56lAPI9aJiUMU6dqaVOoOxkURFC19OJrsENSH2mL5js8MiKQwZ3G8PIY
	 UxPMwUzw8Tvij7HeHr2YJayq3Ymt+uI3Nq5eL2FYC1WVvY8Cn1cy48u6aJsVE3Om2N
	 AXJJ8FQKzpsZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCD5C71130
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175193579358.32215.9139918979487925050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99d2e6c3351e6a972cb334f7db8cc477fafac5af8645fa55829ef7e380fd7a97
Date: Tue, 08 Jul 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751935793
