Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD5B838DF9
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 12:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767789833; cv=none; b=YE1RsE6K88tHU39te85X9j7SLUwoJr04dZewmQ0i73UFUO7biSeDXkDN11WKQyKawywGg+8QaxqVOLA67LWJ2o+mkQWDCYY/iAaMPt+GqHuCQHYSfN33y/RorEGz1HEd6NhJK3r96VgaqW0BDu1D9FGhWz3Pg1Ds44wvDpnhyKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767789833; c=relaxed/simple;
	bh=1F+cD2J2tlKw2gskMfDQhC9JZ+7tnf9Pvom19vRClTY=;
	h=To:Subject:From:Message-Id:Date; b=ou8AI5i6WoSjXVt2RMGVJQQt4oKo2Y+xW1Jf2xN1/+pwfNr+70SE+msOYgwutwJw0OLpr2LHGW3aJAPx6/TLzGcNn17b37zX5EsnmG/LXdjav7Oz3qg27bLX1ITc36DKR1mzxwCbTRmXJnyKpAdFuHCeOmHOgEZ8zCAE82UVilA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a0HzRc19; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a0HzRc19"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4554C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 12:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767789833;
	bh=1F+cD2J2tlKw2gskMfDQhC9JZ+7tnf9Pvom19vRClTY=;
	h=To:Subject:From:Date:From;
	b=a0HzRc19fxKuJOsng748r0+hdDUzPfXBMWwm9mV/nX/YaEy2tmdvtpgqUSg18eb7e
	 n9OJ9EEziJ1Kj1co/goFCvcxr2bQ2yE4iGSnmX7Z04j98g7stsgDnjDiR8DI505U10
	 mcF1rqUh+4wcZqt8hXhtNbco/In015ga/l0D0pTfVXYVVW1p6Qi8meYN0mXmNBwHcT
	 M2rAMbbpZVVfDhZ2QcjAxZSjbbw8iEgJ9hys8ogSlmhLiwt2AaAP/UvLK97b7Zepz8
	 jo/tqaXPPKRJo9xJDIW1YCpISMd6VaCz+jiTYL5ID+uMT7zbs4hJuU8zsUWc2ZXMGA
	 VKVfzHeyfe+5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916B6CFD621
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 12:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176778983357.19054.17085564034608622354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a1597ce7e7087b45cbb49e8d9e876889305996703ae56b297d4afb0262c62aa
Date: Wed, 07 Jan 2026 12:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767789833
