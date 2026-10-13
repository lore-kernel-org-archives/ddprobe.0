Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27C353C945A
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 13:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791899434; cv=none; b=T+XxtUb6jJOkEkq9bb5r8nZN1urauacgucEsn3WPXWCSyNcOnpx+amLKKMGtIJVAo5w+2Om7KZqR6rLKn9rXDSMXxmQl/K7HZK0u8FZFkTqJ7D0iL8p93G5S8UzNbiPSr87ncQErnWrGBfWHhM9twRA/PaX8sYrZ7ZdXr7BtI98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791899434; c=relaxed/simple;
	bh=sDlXx/994+okjH3VBQTLait8Xfbf1GtmcumfCW/MQYc=;
	h=To:Subject:From:Message-Id:Date; b=ICRzPTNO9upyW9fJcF8pdMct4GCZPq3dLyFJAAWTAaT1uVT3vb1C17C6thVfkTzB8NMyucPsMjilHKKYRvgYhHBUXOdNzk7eCuvuq6SY2DM9nutyZg5rLgApRTkzXmSjoJH0nzYVbPeKsgw+cxG5fm4O0c59xz5hgtMs6gde35k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lcQJ+wMG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lcQJ+wMG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1B3BC2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791899433;
	bh=sDlXx/994+okjH3VBQTLait8Xfbf1GtmcumfCW/MQYc=;
	h=To:Subject:From:Date:From;
	b=lcQJ+wMGriHEM/w/m0cHjtdROCBZTC0we7ENDJ+8ahNvLIYCmzkHb6vCI40PGZ67w
	 cEL77FTNiKBmZlD3NS+pWQQaBDGNGuyXqXLhNBzKLO73/KHnA7PZxdDZzmkPg0Ok4V
	 MdE48fbGTofbT6CmEVoDKoqMrpLAhZgOTPCvggc/pRjwBEc7Qwljvg1i5ffnf4z232
	 ounSo54pQ0q0saVwdT/e/utlfpT20APNF94r+fkSW6hpFD9cxL38V71MEz/RNoCsmR
	 Kymy82DQikCfQe/CJKCHNjhv6NT6YEoHWf4LfgYLthNpSWm1QAQcbWiHavJy5kDaxX
	 JlCUJYr0lNXWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE19BCC6B0F
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179189943370.6038.5726058286870471847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce720474b4e6c0c89d28a6d204f9e1043915b850e57df811071e5a6a6c8cb5c1
Date: Tue, 13 Oct 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791899433
