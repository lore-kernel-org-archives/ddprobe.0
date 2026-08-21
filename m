Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8875334DCE4
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 07:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787297434; cv=none; b=jGOd8NqCnKUX7AibZHyJ7UfVXJkb93kYOHhg+9eAeyIXbNRur/41VpvpZGU1VEKylxdU9brg8FV186bMFO+xTHjkckEEJ0d+1mf484ffBNk3y8A6yVZXzCSzduh/OWt+xjHjivyao07Yc9jCVti5YNgoRBWTfA0x8TBawzfzFek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787297434; c=relaxed/simple;
	bh=nb/G5/q3YiHhEzFnS26CaMAxW27BCRumvrL8Q9jLH1I=;
	h=To:Subject:From:Message-Id:Date; b=AYtz65+/oHqqHRLX+oAyN3Xwnaql3E9YHsZsGrVUI2CHQHZFP/OeefH1BKVoT5/0NY8xKydxtfIaWqONWi7C2zbcxrjPyhOdRsc4EeZXK0Zn3sm8338N5CZ579DlnsNR5sLJHabcVSHzgv7d8NL8r22KC2s7d0VQOua4N8Zvbt0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c3qCZ65v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c3qCZ65v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D95E0C19425
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787297433;
	bh=nb/G5/q3YiHhEzFnS26CaMAxW27BCRumvrL8Q9jLH1I=;
	h=To:Subject:From:Date:From;
	b=c3qCZ65v9y5kuBOt9DLbuuGPNRLkWccsoGfdzGqF4HIw2QYpnvM/QrRlv5X9r6Or4
	 Xv72Irpa2hPvgIyAw5P6jTpEZIVCfehoMzEhQKM2NkIOWODodUCOSCGgLHOB9FDK4p
	 76u/aS1Q7DHhTK68Ir2zYmjxjFxYachq0ScDSD8O66sWb0d1ll3B9pkOQFoAZ/xCiT
	 OAnqVcLShB2NPqZuzJngLzA9R5r44J5XO8K5Lj1WOM+2xWK7N8LN6ztTATQUcRRn6s
	 HYTE4TSqJUiX5gMvcYoBy/shibvpBSsfLl9FoVKto6iU/r7jR9K7wsMKmqQ6dDQdM5
	 jIbcV4ufOW5Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B29EFC5DF87
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178729743369.8680.9008315294933216556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e37bbb6f85da0c92c3c3180d8305e8dd1fe16cc8b52de8c6eec2ef824e14564
Date: Fri, 21 Aug 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787297433
