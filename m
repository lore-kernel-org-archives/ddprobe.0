Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B31F2877D2
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762493394; cv=none; b=SxcL1hJIfA5VeUP5LuNYLe/upTb827YBzz7JyQK1qKYa3Dd1HyLsx7Yosc8uNWoRT0/FxN8j5ch+PFoxZZPKikjlBfBytQqALpAEbMs850gH85FZ+28ClPAFk/DK12A2Cp0yqown3xW9+prKIOVuvScOFilTvG/X4SHm04zOSug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762493394; c=relaxed/simple;
	bh=zsDL6cWiEZ7+Kyp7pzuuNLcxxJqnsU+iVud3qHqgdGE=;
	h=To:Subject:From:Message-Id:Date; b=oV3YWfC4h4GHfq8hcYuT9NLcMhH2CSO/lE8zgI2trY494v+GYo19GCQyT8FfeMDhZhoIHmDuWyDotf7IY0nzVVVjXJnBMqjtAT5tlFaZPaWtQTh2hBu9AcRDZO258r0y/lDBcjAVVslmoBLnUlQjpPocNbw855wDKrwWrNx2nrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BqENMGew; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BqENMGew"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45A7C16AAE
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762493393;
	bh=zsDL6cWiEZ7+Kyp7pzuuNLcxxJqnsU+iVud3qHqgdGE=;
	h=To:Subject:From:Date:From;
	b=BqENMGewSP1KT/1oTlla9KbGVnAlON4cFnM3q6TXqNBPpWZJLnTtV9w3lMeX3Agwy
	 LI023BjB4Ob26jg15+puLJWUEOA7RjKmbe5740ej82Egv/f50oJw1q6ItO3YVMBiiM
	 S2qVZFbdG9K4HHFupw1G5Xg/jQdzaiCY0XklzgMuTaZWMXYSnzUM2sezISi8/1q2qG
	 W6I7ETq0aeVRx6t/t6pwOnXNwEcluG9zcED4QKwFgE593Od04JxGFDOEQXUsuPrQ0N
	 g9usyzN0mqEJW1XG71PPNpNyv2TtX/sIjrBcJW7go6tzfYPwWKMlSBBSVja1r8T/QW
	 +tpjmJgi781Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92163CCFA05
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176249339359.7476.18403673286423580854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f13a7ad11b9dd01af100f2dc6016c6da09af96f4f386ac0941ee475f5e28096
Date: Fri, 07 Nov 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762493393
