Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38AEF470EAD
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 17:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789924234; cv=none; b=lHTFmQ9nfQ0PETSX5GRM7sQtUOG/d9gA0glMGkjd5HiRQUGE5e/RaYyNDqU5X63fA+CFc5TDEb1Uumh4ZAuwgkc6DjoEzo5jxJSVtJy86jnm13QhZoDrz4VtSp5t0iSxY2TPzaWWdMTgkfGUBt86XX/158h9Ng2swSg7KvzlhZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789924234; c=relaxed/simple;
	bh=EEQWz2wjb8QhO1V7bpuAljzTuQLUKhB/LQiPREJnC4c=;
	h=To:Subject:From:Message-Id:Date; b=HadxgPqnugmHdqCP1jqZhh52gJvpSxlfOP9eRbGyAX96k7lflhMGBBRK3o5ar5QB6EsXpuj4jajTeMzWiOsn5cQzLOT605Q/AbPbiMHviBclUYAvEm7DuWvX6Y8i4NJCm5sd9grCIujP0G68BQGp9UvLuJD4Tw936xWajYP6+24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KnWbR84Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KnWbR84Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF8BEC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789924233;
	bh=EEQWz2wjb8QhO1V7bpuAljzTuQLUKhB/LQiPREJnC4c=;
	h=To:Subject:From:Date:From;
	b=KnWbR84QYJnYPe0V+tqYnYI5lpJ2bjUqYYyjpV2gQTysVJ+oDr5ypwY1Wt+HrUPnD
	 mwXQdQNipmkKyPRz3oifmxqXvYQc4o8o/83Q25+3dhsuqWLo/1GzDQRRMVQDTpm2Qj
	 FJPsLLJnsy5H/dG0uEbfU+9eO5Sylk8ZFgbWbA6ZgqUiQ8bRa3ppoafaUI85GQ2JxD
	 zJXfFhezsWEz5LXH4eBfIx87qf+8WTfHR8ukWr+dbDes02HniUPcrMmCPHWJ5qwgtO
	 SyPzAELZK4NlozdUAXdGfDzZnnLtz8eDTfUj8QGWLt5rhtbdMYQBCQZ/S1MEEWFr0x
	 SK1QUrxrBNASg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE1BC982DA
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178992423369.20057.12852413788968097086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 799925be2c9b2be8cdfbaf5f831d1a8fca9cfd5d1bd246feac17a8aa7b496442
Date: Sun, 20 Sep 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789924233
