Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 431101DE3B7
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755366596; cv=none; b=Ki6BCCFwdUMbK4ud1TpJz1LRTTBtb8QjxaDyf2Pu/AqmtOfljbSFfZ6dQzKHqIAQlIrj3/rVXJ9JsaeWT+vpqqqx495nJXF51B6yQpOD0KTGfeuOrvqwKrcni3Cz0oN/8xFgmjyBgYbYZIk4+dYKriD9HUhlkf/yEDtwJlOX2rE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755366596; c=relaxed/simple;
	bh=/C/FBTHwFV4fMCKesruBtrWee6+LJp3r9mpX0U9jWCc=;
	h=To:Subject:From:Message-Id:Date; b=WwOxuFdnerWYFvCISGsQ6lrGbOObl9zCprx35m5g6Gh3cz8sbckHctzny2HHQHYPtixd9n3YR8ccRIY6vBlz85VFbM46ou0WV9D8VuYcPIhyXAURvAfs6JtLm6pFQzD+gF6Qi2PpjODEiiHLEN1mqz5112bjwurXAAgEU61mDug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XP8lIx0d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XP8lIx0d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A612EC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755366593;
	bh=/C/FBTHwFV4fMCKesruBtrWee6+LJp3r9mpX0U9jWCc=;
	h=To:Subject:From:Date:From;
	b=XP8lIx0d48dj90AkbFamB6IIBLC+WvOwokHLPtuhX0jxXyqpO2dowu/6OSUsX9QJm
	 O2efqNqVB0fcZryixwz3vcTuT0p+NTL6YmJwWriT0zPfK1WftGZucNXVSHQbELgdVM
	 +V7BiLO/o2kdQd5v460i1pRCxnU59C4yMajehjnLyV2xss99BjIUw6B0fcp45HPM+Q
	 gouhpZJVekROuLa90kO9hHROCtSnjjLC50xS1CH05eFzx8f9SFU2qpyVJ431zmYJ/i
	 grpruiMzYdfCqopbl0jdr4ltLb75i7CWVdXyXsUhLbostskYlD7qPPmdDtgM02+ynL
	 bjGEa+VkmYWAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94864CA0EE9
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175536659357.3932.5470446490508854143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2acd24ddf27653f037455d448b41e9ca608756a2f4b05c9e0db724a7fb697ecf
Date: Sat, 16 Aug 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755366593
