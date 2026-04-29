Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13E303328FC
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 14:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777472854; cv=none; b=ds5/7DaXAd/a5WNS4Hhp+Dk+teC5NsfTJJh/+tkskmQAXiG4A4toeM4Md4BAliU1I6Hv6YXL6CxvQ9HaZjOoPOt9Y1psvsK6eZzSKX37AwhylbeCnfuxs4Vnh4PDgjJ2111eTkbKeGkTf6kP3rGTw4znhLD7CMWzPyu5rOJRaoI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777472854; c=relaxed/simple;
	bh=MkRjvUhc2Dn4A8iIV15GtQaB1kJhXiAe4OvPybhJtx8=;
	h=To:Subject:From:Message-Id:Date; b=AxIB/LgjiE5BOYIRmRCwjU2DyliyeC8coLiYESSQuV4TfVs7Bq8T95qQ1aAhg0bdYoqFlHQphit2bk2/+kGPztsxQpvZDXuzdB/go1f1ZruyN/G464iSpTBtkkv1fT2UAAw2zpWhTTVdw7v3xV4q/j+2klMm78z4gdimTQhcSj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qb3nBpdf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qb3nBpdf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0388C19425
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 14:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777472853;
	bh=MkRjvUhc2Dn4A8iIV15GtQaB1kJhXiAe4OvPybhJtx8=;
	h=To:Subject:From:Date:From;
	b=qb3nBpdf+kebfR+MW1U7RCEwuV7J229aSPTYaVWi2WjcZCanxTYS5dKRABedCIkFt
	 aZkGYPSJXOVJ8cIjF4NWSnIEKuLblqV2s9LQytY/Cr0BwV2gFn/EvvlVPKe8lggkKu
	 HolUcE095GHlFE375vMfK8Z4LtXexpVu7tXIIRQnoNOB/J1MQy7c8+7S8AbDTmT4Ss
	 /x5RLhY3XGk7DgEgHUklyBlKJug96e/K384sPFtfrSaZo4w5vnEJU0je9mgZT579Sf
	 4WKlaKepEmFXSqWsCb105l9IGOqRfaoLZuJlmSlWDCVnV26OrOsoKG2Ihu6NZGZWvU
	 OJuvEkitkMrhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1F1FF8867
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 14:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177747285368.6238.3318325400072957764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e60cfd4635e6f7a79231733408d3901197bd2ffe897bd74d8edf1922127d98c
Date: Wed, 29 Apr 2026 14:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777472853
