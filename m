Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F15F1F4E59
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754818194; cv=none; b=CSEKIXPY9NM/UB8zFWnrdMWORIa2miEXplbgURT+RopBIYgzP0CJFlCEi99tKTcj6K5Jfn7ZdVlwDMFdl4CBTlamM/OWJQK0uyMuRnAJ7scWnufb6PCiELO1988JsrTiblYnTEXNbTHHy+Gnuo8hw4eC8n0wocYE0w5/4OsdVWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754818194; c=relaxed/simple;
	bh=x1KVGNqf5OURHk8v4ZNA2JVsXUvWbJQ091jfIvbBya8=;
	h=To:Subject:From:Message-Id:Date; b=l3CWJLiu8GlMFBIedgF4RN/S9em2sdDYzJu7HVtHs77tLRFHr5kCw6qEnBYwa9GSzGzEvur51nFv5mVdwt1EFLK6lRimRJMCQt4wCFtraH9fBz1c3A/QoK8JKoRxeq5lGWkqq2yegAGUQKga7nJqRWDGcw3naBJxhED6R3xB3os=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fkY4bfYD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fkY4bfYD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C07C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754818193;
	bh=x1KVGNqf5OURHk8v4ZNA2JVsXUvWbJQ091jfIvbBya8=;
	h=To:Subject:From:Date:From;
	b=fkY4bfYD2uqYDcqrgE/X4x8WEy07CLZzB4GUUfauEuxNl+2w8z6LcoIZSzbivHuq0
	 ybpD25PcjTHvTQyiZfT38/8sUDbCqV3fq5d4panatHiNx6bDg3s4TljeS2IBA3ZJsK
	 YanrtIfJ1BKlKGnFbOedSQ35TawsnqJax7/78GeK/7mEafRNLTANhKz/iBpTu3qm09
	 B496r17hqsWvO7YSuuGpMZcwVKNyL3Z+M+2cBAgeyu3bOfzl4iR4pE9YvszL13q3PS
	 l3Lf8Xb/kBl6hxAoE4TnMSsJJl/A1Z19dqYDhvZ2rJCeUrTEWgVetyf5pxQcZc1UEA
	 XYEGj5DEbPYuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DB7C87FCF
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175481819357.5995.528483513984743917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd5a8e8b87e776cb64bd245374b7fd85c03f862fc49f4e12c53d1805c280b18c
Date: Sun, 10 Aug 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754818193
