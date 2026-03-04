Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07FF634E774
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 23:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772666094; cv=none; b=CHvwP5yfy91ONyFGwPVRuk/jAWaDdUykZbjJ3xD6ZeRyL6PQwrPZd88SitTqZx1WiqSNujSjYZGQLa8ruQBJTS7A5N0Zeco+Bb9Kwkfrswx92X26Lrssa0QZ1SAr8rQKsz0+q9bcF6V7lbsS/iDYyQOpWcK86j+edcmj8SE55C4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772666094; c=relaxed/simple;
	bh=BtAv6b0Daz5HYWu/jSFuel1eKj0zqX2zfP6SVkubE5o=;
	h=To:Subject:From:Message-Id:Date; b=fne8RGjq6gku4C2qwuni36Dca/g9kI11go4X9k7CO2ntgr2ewRJwU6fc39SOyTJ5Mi6+OIu/SmHgKymnm2KaN+mCsvJ2c9Jz+YXXnjJzDC/FXlc04sPNXGQq8oqhNnTv42M2SvBQFUTxhHzzjw+j6SOmPsKJm11uMRkgWzoZvDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kZI9Z5Tm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kZI9Z5Tm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10EFC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 23:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772666093;
	bh=BtAv6b0Daz5HYWu/jSFuel1eKj0zqX2zfP6SVkubE5o=;
	h=To:Subject:From:Date:From;
	b=kZI9Z5Tmo47vidu214aTC0BqlWEAQBeDCmmALJmfe9AP21v24yffsnogvgjfEhE91
	 B2v6vNX8LtjcAMF1kHfzLfdUW36nRrQECpHl5194c8NAKhUXZXikAe/Z/eNr3egtG/
	 IioZVTPJCVI77gv4dlaozswcrmrtI9NV8GKPdujqLBx6TK9rdcCbUHVLFUDlhTVGfb
	 4fD6i4jjBjwd8PLkJsgl6GwB740RlksDX1oqmaZaPoAGkRIqjyPW9kA9nV4H8PgmF3
	 Ce5d1k0pUogcfBJ5BS62BhFHM+Mghj8OvdFrylBXLwrtXOhKUY3VjW/bA8c1IU2zlc
	 kD/d6YaM4XMSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C5BEFCE53
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 23:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177266609358.16492.5151599419925965442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26bcbf83436b0ac2a24cbcd89a6368829ccd025f2d5bbd58ffab4beafeadee74
Date: Wed, 04 Mar 2026 23:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772666093
