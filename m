Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1776175A8B
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 21:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773696894; cv=none; b=Q94UKBtJAPaLM+l359MPbEuTTkDOkRMTln9P1VbZiiUrwp1I2SOZPh8LKoBAjt8KU/IIQKOJcgk2EF9Hmka+trvwBIxikw5H2B2ksbGy8QU/56NnNFzRJdjJbsz49zlLbfBrL9djLT9qHnbilI7G7f0bODbgBBQDcSzup5JJgMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773696894; c=relaxed/simple;
	bh=8LHSMQPhImjs7TuIZE7bKwGgYgYXp6ep0UMOhMKN6IQ=;
	h=To:Subject:From:Message-Id:Date; b=k2k2Vhp/ziV2iPs6hR6iXHOM4y/ydOuWbwalUyLq3lhPU5AC2MG0k2YrTjMNfUyujlHzZoulyBXdsxpxzR6mF6SyNfPgYs5ZX7OgJ0cDv0m/tnsXcqsOc+9LYkThlXa9lQ15venqhCAYKW1hpWL3edUGTE9VWXaXFYCQjuatOfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hMpdwWIa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hMpdwWIa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E479C19421
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 21:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773696893;
	bh=8LHSMQPhImjs7TuIZE7bKwGgYgYXp6ep0UMOhMKN6IQ=;
	h=To:Subject:From:Date:From;
	b=hMpdwWIahsUSHZoY6kWmgjgkzFA6LLg+OIW/rzmpqU5Jaoma41lQg9Wi1bXJohFVe
	 Y/uKU2u+/uEl7RY/am6v2UOiRaAWaHViTh0++Flz01PYIkNSM+p5tN8yM30938OCeI
	 h6oQHUwNiFswBQVIBzCLpzdHByZ6az454STJpKUVg2X1ggE/vQzMty1XnvITcNR+tB
	 8/XC3Na9lqS1Qlf602WYsPsq8NpO9r81zF9ph+dRiXkyenJ4GM9V+m8p15q0JK0C0u
	 awn3pInaCO4L/ezg7XxdWcyeBVuu13d5ESzR3jfTPlqr9l5QfWVfiuXdS9mXw715SZ
	 4a+ZHrPJRpKfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906BBF013FA
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 21:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177369689358.9077.5088576151929839586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e8af04b68155608d2f88053df558b474d83711c61e586ad68ac1b43bd300462
Date: Mon, 16 Mar 2026 21:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773696893
