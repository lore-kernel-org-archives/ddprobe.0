Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B33137B02A
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 17:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789753234; cv=none; b=GCEdJ+t2Yl4RsmIco1z3WxExdp7vHvUcE76TmpFDCpRpEdlOkxRF9lghFyEhlzWm9xhY1VF+DCnoQQ14Llzsv1VtacMZ3T+Ha1mknTiYK68H4w3nl9qOYg52J4THrnaNOmEnVtfKzGTm2knsH7Tx50F3V1tL+V8yPM/g8s8NKlA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789753234; c=relaxed/simple;
	bh=9Hj61v+P6JDXZIGonSgiF7TzJH6D++fKnSjvwxYuoJU=;
	h=To:Subject:From:Message-Id:Date; b=oqlSTfeA6kTnLyzgLJrlBmVCU+pYAaIC1SFXE6EO3m6gmvpu2rc4yCeA2fYJsVngtAzoxZgIrdnPKEIn0xTD+ptf8/VIqfCmUvbmbBH3v4yO+yoXAq/LKuPZs5a+/IMfUY6uZK6EVtJYcShVub+ScoMYgzXfsQh3r70kedyGD98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RsVa+TJc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RsVa+TJc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5078C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789753233;
	bh=9Hj61v+P6JDXZIGonSgiF7TzJH6D++fKnSjvwxYuoJU=;
	h=To:Subject:From:Date:From;
	b=RsVa+TJcsNXUMUBTRjpxctxWISpqdsw+osFukHbAwJV3vh/0A9d5Nq8UKOA1HgQO3
	 aEX+X2loOvgRmC7CqRHAd8FeXeUk2RmCmqnVyGqTmUEvRenDYtTE3Wzs48SENUteYY
	 BNCv11qMDt0vSFwas42S/QhmWi/DoccEkKFmuilEDPBb2eZcOZVlfFzXZ1TeQV9MG1
	 sjnUgwkae12Pygsct5qyDVVfdGNbOvrzmzXUfjqUgLgmtb1w8YtOG9cWgOlGTwqHwz
	 cUiZiHZqW0HeaQnorfCZQm2BT26EYmUBoEHco7YHTc3OJwp1UzmzjzKCpQyTbwkFoJ
	 QH5Bf0e63GdcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B188CC982D7
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178975323370.20877.17751316490793403222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad01f0610ef502a4b612979006ff7951c8da1b9869a63e31a28c67bb5310ee43
Date: Fri, 18 Sep 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789753233
