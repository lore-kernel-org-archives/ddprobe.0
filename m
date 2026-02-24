Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E4FA23A99F
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 01:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771897494; cv=none; b=Q1Eak65y+HttDeCPzM4GmCy2dUKrZiat4Fl6KtWG5c59T8y8BKomij2LxJOLl+g/ml64/2/qqwVMVRkBqJF0QSgc3HfM3qgEFYc0jiwJjAw2NR+WtVbhCvbWGbt0oeVOBH4cu7m1REJSMQBvX8oHtYVYdSdjbrqsrAXGcWuvtPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771897494; c=relaxed/simple;
	bh=lBqJAMkd4lybATNS7ZCI8zhCDVhhmDQ0PkaUt15E08Q=;
	h=To:Subject:From:Message-Id:Date; b=TsMNpHLPWsAlAQ4qsJJctvPx7C9IpnAAxWmBkTYbt6U7qvrCRYoSFIBqljX+ra3eKVid8VoH/tTpyN49QaP7YBzDLS7dZFWzqGJRYF5kfUGL/oNUbzvM7g6r+U61/yAPcbyNkHd8KPLj4bRmjgBHay/2lAuInPfQve8Fk9EmoeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AgmNhj0s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AgmNhj0s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6397C116C6
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 01:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771897493;
	bh=lBqJAMkd4lybATNS7ZCI8zhCDVhhmDQ0PkaUt15E08Q=;
	h=To:Subject:From:Date:From;
	b=AgmNhj0sKNYZYWJWOL8+VSt4g5sBZ9PmElXvV7N582g4yUxsPya/v8ppvLTuxQw3V
	 4UApDHrRmErGdh83jy56lkz/yrPXpsYMtvlTA5fqbYbSM7XI5/ehGzto3ptXvRlQiP
	 Oj3cCM70PEnF348liAM2UD/J7PfbHuPPsHT5F591lWFiQDK303OdUxDX9DwnNgnhm7
	 IA2L/gaduJTYT+w+OCghFplOGl/Aa8b8y+jb7tZOG+KAPu8+Loq/hkNqFCzauekjCZ
	 5IlSC3RF7gkh1veNbyOrXolh0jw5+UHB0hg8/7UrT520k7lK9ZSy4KPg0d9uk1PG9D
	 6VOX0CV9CDpZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9195CEEC2B7
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 01:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177189749358.22750.16053405211030104479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d6650dbc1418595919968f2eb5666695c19a9bcf7119f67f7e277d593b4d248
Date: Tue, 24 Feb 2026 01:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771897493
