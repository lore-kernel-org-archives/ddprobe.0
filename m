Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C505224891
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 18:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767293634; cv=none; b=doEGyR1VrYPQpXdbRP2oXx0z2TJTu5jqvZJHwi4V9gzM/0dSKbZWcw5wIu9E0grf+0ntJYfr9C2RCRWonjhnXqpXMCO2U8jwWEKlhnY3uJmOBrabPgZZpKhzIZAnOEXWYd1ZTVEMB+J4pDNkKkH2q/zLOFv+eIpnwQxRvlkycUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767293634; c=relaxed/simple;
	bh=jg5SvF/9HotvG+HJNvajhA8+QAcTBebjwyLb3+t3Q2o=;
	h=To:Subject:From:Message-Id:Date; b=Te9ALvaRh5UHhSRSLAhTUQV0sDuRsjFEeL4rsneyNCiNpA9atgzBvYuEmBqyPk/7zHM9KVxkn663nImmktR6p/cq1PHPtQr54D1pmOnMOUYitskTwHYc0qSxxA5MTP6DDzYnMyNHEpRn82vHfYrvR7/Tz1HHSuINNWm9MSfcgSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VHaukVVv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VHaukVVv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE0EC116B1
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 18:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767293633;
	bh=jg5SvF/9HotvG+HJNvajhA8+QAcTBebjwyLb3+t3Q2o=;
	h=To:Subject:From:Date:From;
	b=VHaukVVvHwWtMVSXnTNJqHJ8csC8O+WBlf35tyDSXuE4zV7Eud0lPQH0yz8WMoic5
	 c6dLs0ZGldrvjkaoxHTgINQYIgN6jiQckhLKGzzbnYDQxfKFQnW2Z9yBspwojR5HrO
	 EpeXdTZtuZT8vQjsKqf7NwXkhftMYvc82RpXWQI4DHmlVFD5941bKu3lsgkJRVDV4X
	 Ba9aGVofvLqGVsF4TvpCIzRF6gxhN6e0JHJOGtXeOOGVs2WkqJWzbEIDtlvdCgnzM1
	 5zczg2D1l9L8+utOrRliFt8xzYphPevIaND7q9PQHYxde36/QsnUIBTIiq01r9MsE/
	 xWBf3lJpmWOng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E942EEE24B
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 18:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176729363357.30875.1319613606859404219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 620b8618ad31ca7850115cdd13ff1a13ba3a2ebec25b557ab3c7793c7dcfe606
Date: Thu, 01 Jan 2026 18:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767293633
