Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8348C309F09
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 16:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784132314; cv=none; b=fVLZ5QMBhQkYZAu8vKZtijt8JGjxhFeiiYoMlSKpNEvxz35gDOOZd/T6k6ueG2bu8t4HTDcCaCXs5/ncA+bms3EGEOWl1ALW8dpsNKcSx9OK21RltoAS4GhyAhMKWHuHaNOTSNZB37cP6WLinaqV9oPXzs+cUk5Xv1A9BQpIxE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784132314; c=relaxed/simple;
	bh=UrQJ/nppAPWoZepLr5uh3tou3qEqUy+omNSPgyTtb30=;
	h=To:Subject:From:Message-Id:Date; b=l7PwqK7zdNjsfG+nqP1Ho1IP+mUcQ+Okbz1Z+8/wBRPPi3P1RSChYYcnSExz/0TdZ2ANaKjrsnTL1cckclK5LuuxZNEHN2oxdwlqleDca04SBLtqvzFMfAlKmJGh3B7RootjmIjDt9+k4aSh8T69hZ+uHb6/cfk750+Semf+c94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i06Dr1Z7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i06Dr1Z7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1E31C19425
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 16:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784132313;
	bh=UrQJ/nppAPWoZepLr5uh3tou3qEqUy+omNSPgyTtb30=;
	h=To:Subject:From:Date:From;
	b=i06Dr1Z7MqPfw2bHPwCdQOYA6wl89Bc8SZvzUTxCZNa9FGSCLzLDyE4vk8HEbxpyx
	 EPRsOdL3hyEgfT9IbH/XHCfYYepuCEnz6Qu5QxPlVM0QpgcLO8h0nsGo74y1jCArGO
	 D+A01NjCvjGXSNIYTHxTutq9SjQ74HDIfCX4Dz7U3gDHH10KoggqPJQu9JKm9EBxRw
	 Gr37avmyhnjM38UXD2P5OgGrxipyKLejpX2khMZwMTFqfGuZsYQoO04Q/g+Mpkx8Zy
	 D+IBO9BMBFJx4gkKYI0QyZ9Zj3ZflerbWgC98L5wzPAanZlTdecxn+oGh3pLlPfT+k
	 KYkpPjUfb02+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE6DC44508
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 16:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178413231369.6649.7554748773970506495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8745042905addd09dc9429cb0b59183b2c10a3e550bf9d0928a21447ae70366
Date: Wed, 15 Jul 2026 16:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784132313
