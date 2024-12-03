Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 507C71E8838
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733228154; cv=none; b=HQ66hPWmm2sotT0Q8pFQP23Vffn2fZVjd/X6gLmo7NBecY9g3SJHTSIMHWQce/O5kUdFDAuwUHUObr4ogxM5vRMkhFNwtKYawctaBDmHSHSul9myVR0bK3sbtd+/OtdQHCkUCOgjTcsTaBDypeeqEHWbwQS3+L2rAapGazdc0k4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733228154; c=relaxed/simple;
	bh=9KVyB7YWzk8Xmx8BXpG/7eLlbEHTG+Nv9mzr9GOOwS4=;
	h=To:Subject:From:Message-Id:Date; b=iHOa9UNlFABoh+fgNJgs7trHhmPeAtBjss9VUuRAIZJoP+tFWJ1wzTk+9KymR1bOWh7o8cuTAn8ciRW3EAMWW1CQejQ3Igr1eA0qCx/RSs/SzHk8UdecLZUyAo3d3yYGtm8ZlahPSJ7344N7tJnguZmZDE/eA/V003CxhqDMy9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G7dSoQie; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G7dSoQie"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D31E1C4CECF
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733228153;
	bh=9KVyB7YWzk8Xmx8BXpG/7eLlbEHTG+Nv9mzr9GOOwS4=;
	h=To:Subject:From:Date:From;
	b=G7dSoQieTJa3M5paS1xef0g3UnAF2OKqkMYck2FF3pY8VqohpXcW9jJeo1Xmu3TsS
	 D6BDYPkDzWZFpyCyHuf3SA9veOW8lUfi0Imkaitq7kNfv1TjCkcfhJrk5U/45mTuZj
	 XSjOrYigDvRauQatk4qrUXNSu7IT8ugjD9JyFr3KwotyhoTrXocppMkZjAqhSdp6Xa
	 aV8i62dzrQD8GYvzSKF1opq63dHivsl34cSiqS0h/J+wfz+D/CroNChQWTbqFBqaGM
	 1AxB3P0HzjmEqHlEyZuYc6GbyyH3nqx2+n8JTHa6QIJl5d1c6whaM0glw/LQf7Fc5g
	 nhc4P0ALjwuhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C195FE64A83
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173322815377.10905.11323573293063750383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57078e1f327199ada54fd67b07ef6cdf24107592a3f64b46c12ad1a78afb7b98
Date: Tue, 03 Dec 2024 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733228153
