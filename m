Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06627373BE8
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 03:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773286494; cv=none; b=k/GnVa46UIypGFJXDi5l6VEHtP8LvqhMBARaKlvxdVEnpUe7a6DjeBwWg8OZ857M/AM0Lxrd2TPNbnndDDlZFRlYQ4+axyWXfQxOPmGEj1nQqYh4u7J37z13KIUXkyzWEp2GLVvBwo1ii6fPk9JaVJOlfUOA+6RpqWBImpCJfUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773286494; c=relaxed/simple;
	bh=NiqV10P60ILdtO3K2JJOzH0bMB9mDGe0Ps4DSkpNEYA=;
	h=To:Subject:From:Message-Id:Date; b=e+5aqqaHRC1kEuwJ8Oq3yrTmiGuBQPOgWDpKIID8vLk72V/7C98cUIDcW88UD7XMPSn1jz2PE4GLhwbu34d41zfm2fFJnhjFlzNRjCvIkaN2Gkf+pd/kCW57mq2ZUS/W35NlxE6fdHn60JBAZhyUrsfY2asG0Ef7Mvy58z6KGUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f15MqSR+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f15MqSR+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3505C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 03:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773286493;
	bh=NiqV10P60ILdtO3K2JJOzH0bMB9mDGe0Ps4DSkpNEYA=;
	h=To:Subject:From:Date:From;
	b=f15MqSR+ZqonZ2qcv2XgzaIcy3ekxsbhfw01a9eo8ifREZLxEz67U0vcvAhliCiiV
	 KKC2pYm4YoidF0EZNmWI8UxxPjSXtDnLZv60DhbeweAfSqpdxkHN0DvRlT0Oz9alfP
	 Ffc7qg/wrHobK+zoqQRy8ET2bOCSDVOfCjeDw+h3mSPpPI8TSvpdYyK7KNdKV1jZtl
	 8Ozrf1ZGGf8X5HTrkRjq1Qgq2RXqGbrHFKv40est/oL3fzcRWzpexOv5kiilNOV8ju
	 ES/PA19UEVVSAwp+cNKes5S/+p9SuZ1dAAaZo39K3ru4KlMCBmOSH9vMo7gc6UT+c4
	 /zZRP505NthPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BC7FED2C4
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 03:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177328649359.6421.11082801221212465179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0067053bcc76874c5ef2de1563b20bba0fb8e90653d590fc6dab5692e3a31d8
Date: Thu, 12 Mar 2026 03:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773286493
