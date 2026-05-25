Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 206ED3F58CE
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 16:22:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779726154; cv=none; b=a9WhLaiM/yHGQF1FlU/I2jH8BzUb/3SwxHSwg4sTJuDkCB0qjrcHxs4XJEtmcVVZYvZvMblUv6U2zEF96qm0za8YJzB+Ror/0pfhNUTckimuwD+pAj1CBl4p5LgEGTxQhbLf9UjDfpwECKZXbUHi/QtpuJw15zgGWNguo//eChU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779726154; c=relaxed/simple;
	bh=5MKHxsnCYo+uKgYeEPmL3KsS75UujpnW56EAeYCNV4A=;
	h=To:Subject:From:Message-Id:Date; b=iiOuKLGE7ysn+rMW8eVoSo9O+tJGZS456kVwKOUhYiHEhC2vwh5yZjT7fyYU04ulf/EGLXPgPdSsZrcRoozQGk12A4gvlgtuXWjr9K0Y9ojG+Xectv2RiYkqy7kLtV7iRWgw7DN3creJjm1xFwleppnT/MtG4pv+OhWjVLO4UPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ww+YzWzC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ww+YzWzC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C87B1C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 16:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779726153;
	bh=5MKHxsnCYo+uKgYeEPmL3KsS75UujpnW56EAeYCNV4A=;
	h=To:Subject:From:Date:From;
	b=Ww+YzWzC4QDgUwVM3CWAbPk+/nsAcJfWccVhix02TFs2ET52pAVL4j6y7ro7z8eDf
	 sTKUBoE/k+jPiPTtvLoXoZS2DXadpD9fVxwUDgLEZNEUvtDBNTfFdWYD77y1H/QvOq
	 ojvGiT4B9gl8vGG2aee1IUEdV3OFrz9HCXuhv184n2qh41893Y4juO5Q0uphstodKp
	 zaJkWWzCeq3VzPZXl3vBg/xM2la2h/nZcnnP/9x9b3L0sY1hyw2vnUFKFJ0awwnUxs
	 DoO4uC+1lp+Df6h+PkHqoFiVgEwOWSaPH6tahMp0to8065s4yZK4pioMW1FXEcjhne
	 BzYml64Z/bbeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A979ACD5BB1
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 16:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177972615368.27975.17250733216460778693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f302ec05a60432deb92ae3c4503066a760fd77304d6e8aae4b8a001d91d45a8
Date: Mon, 25 May 2026 16:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779726153
