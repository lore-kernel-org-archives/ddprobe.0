Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 126E11D689
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 23:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706053097; cv=none; b=ldAE2ZsG46R/ZCw52M4w3bwJeSmLrFiI+T20FgI0Nukayw+Mm95X1vGZoi+bOW9asq1F0FOONzURIc7knKf379enxUJDPwi9hUe3aatlEO22EZNnrSqJN42kixKxKKrIj7oCvNBctBMhom2rfTHCyMvaQqap1geT/G3ryI6bbdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706053097; c=relaxed/simple;
	bh=i0qcihCIjXQ2jqpKN4erQ64R0Mry14R3bHbMRlQ22/k=;
	h=To:Subject:From:Message-Id:Date; b=KGo7ITPQYSS8FWP+k+2y+pfp4cJoOb+0exG1dMEMRN/eHEUzRfARUwKzYA4Iez0JaWXzU7d2I/gGTF+6v5iB5uSMN+O1XU+mzxayoNrm6VsQomEwRxHrQCFy2lNR7XmkMKgR0Ev5CZ0ImHXG2sQXW+lZedyxlpUyaS+Ga6EtvO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bd3qOvxU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bd3qOvxU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 778DCC433C7
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 23:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706053096;
	bh=i0qcihCIjXQ2jqpKN4erQ64R0Mry14R3bHbMRlQ22/k=;
	h=To:Subject:From:Date:From;
	b=Bd3qOvxUIKK6t/hvyD/tTRYHWWg+RtbasTYWHsZyfll4GY+2UXox3RBEkGZ5iPBlT
	 OfLN0CrwR/NOKKnsaQ1yPWOSyGF+MA0G6ExRr5BCaQbIfFbOWm8n4AJkhPV2bXLRyw
	 DHFXkRcknVDs/wshLLSIPxbUWF3W3IFYMDVWfAF70VNcX1c2a2SUzhh7m9QYwNhNUP
	 9anRJCGx+m0AKQHgoIlRWhreaZay2u5Xha9LKMeG2A+dC7JXSUElyvpMOel7qmGoAa
	 bYHwaflMmYDWvta36BY16WMskUPKePpACvMNaIQ7OE5UmAKl8utuqZWAWt5B72FCCV
	 bWoc8BaerJqtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EC2CC47258
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 23:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170605309638.21014.10090905851672842139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8e73611676521bbb36cebac34919b8a3c688bdf03dc56c9321d6d1174f272fe
Date: Tue, 23 Jan 2024 23:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706053096
