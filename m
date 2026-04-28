Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2080B3BC68A
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 07:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777360654; cv=none; b=NYFY/hElDvtvd50eF6Uhf0gk4fET8JBb9J7A5QEbydRwySDV5MBA7QpiFHfLgRBdcizl9B+BwPq/hLvrT3Me37bYwFD8L6teHsEpJa2a+xl8Df69+bXUN0YcC3KflXKvphgPuR75gTvO8z2yM1HKcFB4/hupiR0rxdqjzp+aWvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777360654; c=relaxed/simple;
	bh=+3I78fKRZzuOBBqYXCSbOCKTWn4hF6cxaJocFLH4uDE=;
	h=To:Subject:From:Message-Id:Date; b=aKkvseKZ5RUcFxt06xlfFU13S8INn9xzRiYHK7hxG0BZq09SwORFjCZ/hg3UORFLGxJpZxu2sddZ8Sw7SR5FQ3p9ezH7OGyP3O6EoPRLMcgIcEzcYSEwapHk+KsNwa6BfKjAo2A0nlHNMuscloI5fdneHlCox0+hGfA0lbMRnzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ITuPOarj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ITuPOarj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8CE6C2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 07:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777360653;
	bh=+3I78fKRZzuOBBqYXCSbOCKTWn4hF6cxaJocFLH4uDE=;
	h=To:Subject:From:Date:From;
	b=ITuPOarjM8CFZrGf5ziQKrK5WSWjrxL7W2z0N2fTvRtmwvy+XvqXkxp2CnTltGT4U
	 gAbNzOzktVXiOUCV1uK182eXw3eKfuQeggEUREkl+sSA027KC3bxCA5HV9FNb6ovWl
	 70n0mMY7pRMl1m6RzAHAXl44iLO0jtWL6iJmhsu0DQa4pm+Z6aYP/bQfkPuPjoddCr
	 Zulw+LqqT7csjW9nsJ58POatCbcTQOd7fDgoKdPKM3ONSPbA2+tpfZ22u6HLtPmlwX
	 w2GepbYc7DKTKPJEruJFUepTwU3ff2A3BJroTUJUjIWSOfRkmf8JNafgNksY4Oh631
	 nyyPJXD/OWPcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA401FF885A
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 07:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177736065368.31037.17096449973931390097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4c46cc18b848d106d1f2f3b4054bd2094186af63b5a13f45b389ef7b6676f11
Date: Tue, 28 Apr 2026 07:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777360653
