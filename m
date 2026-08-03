Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 709AE126C17
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 05:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785733234; cv=none; b=WGtS2q5wxZpZfS0G4OTzLXjv8A93rfXmTB6XifagddMceqH7cHPVqU/TN6Os/EQzMAZSatKvbEknxCYTYLn0QgGMuIyG/unjSNFtOhbZWN8xeYYXNteCnjwpAc9iHbMBYGkl9BGltbPajHhD9p19XGlw2GAhovBg8DDe0KIi4MI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785733234; c=relaxed/simple;
	bh=qmHfD3OejBk3pTHb5c2vWFDqHnobHY1uc9Yl97grXlI=;
	h=To:Subject:From:Message-Id:Date; b=K67cssWSUFOs9YLIkZZy5HKLiYp1gYBOGuM5U0lRJD/v6j2awDddLfzqutsG/jRzJtnYk1bmEntqzgNz2FJcakv75WQe9S18rZ+CWzydc3hdg0YXd0razPDKg228/tYB6LyoKWsIldk0N0u46jprOg8fh1Zz4WNdHhvENd57pd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LWGzQ0SW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LWGzQ0SW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E66FDC2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785733233;
	bh=qmHfD3OejBk3pTHb5c2vWFDqHnobHY1uc9Yl97grXlI=;
	h=To:Subject:From:Date:From;
	b=LWGzQ0SWfQ451wJI1Wfcxd6aqnTGnSYIK5PiIpoGmCRAkHTP1wjhGnSLqRBgLKRpw
	 1nLNV5rYOhDdiL8QH1EvVfXRPQkI8JHNMbcNjJJlV3IRZTTiVzzVqFCdPDwp521xvu
	 cz90w6WsVW+kKp5fC9NR0lPXUq8e4WweDzCwdh/UdG7h+hU+RZ+C05K6eTna8tjQSa
	 ydlb1y24FyICbxOw9294muP4MXuo04Qadv+EWSgntfZ2j1TYDafp5RWxura5aeGAMt
	 AOwulfwl3pgF37ASwxHoxvgWrbk2Vsl9P8DN55AN3Qc+fJsUmGyTzw4LRSKHRzzuAp
	 jr4eBrLT6av2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7F67C5516F
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178573323370.22375.8383149749665576348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 808c6ea1c3086eeafc5fc50a5a6263d79f232c1be8c0c225d99f0dcc67a4ab59
Date: Mon, 03 Aug 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785733233
