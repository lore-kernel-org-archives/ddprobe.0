Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EA862DECA3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 22:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788646234; cv=none; b=kx/6WurCyIPfO7kqwME4DXIWXdT7QwcGBqewJ+CywanZJO3sU11iy2zmpVhly/2cfxyukNRfAsv9nFGzGti3nD/z5oTo5c/BsGlBx1IsAC+gn86ABC29hwHh4DtuB1QWPp8anrSEuHpfIrBhLBn0cCAag+C3C1QwV0jwUxJvye4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788646234; c=relaxed/simple;
	bh=x95AMwOjp5E2+jwcTPJMpeAo9SsMDJD8NkaxdebQAGw=;
	h=To:Subject:From:Message-Id:Date; b=SPS6fEoHSxtGrLiXGo9Zjo7hOtrE8QbFsuKFOSDAOAa70vCY7XG2JvDLaEPmgFqPOhh4teAXgT+obqC7CXmNzXbFXC2o9u80uJqTUsB4DBh/LvtRwiaSmMWreqJ01zd7/pSht1UuHP0evHQX8AASMRmKc6DRq7Rkt3MPYfTgcH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ftr6/ND9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ftr6/ND9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3E83C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788646233;
	bh=x95AMwOjp5E2+jwcTPJMpeAo9SsMDJD8NkaxdebQAGw=;
	h=To:Subject:From:Date:From;
	b=Ftr6/ND9VIgHpjOUGBPatKUTwao0cDbXJBdUl+urLUEqqIRv+f0fi+hBQgxdCbhlV
	 8SBmw09q/eT9V0BskJzZfmjXR/JvvBqVd/0F2+TngekyE51GuMih5JfFP+gF6NfVbg
	 KrszhntM0iz9L5Yf3Ef3VfGV9Ipm/NEy4Tk6IDBB8WqQJzS/PDJWsg/V4nJDeZyWhg
	 OT5iR1OrOWCV9fMvoQdq2WGVlLkaDCdNFZzgHqW6UvUw3tPvED9pNYfFVGECwz1GiA
	 St0ycaAMJnyl9YWTgn+fVRpu0ivQNrITs818aot3qSUU1WM8pDW1sSc1gMouKMtqYI
	 pSEVcN6NjXIWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE088C624DB
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178864623369.4834.6408783847298098448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2fff623e987e3f6e6ea954ee1caf82c9df53feeefc2b8ebdc1531b1c6d9dfb1
Date: Sat, 05 Sep 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788646233
