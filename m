Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04A48331A76
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 15:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767711834; cv=none; b=TvQ8QatoUFmakwCPGJ0EgHY0tMPJbYwfc7f0ClL/lB0i79dOVsPbhgZe5wvLe12mCYLJR7lfsxuEqw3xbEtOxmWMIIxJ9zZZUT8HOVMaKD+o2RcVY0+KJDDyZZgXAB/Knh2xqoJgouq9D1uGmIsFbOOncCudBfZedOUlDJwWMMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767711834; c=relaxed/simple;
	bh=A72EQnsg7yVFfwAR6JHWMMXHbM8MBMZ9/Vre6nx2SFw=;
	h=To:Subject:From:Message-Id:Date; b=itU+iJbubJHd/mmD9XA3Fmdo7BSNw4VJgq80lon71LHwZw4Mb79Ld/rbeQwmmeROZLlJVhopq08HajvhsvicsdVzQQNb5aBwGy14PNphcvHxzhtLHlg6+U8pttNQLbKgeeKhyBIi3fzaDB8W3jY+txix9pAqggiHWn7u+JmVObs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rc/CmCa8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rc/CmCa8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E84FC116C6
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 15:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767711833;
	bh=A72EQnsg7yVFfwAR6JHWMMXHbM8MBMZ9/Vre6nx2SFw=;
	h=To:Subject:From:Date:From;
	b=rc/CmCa8EVk/uueubyCDS+vYP8VZSW7gM9F5oH+0jn6pcsO0oYN7bO/LK37I0lsEb
	 /OpRrZtNkjmcGSzKD9AnGhov/DBkQaoJhF6+P9rBgMmUCO53W2QpedQySMJQ8PXJDQ
	 epPYza/4x0RFhpLaI00cCP8aj/El6IIZpIDE53wLhkEsmltxN25wTRZCSCZrEBHV0v
	 Q3o7fGFid1bh8XCsTeTTavNins6WpvPMh//AF7MPV2BvXxBEWCcSN7OX9a+et3BUW0
	 49izMPnGHqL2tzXPCF7wc5LEK49C2notxugFktU2Rt7dF59vS4rpBfHOKpHvlaMCXf
	 IH0UeARYUI/kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8BBCE9D46
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 15:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176771183357.4590.1835229742409094897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a456fc296f52fa26b6c970ebe56153e8d55b594426c37066bce5b5037a5e94b
Date: Tue, 06 Jan 2026 15:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767711833
