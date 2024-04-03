Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4DD5131BDE
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 09:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712137097; cv=none; b=jjsfHTmbGBAHbfG7kzl5JeCBxUy1cKia8Mu+C/8H7IfDj8L+hYnwYNxC456O34ykraucAntAG+2BeTuFOlxI2jyg1DewB25wzawOuGlJslprcUYBvZ5S7Qc7Z9zz5XwQ1bChg03tyaMkWK5/rb/dy2QydpM6JymyY1F8aKZc6Xg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712137097; c=relaxed/simple;
	bh=1Du/wneoEgB/vgMEcgjYQAE8Yv5I7ZBpZsy+2Mu6dc8=;
	h=To:Subject:From:Message-Id:Date; b=PJlD4np1qCQS7NPHd8zrvJTiDk31dzRiKHXW6cFNJq9wyGlMlC6yociVFyCE1pW4Sxr+Ow9+pjpn6AVP513RQ0qSMVFL7CM2fYUpnHZ8NpAEnb2CZw8uDBMLSKyaxhwEWY53sX98UtleClx9EXBjD7nHwjg0nfPcuv8462BI1Ms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UYkuKQeU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UYkuKQeU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76156C433F1
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 09:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712137096;
	bh=1Du/wneoEgB/vgMEcgjYQAE8Yv5I7ZBpZsy+2Mu6dc8=;
	h=To:Subject:From:Date:From;
	b=UYkuKQeUJxjBcJf5fuYlUrJRGFOukBPMkS0YYy3a1ZbJLswc025wG2UTbtgbqaiCM
	 F1GoGhJqLLYzGXT0VknDf7jwqk5RSkmPB0G+8vJUwjFCqo0veiAfK4/36oU8Ct71D1
	 oRjslal/JUjdSxV6ck+5Y5A72FsEsLqhzCYsHsc1tPRckegmmTAup3F73eDlXZJhv1
	 7Ve/9HGmLwcF6CS2oqMZwpOOus1w0S4b7FzE3ObYeX6yAAf3v8tM1sKH0OgX3peOVK
	 xeDyQRt++fyzVbm00K4ofNrFs+T6FXd9ca2nlp9XEG3TyTT1I6Lg4utNaYgHWa48H2
	 5dk3fa/xI/gag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60226CD1288
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 09:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171213709638.322.12102979636352789736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a594cc1eab919141305f6e5a51616bd3bbf323cf001c745108cf1afa3435f6f
Date: Wed, 03 Apr 2024 09:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712137096
