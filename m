Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54B3D1553BB
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 17:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718819363; cv=none; b=k+2gF1TlosK1tUxNNliOqUFjwcGuuKfRJKInF9F3McdWyGclNyj9KjKgN66K6BiiDQ5OQBgf2j5OgTngJX7LMxGADKQWwyToNVK2xV3Pr9RFckVeUz5cGGgdPHe9Xv7jZQlOuwixtV90hQDqs16mWZRSeaXOnoaRAwDtqSpI7QQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718819363; c=relaxed/simple;
	bh=F2eh9uWyfhgEfH8a+YaWQIXmcM5+UxD8S4w/ex6eQ0Q=;
	h=To:Subject:From:Message-Id:Date; b=bK1QablHc6OxOQqOFcmsdlC9aaya/xSR+6nuBCexap9Rg0ZiZwmn7a48jIHJBQ7FFk6zK1PjerJTc/qwiIG8vR2WUN+74+c/YcHbt+R/afVclZ42qiJC1csQdX6Z82EmbF0ocHCW/uFzhzn7aVwQ94e1U82+scQcfFVkIuYOOkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rSlEl8g2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rSlEl8g2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9029C4AF07
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 17:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718819362;
	bh=F2eh9uWyfhgEfH8a+YaWQIXmcM5+UxD8S4w/ex6eQ0Q=;
	h=To:Subject:From:Date:From;
	b=rSlEl8g2G4lyd0T1On6AmzRccepv3WBupBaKQ6Lhr8W8EUrXBRjeKm2sx23KTbZ5C
	 oPgoi/opKbtyOafCzYEQ3p3LGNuJUeRvRsXmWCR8g6mMN64BqvxRMletC73M1le8Mu
	 bpobK9oJKTXQC5qxaxFA7d8U7f+WaGH772vpP/jDowLDQRVlwZixy2NJywk/XkNz9E
	 UzIPrs8QRXXJ/lej8kGsOQb4aGMgQieg2jCuaH4vmy3hhCpRgMgO2zWs8MaPNUXsU+
	 1uCC86+ODQjvICT/yCNCbYVt1VtoA3+q/hvCAu/7emyyzBwowqPYczi6SzKCyw7YyY
	 FzPQh1np7dJuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5952C27C53
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 17:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171881936280.32472.10270432320065689105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d45b08a5b6ee0cef4f4af6bf9176b76244a4cf34de9d69230ddedf269618aa5
Date: Wed, 19 Jun 2024 17:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718819362
