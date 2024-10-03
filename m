Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 327128BF0
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727979954; cv=none; b=E6Evwbnk+0mxgh+gLeQbZ98EhfWMacYTANCAKcf8HDU/w2M0ORPd+HMsKltyOjRrPuzSuDeR54EipX3cHyEQNw/Hc8jIoU39dN6uJueISpTauj5Y2Dh584mwyWDWW31ptpHygo1IZ+zDGbV1s4KIorDM5tnYB5fVzFGe0y1ofR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727979954; c=relaxed/simple;
	bh=RnMsya4NA6Nc+oTsADF8IEsf55Wx4eZEEZ99XQzB91I=;
	h=To:Subject:From:Message-Id:Date; b=cQNy9JfrenkpKwN9yQzKn/31p/yBw05BG7vQWaw+9WWYp7rXcVDY1ALNXmkjNq/OxsVjI1IQyO43DitiSfVK6NP3ZanHSaEQodNnOqkBSevgDQwheL7AVKghUeSRFWy0CO9PyxIGI4/mbQ+sy5JG9GVheescpmba5OjxmzAQL4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Om/q2Uve; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Om/q2Uve"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0923C4CEC5
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727979953;
	bh=RnMsya4NA6Nc+oTsADF8IEsf55Wx4eZEEZ99XQzB91I=;
	h=To:Subject:From:Date:From;
	b=Om/q2UveEYP+TnCGhPfMoCjMWsB4tiGb5ZvyTaoj3r8EQm+NJElzcjl+vvp7xXzNY
	 zPzr8Mjdhouf4wPje1/t5uQOH+wpbNFYPkhuTm2qQ8MvaATtvfzRkXyyfpjeP3ichz
	 3q2qQdIXQup6RYugYiBFBSOIWAsKGQLsKlx4qCLgPAObPTZtNWcimZR4qXTQGsx9Yc
	 9+Ue1bc7t4mUVRUa2vmp54Nnt7vK904UT9Dlq94ncek7NppPw5IeOUQKT3q9pWoWMd
	 Zfkt0aSxgs4U+513SLzYISkS+oVkQkLLwUmIlJ2gKOoysgv86wiHPmhPy9x9OEZlQa
	 PjmZqq/MO9vLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CF5BCF34BE
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172797995362.1995.9603776957299803685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88d3141b9656f9a35f39d51a9f131ae03017675d569b140a25cf2c2b85c15767
Date: Thu, 03 Oct 2024 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727979953
