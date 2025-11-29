Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35690145A05
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 05:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764395574; cv=none; b=bNmaeu642zFRhMQEZrs5Xtx9okAa5ZQ8VLUA3u/jj3RbI8cdyMMGKSiUileILsJ53r5NX57rIFRldUztQ1NI3A/Xiv4n8fBCLRsbNUrvRbAo16veIL9iwApprWdJ0PTAjeWf26IGeL7KkVpS1mUqnYA/9kVg/MyTTwfzloV3Xsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764395574; c=relaxed/simple;
	bh=56zCBNuoD4ceWNfEEUVZw7ZAm8mTeWLgYmPtUd90scQ=;
	h=To:Subject:From:Message-Id:Date; b=jOHogHTqu7GV9HIfu2OesAtMvHOm5ZzCk8ztkKOuYTgIUl5zjIAxZ89JW59nsrjXUTudtRMJSfZ8XYTNspOiibAgeCrS2txcLLL6DxPRecvH+0dO4H45Ygc9pgDVIUjE/PwTuaFOVEDnpDqpt5z2+vTHKrXAc2OLSoZHTlFHSzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BZHp9NT4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BZHp9NT4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A314CC116C6
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 05:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764395573;
	bh=56zCBNuoD4ceWNfEEUVZw7ZAm8mTeWLgYmPtUd90scQ=;
	h=To:Subject:From:Date:From;
	b=BZHp9NT40PSrfQ81IiuAN1F/ZY0J/Ida9hxdDFin+Bbr/e7qT81XEk08EUZNMfEx9
	 ApDNAbtHQyah1VXSj4H1MtpPKeVpuowCR9jXGILXGY7YO8mnZ+npquMoUInG85n5Td
	 ZRkmp+KXPCA15Rg+qmUqaAhzC4WrsZjGcFkNob6Zx8naF9QVQ76oWg9BEKS9syRlpO
	 6kOMJ49Ogd3fYaSk6qBwfxUq038QzlIuGVZw2xbOc1+uVNjR5yhVexvpO4IXtjs0rY
	 vFjWmvrcS83P+4ir6LnQ6Qg7xHRbkZ6r5n1tlQ/Bq9zGWC7bTflZwVDikEjBT0fsvb
	 tZrHWqLK9WOtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912FCD116EA
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 05:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176439557358.12305.8232475438225251622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b04130b351edd3f6370a6e3585ee4932f5617788fa7846d212e5027ed56e8ecc
Date: Sat, 29 Nov 2025 05:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764395573
