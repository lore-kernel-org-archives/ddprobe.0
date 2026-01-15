Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEDD1214A9B
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 18:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768503233; cv=none; b=iAv0IQzu+x4wK/JlKwu3eGaeU5cwI+Ny/Thw4RHvKI3QEB/FQyfctV2TPL87/xY/uyV+sQW7n2dznUE63arypLLUp50Xbl7ZPzM5HBS0xti5yFNzw0HSSXSzuL7FqfcYXxLX5bUTRsex94qvD5ADaxXiZkHeC6J2ifmvRlzzYms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768503233; c=relaxed/simple;
	bh=cJK9V73lONXfI939bHi+ix6zS251ObGRuGCMbX8BiQo=;
	h=To:Subject:From:Message-Id:Date; b=SPKrxJbffJEeo43u0NIC8OqBuIWPX1AsmK8PxudGjbaHQUPC3+VBWL33a03f4tWscqB2h8i+i3tZNHULCrEYLKWjySqmcr7x6lY2she62NWuSWLCboy/x4S7lMVZKJcy9Bm69jVMKvHcoqMtdJRps29RyncGhLj9JqB6V2MazKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AukFM70S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AukFM70S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BA1C116D0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 18:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768503233;
	bh=cJK9V73lONXfI939bHi+ix6zS251ObGRuGCMbX8BiQo=;
	h=To:Subject:From:Date:From;
	b=AukFM70SoWyqFUPPxJHBFjMHyzfMSUEIk05xaAUd54cpnoUQImV4sHXjS33PpTipf
	 X8zKFggg9rjSvYH2KoMNDNwLcZd5OYP8rj7+w/R7Y9YeI486GSJT2UlGIyhnAOnBNO
	 IF/ELN7xEzmLT+5agypqRxwx7FCzpR6kzuEa0/G0lkUp4Mp2FU8YxkCfIh5FxzzGi/
	 +iixlcDYSG2BfEIFMUBoqhpepi///yQOyfCt5ZxXbbrYG+u+mtwEUwbiqgkn2FDAq+
	 qQ5U1b7cKmK8ZDMcjzP6KGMQEf3DPdMufq4AfXPmERqbi442YSb0KFkY4gq03RkFtz
	 b1SLRFefSoHeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CCCD46604
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 18:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176850323357.18735.8365514271652594700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da8417a0067b0ce7331cb92ddca799d28899c70aa796e97e01c9535906252844
Date: Thu, 15 Jan 2026 18:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768503233
