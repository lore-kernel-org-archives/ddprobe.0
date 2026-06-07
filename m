Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50BAE28CF4A
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 17:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780852474; cv=none; b=KIPalKRnaPyT92+EtFc0U8Rm53+9LZJp6UpvDOg5xDGdjUaTuHoD/Sv2dmJUt4kiXROndBugj+cZ5HZxsnQPXP3sPga+K4ObxPoLvOXxK4+/5e5ExDzzlHXuv2155ME/s+LMk2LFlmoEl5yNCeITw5ZYK5o4QO+1SdlrNG9/E0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780852474; c=relaxed/simple;
	bh=eWhu0w+VxlFdswYEteJOwgvViv5R2Iu7jreQLl+6pl8=;
	h=To:Subject:From:Message-Id:Date; b=gio4q3Gr0qyRo6GRLLAMU5oQbbg2lc0EzFv30a7whE0wYvC7HQA6jPPjo9ieVJ8mOUS509voWWlEUrDlVMqm27GRFB01G5NVYu1GjzebGxwqWOXb57AtbERO0K+8Z48wk9eqGJLJTY6qE8Qzl6IsYIKe1McytYiqaFyPZknNW7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EzoWgz1d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EzoWgz1d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C861FC2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 17:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780852473;
	bh=eWhu0w+VxlFdswYEteJOwgvViv5R2Iu7jreQLl+6pl8=;
	h=To:Subject:From:Date:From;
	b=EzoWgz1dnMBpA0Vt6yOl9JGMFeiGdVexSNQ/hv8t/583nH3XD8GzNzP7Kq1RXcC61
	 zl8GkmShf4Ahzv2RXdfg55FG51Jrs/ZZl+UCQHiylCOXUxf06ohqaxvKjsTD9DtJEv
	 kbRknago35cJfiW36qhK70FrJxn43wWOdxIqMyM1IH36Ng0w19dxSwIwEPFeEihTuF
	 9t+2+GWUDtBwTSdlAayN9T4+KlwZSjkBTHUMxIgafRCxLjODN9eXvj750064nE2bxH
	 N2QmxbfyxMouirIzX9Bc/Ro/5wHG2+WrDHxNOLjvi7Pp8fS+bc2JHAAz1l2DN70iMV
	 qiyu1iWqL6Riw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD37BCD8C89
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 17:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178085247368.1036.1086282273566209087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 614aba027fc916525ab4cd7fbaa5cc451e16471386b9f6e337772a47b14dcc4f
Date: Sun, 07 Jun 2026 17:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780852473
