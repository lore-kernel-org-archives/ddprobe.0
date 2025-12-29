Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 484DF63B9
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 08:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766995434; cv=none; b=dDSp/wNBrdDeMkINiyDH45PD8HE9nkureCTp8BvF0FGI2kqayzTnEp3qJO5ikvBWhZGkxK7UyeNVVWisvqVO1yIGxWSdyabx3rSLfC1o0QBce2f9u1J10c5sv6ptI5Gxo/x2PmrLmHtUVW3rGVj7CSApu93FeXWJ7mDu3XS5yQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766995434; c=relaxed/simple;
	bh=EADvMb++X3xE2ZyAYSVErRI8+I/Knyc3NQpiwDwGOPM=;
	h=To:Subject:From:Message-Id:Date; b=EHoIpyKIYhm/XElJqCJKVuDzSX08ipS1qtbTBdWqsMtLUL10clqbDpB8QWk60guM9gQLZ7RGc39gF1KPkB4dSNJmXXnJOYG+X0Mhnr1x9PCx8xA4bOJWqzcFzWIC81WH/vW/eXymZLsDf8PDdl2TMKMfaE45eGTlMZoHvvi8FF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i2iSa8sb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i2iSa8sb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0263C116B1
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 08:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766995433;
	bh=EADvMb++X3xE2ZyAYSVErRI8+I/Knyc3NQpiwDwGOPM=;
	h=To:Subject:From:Date:From;
	b=i2iSa8sbBcH1jGqo6xk9yOVUCyS86rSQycWEV8J/B/mQVGHF6wfEoKNy24vUekZMV
	 Ojpy6n5KGE9mQWxl5mNKrxXZ7vWAjdZ7ZVDRGOAN2KzzIl1p3Asgeo8EEXiM1U6Mlq
	 YY5VKfjRIosylXNzaSiywPf16iV6PPk7xqClg5s1sbxveuBA7aBiQ+bdb3BiQSv2nl
	 XLhGTWS0bEiDa1E1+kuISFSoSchTfV/Hc9UoxltGb2o89v8HtrJTtVSeKNF0HSGkWG
	 Ju+7Xf/vh75nUqShjoVYqXra72qljWD+hb1NHBxCJtrGDQoQn9h6Xt38nGG8RjB8Bv
	 5zmfP/LpQ8sSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAEB3E8FDB1
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 08:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176699543365.21740.1904913983779877920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92c46705733566eeb4c4f9b4a19c7a1e1bc15a03cb1e5ad8504eb743377f72fd
Date: Mon, 29 Dec 2025 08:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766995433
