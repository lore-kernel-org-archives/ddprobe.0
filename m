Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C373B306B2B
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757084393; cv=none; b=N0ZM8vvWYFjxNyFIB2NHc7Ir4fClrlfpM4kazpXptzPUoQH/aVqPYGRhD5vMk/54wMAP5zw6PQFxQnvBcYvBGkbx4XhWG5xUJQHXG/KsOzCDFWXQnzFn9Ce9i61M5CLB56ndSEo9R423gajh6TCOEOsZGFj8R4IDjeVBzFqWS7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757084393; c=relaxed/simple;
	bh=qfZ3NEsk8koEKTmCLBiZdIw+XFR1T8fcEm1l1KbdYts=;
	h=To:Subject:From:Message-Id:Date; b=M4S1XQf/OdgNRNUjnXosEESeflJ0fMS/IhUoHmXtoIudXnP0jjMqYkeLHAYOcszzvZuLBzfDunD25JZuUj3G/vEJjlemRMfrJej5GTpgx74cALP135o8SemMGLuLksT/5xxBTaCd7442H1/PhJ0MrAf6yxKuLN5fIbvhRVnS6RM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qXNxPVxs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qXNxPVxs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FD9C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757084393;
	bh=qfZ3NEsk8koEKTmCLBiZdIw+XFR1T8fcEm1l1KbdYts=;
	h=To:Subject:From:Date:From;
	b=qXNxPVxs2RM8hQgxUQJCawfEHzTLN+XolkypYVNVlEW+JwDSXEiZtEdz5uE4Elfod
	 VF7dORfJH5gdBMOK6aErwUpLprDXwpkTHktkyLhWQIuA4pYJU75L0VDWQU2D/mDZUA
	 vbDwtpbeyr4NaNSjYtYIQ9A97x3PL7H0+3jg5y9P+6qqf9JTzMg+DcjF10WoxIYkND
	 xv7wYrBNVygAKBxkABOkPbBv+NAQC6pqcWYSZgy+LYM9f7iuzKEpzavFILO/vMarMQ
	 ow64nwcSu9MpUBAROgz3WlZqMwMXm0hukVJJfbAkTwK2xynedPpixxWFS/CUf+Akvg
	 47msxvCfkRjDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90336CA0FED
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175708439358.20427.3814323774608319899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 481a1f99fa1fcd2295091e0561c735fca7369e84b29fe9aad75183bc05a5c83c
Date: Fri, 05 Sep 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757084393
