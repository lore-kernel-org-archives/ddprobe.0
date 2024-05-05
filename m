Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E28CB65F
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 14:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714917743; cv=none; b=DbhMFPjuALEufjhXCYwrAxSy2E6Dh6Db2WxMQAfjC+MHo65hWzqWkgIBgCHMgxAyobPGaU8coZob7lUzWHl1/wxv0LehjTD1WZQDLwkt1JLeebuWHBVttw3fGtLgQvv9jyl4tjFhLTHruD231hpUUjz+VJRIi6gSL93Hpux2cks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714917743; c=relaxed/simple;
	bh=QSqnVz6vjDC3ElS8Iyg74St9On3CPm+a7x+kf9D2S1c=;
	h=To:Subject:From:Message-Id:Date; b=XezczymOTXzBK0uK/lTYOYYoGDsRPK9X5m/rq/8Sm9mgXNONgE48EFFZOqqHwbyEtObTe60sWenaeaCrgwJOvgEsigvK7oHu4DqXPikvHiklrxmtTjT9umBasK2Truu16pEnoS6iwoL4oGXAjPK+oAW+MB7ViqfdOrFJjtysFmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cSSR3ZbL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cSSR3ZbL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D57E0C4AF66
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 14:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714917742;
	bh=QSqnVz6vjDC3ElS8Iyg74St9On3CPm+a7x+kf9D2S1c=;
	h=To:Subject:From:Date:From;
	b=cSSR3ZbLcVU06bjIn2qBPDGAXqoVR78eZuFKssWKJxH/feiv6oA3Mmdf6ZJtr9q+P
	 hR61DpXh/K2AT9yUuqPaTgdC5fQIDWsGaN9DBJ44WMoqWkJbYr2xpgGDZMS96u9zuA
	 uDqaP4TFoxtwwui08L9UNmxIvOC5mQsYOGxJXnlpZ2lILiyErvclzY9EGpMbpjlRMX
	 96kR2mSbyxjH5wYZynGgoc4pPFCjm2sswKWqTtPVLsLgoJlpHQzSFQfTWBIKcVmo3B
	 85WSLXzLtn8mmXBoN+Xhkj1dHq6gR2vY5qX6kyhGLD8Rt6NNlz7v1N8d870Qhj2Q+H
	 xYMqLy8PQesqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0DBAC04FFE
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 14:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171491774275.20714.12317284497629176238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2bef878e0481174e79f71496d147ab7617f428197b7712bbe79859e4139e9af
Date: Sun, 05 May 2024 14:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714917742
