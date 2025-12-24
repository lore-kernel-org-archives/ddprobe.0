Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E31335958
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 02:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766544834; cv=none; b=kdVfLaWF1mPnvlg6t9K6vy6I3UNYOWQEzhThslt1PA9FvUPqJHglco4zEcqJ5xGM4e6a9NsgGA2C/N3UV0clMQymPvcYJjRRyV3g5vBQLo/hi3HwEgNzX94gJouhDO3/xl7u5Sv7VP1Dn+fgRDwmb8JnS+0nyiLjXKkWBl07RJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766544834; c=relaxed/simple;
	bh=AKD+VQPmyoyMYA4qkXXR+ns+0myextsTYHOhfJhLDRs=;
	h=To:Subject:From:Message-Id:Date; b=EDlE7i89DcEaQ2ewm3ON2peINLt/Fnu1JS55V7+kzefPhFZvdmAblqCef2ezVrKLbK7hrqyB6QIcLdqhJvtSu7KBjKyh0q6/l/B9cxMAIQ0G586whGIwDgRaWWhqOOKzuuji0DJqvDPiFKt7J8Xf27PLmxpytAdMobMUFzuXti8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AOcoxJRR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AOcoxJRR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F2FC113D0
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 02:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766544833;
	bh=AKD+VQPmyoyMYA4qkXXR+ns+0myextsTYHOhfJhLDRs=;
	h=To:Subject:From:Date:From;
	b=AOcoxJRRzK3ILBHhDgYcF4QXQub1dMP9H8qs7yCDNoFlwIC+Hqa2JiW9eexUnF5J8
	 gxT3rApVWKlNOoMA/5J8/JwBEKSsw2oyY8c3Y0ZOjl+pFuZPfUEUtFSTXd54YSu7tD
	 s2oIIY2f12zx/9Q9blFDTXxrNJBOwH4RFc7gAZ3eJvR2KjHu5A7jjKBQOqrP7NG3pm
	 btWQg0mjxcXqTC0RvW1o6kjQEPipHmxKk3RbMtP0hVVN6gH/Z+gf843BQJqHBqXZtE
	 I+4tAlV4Z1sYxIknlrPBljDTEZ+IlbAausv6g0L3aVBFPlV4y0wKnHK7g72MSi5u0O
	 5IoVFMYsOayGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92922E74905
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 02:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176654483357.27692.14118164274680069461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ac68caf9698b306bfc61d939eb7d7b9d49c39157da4fea4a0231b2ca67c022f
Date: Wed, 24 Dec 2025 02:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766544833
