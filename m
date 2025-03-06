Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F5EC19CCEC
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 04:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741236534; cv=none; b=UxhZJszKikf5IJ/TDmjZfBVrWPmZGWzjk8Tz8GGx7OaKyiXhPlofjgjcFtTUYjT/vDeB/55pCSecsn4+mi+3Lpei44cy8V5ZwMdV82EhMl1wj7ID85B5CsY22f8fNN7CRFcVp/pINJ1eEwZK9+AAXT5SLh8fl1DZQ4ehG7SACFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741236534; c=relaxed/simple;
	bh=Uu3fWXdUCCh3GqUeN2pj4w6wUNETdb61s3cnwLCtJVk=;
	h=To:Subject:From:Message-Id:Date; b=DSZ+SG9V3HpdeGpzlTRX/lIfJ2e+UfOH1X249kD/UqkbtT3YiieVoTPOW4TA/LpTZ7fBZuKT4KDc4k2ce9NWiG3cU1GoqGmD2su5DJLIpc5oKQzbUgZ0yiTjiYb2yp5G68vkRv6YOLAe/TtP4aL4h5Mh94OlvjlkpCNGcCvCCq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pZH+yRIl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pZH+yRIl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA9B1C4CEE9
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 04:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741236533;
	bh=Uu3fWXdUCCh3GqUeN2pj4w6wUNETdb61s3cnwLCtJVk=;
	h=To:Subject:From:Date:From;
	b=pZH+yRIloN/NCOMTW79be6mdsr4Ty0tKPhU8CqAMIHonJftbwrdPqGHisN0jYrjZm
	 tbsz7+Zyj/pdV+2BNzV+Y7jqlXw75nHFBubu0E6aKpUWM+pWvtmeTQ0vKKj4h7Fxhk
	 20+sg1V//leV+zIv+KbQeUMFiJI5rO/7LXmQGZsOHzcsHNvOUhaAB6RkG4Y9mgrgI/
	 JG/o6uZMj09Tk6fRofIEr2XVgY1STfSiW4yuO/yzsbHR5cVyXGqTQCbfgn8Y6qDhPP
	 XkhtDCgIbUrX5Nb4OT5mdsuidHKNwEbqHDBJGgC6MS6IzkbHpHPUmddodW7Z4WbgNL
	 rk8YS4rmPp5RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F62C282D1
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 04:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174123653360.6415.15248543337389052274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e6669d33b1b7ceb008a48fe9ca83f24d9b41ac14fbd33e6f8c4e5cb856664e0
Date: Thu, 06 Mar 2025 04:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741236533
