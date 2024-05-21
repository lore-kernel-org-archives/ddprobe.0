Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A4FE1FBB
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 15:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716306803; cv=none; b=R6DfahbOYsiukbJHPk3HUvkI0px0dTyW6cn1ZC6QNkB+X9VmXdU4C4CcJCYBN8pHhW90bj/BABni4Q3+FfJSW26mNTTSw9eVai+ur1wLUp9FfeXykRkNSkgZA2m0DjVHqSHLNHEGm6l6xKi3hJ3sqb6jyC36wls+x2zd4JI8Cys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716306803; c=relaxed/simple;
	bh=yoT367Blbm5hoi3j8iIpqK/oDsN0wJIvfV4WfMndg9U=;
	h=To:Subject:From:Message-Id:Date; b=Z9cdYcdZhw0XvkiLOY9OZB2Fl6H5fyEVObeWS9JPpZIIw780Dl5NYdD3LvaEDz7JVkQGfgjLOTnMFWfdsAD3yTbuTlDaD67lNjbF75IeFNWhaFJRTdG+yZ8Do6QmSZIsXKzQ5GAAUbAq2N3LkYx9mdSD8xfKcCSc/T/31OfupZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gpGrhmiz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gpGrhmiz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5291C32789
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 15:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716306802;
	bh=yoT367Blbm5hoi3j8iIpqK/oDsN0wJIvfV4WfMndg9U=;
	h=To:Subject:From:Date:From;
	b=gpGrhmizC2a9EGNMMYybciMEo3NLRbXGUlbs6ub+zup5mtyVq6viHH9Qd6cZkqNDb
	 i5vjPllc9qJ7CwZNQb7AqEikFY5XBoChueY226U5UGR/0pa/HMOLlVeMlEj66FgMUd
	 1SkkfJ7vxAM/MEJ6Tztf0j+qsYAKnN1eZMkc/eGXYp6QXXf7qxcX07zWXseknnbWXY
	 OoxEGe96LIc1Dv6bDarm2a1V0V7xROmGKVGpLj7wwNP8aZMfG5KzBuWn75uXc4ERGl
	 pBuh5xYQXlYG5XnkmJCh7kNrhCHujCwwPdRK+AUqo8zOGLE6QwqgpfIfvpMyvxXa3B
	 FUX3IqIr7er6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF4E5C25B74
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 15:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171630680283.18833.6697434099484702667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d346ad1f2695a31ecc119f6dea4f34d75504026361aa692c5b1165cdfec4e3e0
Date: Tue, 21 May 2024 15:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716306802
