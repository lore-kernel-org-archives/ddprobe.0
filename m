Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42389F9DA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750352994; cv=none; b=tjzKutFuK8I8Miy6bHaBWTXzyhR/5W1aD8Q+EkecPXn03NFxPR+SrlxyNHsnfpZrzWZOxa+7Fiw7Y+mTYlUs1kqhndJBxLzUw/TjgDPI63xipIwYllaxpa0BKjKr/ugDvgCZAq8SzYAI9gufrmlNBGU90P5BY74CXpS8W5u2mCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750352994; c=relaxed/simple;
	bh=/XRJoTcz2ZY7XnDtYgrC4paVrxN0/kc9/s0hdNadkrY=;
	h=To:Subject:From:Message-Id:Date; b=gHQDPewNLSER2jsFCUlRMwW+zBriFG2Id8/60Hq8c3RcZUPDOL4OrHdEbgj4H8VQtOfn8bl0wfy2l2UonDuxiyC+uq8CI8vbcgPEiqORMC1GluwpRocaZmeahWj4Kho3BEWQwzxL9Qv3kIw1Ig1h5X/HZKVR6OWXz/SNqlgixyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SuK3j8b2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SuK3j8b2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6820C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750352993;
	bh=/XRJoTcz2ZY7XnDtYgrC4paVrxN0/kc9/s0hdNadkrY=;
	h=To:Subject:From:Date:From;
	b=SuK3j8b2/QBqq+K2E+bVfJWHoztMW/ew0PpxuMq6lij788VJ35XJqW92sRGr2d59t
	 MDnqkPkWeEYu58RncPJfwXdhofUQoGDQU1Nas4bt9LZdBnKp+lK92Daa4zQQoz0qFs
	 fB2ehqRnIOSLRGL5rbWupaAliGhrQl09hiakjQL0YbEZntUsyny3PVKxLca71/oq1n
	 NnJD3BeBTfB1oUyzApIRiT8WjR7zCiO9rXyINfPcmoqJxj9PBl/8A/OsDlWQzBRmdL
	 Hr0WLRqLSlAEUOX7Otj3s6ninWI1xHpcgj2Y1s9VdopzLqv/yK9bdLZdok7pNvy/sv
	 tFvLwNP4vBRTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DA2C7115A
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175035299358.13593.10047096246746046720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f0d90f2833f2b2586e0fdb5cb60e45dd1f6d549f0a0420a5c6e95cc58980641
Date: Thu, 19 Jun 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750352993
