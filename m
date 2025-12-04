Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1235E260566
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 23:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764889974; cv=none; b=MqFlgYO721rDTZdEXHsC5m8KFvraAd2WIeO0O7O7BR2z5ntwY0/V8EXaPCS1dDvrTQ553Ad31wDO8MdSH0JFsdImsuYU8JDq/SV/mmaPq8pPbHjyJX5yB0z4zz7tJ2trY0T7qmLk/Kax6jFkYvQsBZRLE7k/gVkwLDg0zxCiYHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764889974; c=relaxed/simple;
	bh=cFkFAw4MpocbZXdCtPJMKMUPY+B5CtZyHWpgd8cobGE=;
	h=To:Subject:From:Message-Id:Date; b=es0x4s3CXAzbkzgUSslndqlL3ZZVkXSO72DOivjj+ug9wJOgxoAwap0iR3gSlQuEmv7Q+sTZu6fqWgh6vI0VW3F+yoT7sZnVaToSMwUeeJ2qQLpz5HAkMH3PY4vb0LBUG1UzsACaWxilt/sk8iDmnZUdJnmyrAfyIeMFtJ8EhvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IS5Oyuxn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IS5Oyuxn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1AECC4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 23:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764889973;
	bh=cFkFAw4MpocbZXdCtPJMKMUPY+B5CtZyHWpgd8cobGE=;
	h=To:Subject:From:Date:From;
	b=IS5Oyuxn1aB3Qs3LKLzgucNO012VACwSPeERQNjaYSUUaJkEL4Y8r+I/bAXOvgBPP
	 yw/x+6Jfmj0/QTh80ojNnZBhs1nkvzrEMR6t75wzb1/XdIcYUOSFEhAPFUdQnzqMxO
	 f4ueapk4hJX+F94yayCEcx6eNYakBCgKuBpcdB/1pdiI7c1tybcIB5iXHN82CWfEHz
	 niDk1B2aFBA9F7V2glq1Fb0rIZoLGQUluyq3iMK4z59BtRN2wndmxI7P+HzVSe/3lw
	 b+YMK9QgpyjuWzOSaxBdNANTjAx3jn56Kq10ILNYKlvKUjvzLl1rov6vfRsI6CM0oT
	 B3pA0RhzYy9Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902CAD2CDE6
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 23:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176488997358.20171.2708982353705793977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31a19c3dcef60a5a21deb8c4eb6e07d73baf153ce4caf94437a1b4dc9351a0f1
Date: Thu, 04 Dec 2025 23:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764889973
