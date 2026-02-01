Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2822B13B58C
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 01:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769910234; cv=none; b=eJYbKq+Ngf4vyfPHC87Uby8tMiAByPIgb6XPrdsvTg7RN0LvTzk0k4wY2MRKk+FVrNbLtyxl4A1VhzS2fMp2mFivsdTjLNtqKdCo56yGwcY2r+uzhe/9yBz6bSK/g0g/jrRVKxJsNDhKimpBU8rIWyGpGAyEEXWBvLVIcoeQaM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769910234; c=relaxed/simple;
	bh=ITiJ2Fw/Jm0rXIIL4iNOt7t6ZakLvhATTTE29deBjqE=;
	h=To:Subject:From:Message-Id:Date; b=bFUxO4Xl7LI/YCcdyP5bQtlQkzKTLkCwOnPaIS9b5QezI8E8PWocxTESzilI8zsG6sd2XDN1+/aagMSvBAxp9i5lbN9klSoHJ+d8gjeU0fty2XF/93O0mYWq7VS8V7meR+57UhLL57VWf6F/iKRpNm5S7YNIEvAx8J7V3EZ/lSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tIZxZVDt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tIZxZVDt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5FBDC4CEF1
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 01:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769910233;
	bh=ITiJ2Fw/Jm0rXIIL4iNOt7t6ZakLvhATTTE29deBjqE=;
	h=To:Subject:From:Date:From;
	b=tIZxZVDt7lXgYOsYWSp+w3QojczxWk/FA08IQAgOecoWUSgMaz34Va1iz1/LWmQga
	 drry4iBGS1dyKfdQ0kFtCB49q0tMa86WDOomes4ZIc3MJh8dKYStaIz8iz8P6Yx8kJ
	 7mcOjFffWqBx6MxKssN5MHQVQ1EIwmNkTEY8JXRL6MW39M17CspVuZNRO2iICk3LoZ
	 LYIP01pbniVW0b98SdQpYqQO3sw1A1JOFH4HysNZRbZFT2dDAVSLcpEMNYUcdrjdWp
	 LjRCBqOk4AJbi5go7y4fXDnBHjyNPwCLFm7g+VkW8iCYpkuQySX9tDEzHsR2WQgPKV
	 77VbPhKhG9L/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95217E7C6F9
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 01:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176991023357.4287.15157271005810916253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c77ef8caeabe8c8a8a804c281b5538bf76eab9737fc5182a53dc27874c7c383f
Date: Sun, 01 Feb 2026 01:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769910233
