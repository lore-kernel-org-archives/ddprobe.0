Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A4BB2BE655
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 13:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769867634; cv=none; b=uvfsQaaapKhwAyLWzuJa+70kW/RIzuoEd7In34zVScUO3GMz7eOZxrYTLiDPswYH0QHQBwxTuhyAvF7BBxn4M+hfCUpuEiUVLA8waNJ6KL6J4QbR5L/mGqMf1KQreP7VMMHegDm9+v1427TPT1XEItsPUdvCEQVp3XCCtt1gxJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769867634; c=relaxed/simple;
	bh=fhrUyi8KiUfJ2UkikdoDDi61ZYBEA2cka6C7PHgvKm0=;
	h=To:Subject:From:Message-Id:Date; b=DKNZg8HGMZys68x5vVrG3gQL0WGeXZfH6OVzFGnBtIfwvUp+aiGboPNsQcm/N7NoKFLgS8TjnN4+kShWNOPQ3otPjuwEWDHsG0mdgXLoi6JWVDg9YhCT3vY/luh/UU9ncGh5xk/c0UnhLo+kV9KO9+kiG2EqNMHuc2c/s4m4Xz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WI9sgq99; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WI9sgq99"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A614FC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 13:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769867633;
	bh=fhrUyi8KiUfJ2UkikdoDDi61ZYBEA2cka6C7PHgvKm0=;
	h=To:Subject:From:Date:From;
	b=WI9sgq998/isElJ10owEmkotqMf9RhhI0NhQQToVmZ4V1TXCFyL+UNL1yrtXoN82o
	 0Pvro++2ZnIyKYH4ZxmN3LLuOuR3eVqC3sN1bauwOQISoc6hiKRmzJO+McXQ7c0nHY
	 mL5MI+A3QH2PD/t3xr9CkUw/VxFcHIS7FFCrBR8zHRXO2IwLH/zTgVRtF7fqsKFGmG
	 ujYoVkyL9r6VEjvJZKezlhvJrqEEYSGnUkEwv8lhbUEAQ/UGClW349GhL+FBQi/V8/
	 Fet3xwHALZm5mu8a0ofqLt+8XMv/XUdl0rGfkvEG+A86Yrj2gUNhFktLMQLEokiA97
	 VcSHoU/O2gGFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D8ED7976B
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 13:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176986763357.28789.12026272227094655660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53757dff4b9095d95c1e17977ecfa1a321f9e8911f0725a59177d5383ef4d272
Date: Sat, 31 Jan 2026 13:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769867633
