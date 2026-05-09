Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A3612A1CF
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 00:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778287054; cv=none; b=h3DPXLCihcxpAriIpfACwBG4+JrWhCkbwcAfxXM0cjs1aj54KOG591a/iJsKA3yeVsD4XSLJEmZM84b3jTxwGBOl+qSEkV7NxJeRNCTuNtu0lwR8Aw9pUnpt2X9l8hkTpte40hwkZL0fQoxaaJvwvUz25UODaFHLg34H4gtCfO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778287054; c=relaxed/simple;
	bh=o+/96YqipNoZpn+wkPQnML2MLBGOOZ7EJZKRM/6xnEc=;
	h=To:Subject:From:Message-Id:Date; b=XQO6xFauwD9SqeojDMhKo7Pm+x9tldRx/DBlqrIvu5pKP+XMok94xSdu4j678XzT7ay2S1nzbtaSt6bOdiSAtDewcDo90D8XuJKYuJnk4J7VjFqxJNAwVadN4uKXR1UqE0NcHthAcN2ND8vNDmIG7WHlhF4GzYR44+XWINQH9Nw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pCGjUI4i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pCGjUI4i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B993AC2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 00:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778287053;
	bh=o+/96YqipNoZpn+wkPQnML2MLBGOOZ7EJZKRM/6xnEc=;
	h=To:Subject:From:Date:From;
	b=pCGjUI4ir1fkxrLX+7QGNzE3k2EvWCHf2CEVA4MKYc0KuhYq3xMG5JvBgGZQhX8Rp
	 76857X0CLVHdSPA7piLw2r2pFNQBH4W7zZz6oWC6BzXoBuTmepCpbQg1WwyFWzgSeC
	 CTR2289QHZingM79VPvWi/j4sdfAAuZi3f0Sv5g6e2nBzj73oqIMNL8TINuMf8mP9R
	 tXA5a2xb/cxGFk1Yn0RY1exlaYBnSLsDy40VqYnNIjvj4tLiNO9vym05LzvfzUn1ya
	 WjeJrs/ipLRAjc6esBnlp8TrarbakL2m/DpFhF06RwWAKh58Zttplx8WxAwHrtJFrD
	 8/9k6MbHaBpnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2A6CD37AC
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 00:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177828705369.20634.14470066463056746702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6024a6eae55ab548b09be5b644d1e3d4c96745367349296f92df73cd00708845
Date: Sat, 09 May 2026 00:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778287053
