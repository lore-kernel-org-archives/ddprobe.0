Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 269AE433B3
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745905194; cv=none; b=o+g6B/X3WpbcH76blB0URMUtDG2YliLRvnRcv3H5DizE0Vn6ewY6eB1+FSuNYjG4nUoncItvrNS1tCV1Tm4KQBrOg8rbZNxTjwF9y7TD+skqA6XJa056RQMByEUesRRA2kk1MzX24qg9KwUeG7Rwt/lueGNYUZ1vGDM2e1cVlIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745905194; c=relaxed/simple;
	bh=e/Uk2uxc/d+/bzqy0WdpwB9tiqFXeOeAQVfu0uIW/DQ=;
	h=To:Subject:From:Message-Id:Date; b=phiXqDEkjKCiEdbLdWxWJOk6tz4i7YHgnR9rUTIOtuqpk0vT1LKJJsvn1BUGQcRbr00joZKphKjrm9jMrC0fCpY4nK62UwTcIpv1V2rVu+3armHMnGnSDjMHIHQU5JhqyuerxLyUQTLl+UxylZB5HUuyPTcysz4en6GBNwgcxOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sWMyPEiR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sWMyPEiR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FDE1C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745905193;
	bh=e/Uk2uxc/d+/bzqy0WdpwB9tiqFXeOeAQVfu0uIW/DQ=;
	h=To:Subject:From:Date:From;
	b=sWMyPEiRO1wktHM0K0fDLQreXe6DKo6gn5JX9RfnZfYn3AIZSwGlqiPgslXlqncmJ
	 G0mllTzNrI7M2gL3nd0TQTlsMIJwyJCDa70yYAnGwdsTypIOX0xA8oA5zEwhreAOSS
	 h9N9t7o/n9LAeDv0nniLfXzW9ylJgguFYG0r61hqnsEgMM0vHsw7cxGrAhhYsHZKqf
	 j2QggtUXs6B3uQflJCiT9zYOU8DBnotFOI1h0epWWi3GFxIIqo+WqCLnQFfJauVM9N
	 ltRIrXrc0nkphc+/YM74e3T+WuDzEDsCENlH7DP5A76icNzOpcV2Ec0/KsSZnLx0zZ
	 xuzFyqUszmHfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9B1C369CB
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174590519357.25200.16940385551194242257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebd799812538dff8774f3b20ed0f930326b78d85458eac8c8d13bcc089924a85
Date: Tue, 29 Apr 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745905193
