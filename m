Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C06E32D7C7
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 09:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786699234; cv=none; b=gW1/Bu+/4YVQhfHKth7J3AOd2MekKZGV1sT0uHxCZeImMEfZzKlO3MYg/oFQduyaiVG2JWdr87ieX6qAorBZ7o5EOJtOEx+wnb1zDcVu9tVAOe6MjbmVKhhZO10PFuYuCjvYtUgSS77V74V/lwCo2sqF+OAbnH4y6pOOcAbKwsI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786699234; c=relaxed/simple;
	bh=QirUIKFO9yhhiEBJChFJdcupyCMrqQN+iWkC8uFwRV8=;
	h=To:Subject:From:Message-Id:Date; b=tDdJVhVCFrf/+XT+VKhdNIz2Do4vSvnMNnPfybFbcGMvYYtKZxGr1z1rDXmaVuDCndW3R687LxOsGydbHPtFEC3E/uZNxSxDRxmFXu3gS3qwBOM7HvsCx/DkwzBxEC5BCGkumeXoJFIGMR+hzui5YoI/OiUc8w40amoIauGg0Kg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CsN5WrFm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CsN5WrFm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8635C2BCC7
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786699233;
	bh=QirUIKFO9yhhiEBJChFJdcupyCMrqQN+iWkC8uFwRV8=;
	h=To:Subject:From:Date:From;
	b=CsN5WrFmK1drOuVl1oQQhwiWrp8iO+MldTq1TmO3q/R15ddUMd6qEO28Vz3pBFNz3
	 wGClRhfLgXd74pYq1lAWhyEf3fwfk4s4YgLJiH3pgQ0Ma87ACMTP+PgugwLIXSgYwk
	 3IoohPYCNrakpwO8AH3m6HmEK1KWr9QgxYJLRnBziTKQpy+Fft0kMeH4jScEqZVEhK
	 6e6rcaK+6ahHe+t3USWRXp8ofjfqoidLkl5Y/JSJTqcJWlZwmMLcV+C8RI2nA2sW7d
	 hAwXZSAZYYXGdpigtwACoYTIVoUQ9xzp5qT4f0p9qiiuJL1Z8CA4fBk9JST0bKU+ZP
	 HWLerkRWILSMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A83D6C5B572
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178669923368.7862.3603527058946552410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2db7eaa8532e16dc5632ebb4bc4c37373405c7225dbdce30783fafda5061646c
Date: Fri, 14 Aug 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786699233
