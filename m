Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D77A0635
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757794194; cv=none; b=fUrpRsFCibajbnUcsISAI+9A9gkIOZvtaq10f5BIRWAQSdqnk76igDHTv5EmBooo+B1bixABOZh1Os04nnLVyze6NwQjQFgjxaYLbWtN7o4UVEcxnYW20aUg8d+5UA3FGNn1knicNpHMvbWOdrZQZ09eekZTdzjo2zoHCm3LCSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757794194; c=relaxed/simple;
	bh=muJj+J+yWohU3rRFZi7m3z8ytvtCCK7Wu5/H7zqsJHA=;
	h=To:Subject:From:Message-Id:Date; b=FykQRVvUrsfhwNlFZ7ptUtoE7HvFIqis+Yo9E5i9QYlEUQtm9WvpOcuPxJjyZNuzP2XkXJZ45vIW+CRd2K6EP795KlNhE281PJzo/ZdmGyfyzFefIY09QOILU5K7NerLr6aONnK+gGvDACwL7CpbvHSocmP6kJScsQiih0WWZ3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UxbnHpDI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UxbnHpDI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3056C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757794193;
	bh=muJj+J+yWohU3rRFZi7m3z8ytvtCCK7Wu5/H7zqsJHA=;
	h=To:Subject:From:Date:From;
	b=UxbnHpDI3pNHl4qlrRleX2zxGqNjCsDtTZIIM3NzMXhaWpslBvI9B7P0q49zB8Tf1
	 Dim4aeU/vmdy5ZTZCgpajcxi8+mVuLPWLuxslGZc8GQWb3qff3x66EW0a7RfG+bOdt
	 yD+iPDP7mA5K95bffg202m4boiLkEdheSOMgvN6tTgikcf0qTRP5vT9NAn3eOiDD3P
	 H0lq92nAF3duv0KA5Y++X00UCGOvigMDZD7vI9tOURfrsRzqg3XK49BTcvS6ko/EPl
	 tgW7lv3EmZnFwFSorEAs5Md2Jj6vpTv9tLDN0wbNpEGz0+2yAAb3fNZnOnoUEf53Z+
	 Wld/UosoRtaaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92129CAC593
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175779419357.9122.747481636467837665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9aad35106b06e05b45648644d6c34cb7a98f819fd36f1353d20f686e49838623
Date: Sat, 13 Sep 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757794193
