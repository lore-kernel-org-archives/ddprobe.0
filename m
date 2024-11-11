Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C211A1885B0
	for <ddprobe@lists.linux.dev>; Mon, 11 Nov 2024 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731319553; cv=none; b=cyo/pyehnrhUqhMIHB/rCRe6Kzf9ijgb9rDru/ltJYtjFdZRSgtfywMHzhzef8cBk1aqR9+ssOsTaTtrxxf4PAmmiXCusGarrrygONHbr4moMkEIcelTmA38fTgp1sfSTu6cgsKJ2hkoFqpJ27hu7TSL12ceyF3ZAsl49yoMYjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731319553; c=relaxed/simple;
	bh=gCUzP4ochV0LR5H7AunjUtfUD2+jcgY7SsGCUczLCh8=;
	h=To:Subject:From:Message-Id:Date; b=RW0clT1h8l9ruFFzQkGqnF2bkuJJmAxSosKI0Qf3cP4bXcQSS6nugzU1hxyVQQZp1eAvKOG8jMb5s4HmV8RSRLUIIuQZmAUErPhpqowltC01ihC4n2gzIQPdBJIpYhAVtZTocaZAczStgKacZUfPw/GY3FaqOU1c7xLETl8zrOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b6729kqq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b6729kqq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1199C4CED7
	for <ddprobe@lists.linux.dev>; Mon, 11 Nov 2024 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731319553;
	bh=gCUzP4ochV0LR5H7AunjUtfUD2+jcgY7SsGCUczLCh8=;
	h=To:Subject:From:Date:From;
	b=b6729kqqr3D73qRbDoAgmZnRrMibO9dPggahW0NUboroA6jMXL3yzemMIylfU0hDJ
	 y59t5CKp95RKB7T7erffY8U3M8p4dAUJBKM7Yb5uU7KBsIX0xExCtO64O8c0JGRUT3
	 WlootKZ92ajtsu1mYuqoNy4GXaq1WrDtldSCX2iY7OekVZCGJ61CrT7ZTwg1oB+Blg
	 R37NnhYto7sjgH1ahbjEgOZQZibWwh/mbUsa85LnOSMvnvusiE42KOsKe9M5RgFEyP
	 SBYcQaSEHd7laQdMlwhCa6NF5rARDxsXHs7yZME+spkUmkIy3/crMwyMYPHBwHCrVE
	 pUTDVoWpz70iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1E3D2E9D1
	for <ddprobe@lists.linux.dev>; Mon, 11 Nov 2024 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173131955357.23078.8250355335308408962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dae0d9b52465c75ffea16e6d6d0580d9ac6ef4ebad35ca07d3f28e1e24cc9300
Date: Mon, 11 Nov 2024 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731319553
