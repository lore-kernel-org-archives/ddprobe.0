Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AC2A7F
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 16:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720974023; cv=none; b=Rv9vVRKrxz8QCWGu4Wx5i102NPOW2mE+kOha4WER2KyPtItoaF1q4RHrPSTmwKtt5yz1IhKyfSoislf859AzwC8hUI4zKsvh0LPeH8nUZE3cJO48T1xo2oGsnKS/VzcoSg1uTAEfoKb1QQHSjknujOFaDjgJ/qVLTWGmG4JyBuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720974023; c=relaxed/simple;
	bh=iizdX9E4O0zqRdshvrDvU0RcAP9c1fG+3mdJ2Wa6Y7k=;
	h=To:Subject:From:Message-Id:Date; b=fdIIlItICE8YwBotufGQdetroYE42eg3Rp8FwMopv2HlksJC5pCqeRQDTHo+PUaljB/YBascvSf5k38/ztOBRazn8kEGA8PTEhv2jHDNlMr2W3t93LE7GrbAZoDoFarTD+L4VIhx7JTWA8NYWwxzw4E0gRHwy9alT7pv4d0vdWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JYGC06ha; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JYGC06ha"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC182C116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 16:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720974022;
	bh=iizdX9E4O0zqRdshvrDvU0RcAP9c1fG+3mdJ2Wa6Y7k=;
	h=To:Subject:From:Date:From;
	b=JYGC06hatB+3eWzoa/m8ZTGSNL/zWQpp5pzQkT87+5cvptQYWhqqtwlSje/suJ84B
	 IbZ7eE79oNei8dEjWRKZGEPHoPKBImF18jX5eZ+smuehi+iW+RfFlfg5pasq/aAABE
	 z/Xi3ehx+TTgxu9rW3YbNdPAysvfv1fQxM+xVj9TaWpzUKQTR7lqZ1dqqzQnrWTh+B
	 6Csmg7W57VIT71EENCiaRIVyDlBriQ6JddgLl6EM73LV/obB5gltncKrFODJqgl/BX
	 kFVOstVtdQzk8ycMIMyBsvvZtGw7hWMY427AKK0IWpPxwNqX2dcPzHB5+xRnI49cU7
	 0VPK/vXReFyNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1A4DC3DA42
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 16:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172097402276.9107.17085337143109926915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebddf543d2c6e8d1f19df40a54b5174a5e5cb9f2c9eba2178c6138a2657f3ab1
Date: Sun, 14 Jul 2024 16:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720974022
