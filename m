Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5F7A1DE2C9
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 07:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770448434; cv=none; b=f/FG7cal5ltM9t/9FsKV9ZYwvboiEolzqIrimRCba/NDX1h1nT7JJFPc5bGorz7rRzZJ0uB2yfvIaTKMmmxXo/MQpEhYKhbnpEeDklxBRps3g9tDXDoTlyn8rX/NGMxYMDJjs9mSgLvXWkME8eeZASuscASYq6mErwhnow/f/jw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770448434; c=relaxed/simple;
	bh=3GXtvGSInYA+JyUGLT5r2/LB0BZq2d03SAxY94ovT7A=;
	h=To:Subject:From:Message-Id:Date; b=HxVvvDgfKHAF02/H4pGWDgVFEBjoCZEeQKsPI6mtISKfrDIQUwqh+KjT8pTotwF4QkH4ZBerM5QnnXZP0KFnmXlNgW4ONMJAyujQJkyj6s5LIX6lA7KJ1x3dXYR95gugssCYnLmzUux5NxXY0PYurRj/ZYq2jH82kgSD8bQtBig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=euLiOYlR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="euLiOYlR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F05C116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 07:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770448433;
	bh=3GXtvGSInYA+JyUGLT5r2/LB0BZq2d03SAxY94ovT7A=;
	h=To:Subject:From:Date:From;
	b=euLiOYlRg7RFU9i6hHaNbHjpceV5UHlgbIQfkqcc44//5lPlpW0TBTDt7S1FrKdkT
	 Zukmh9+JjECL9lEZ7OY/ySTssjVwUX4fAXhgrMgKHXghEVOfKc39G2Opt00sPxjm3z
	 vsQoYKdTYoZEB0ozOOSC7rOc+vsY7Bq0N13nkj+V1O6rUpXvlXce1XEqefStRfRozH
	 tkMiK0r1zpEFxH5MSoFF6Eee/QGWcPvPL36XWX2Zf6egq9l+18KJE3Ji4hAWonGGL5
	 Ryhw/DTgN5PEaqQ31iMMDRI73wQ+Hv865aNBJNhLnasESwTlN0OqegITgU1U9QiWug
	 6xYL+lIh5Y4AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95089EE6B74
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 07:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177044843358.3278.13979944948712882270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1aa5f173e84eb134d8bd5c86054f6aa532b983d67cc5996b958f328005689c09
Date: Sat, 07 Feb 2026 07:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770448433
