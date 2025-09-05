Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3366F18DB01
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757032794; cv=none; b=SytKTIKQ5NBtqegqPfsbfXyTUw2o/D2ek106krWYwqJbKpCmIA4jh5lzldE7haBHBcGXlaWGsTNDYQyfXHBJBIG246C0yrMhB+mqothH7e1GKKQxxL2cU1Ls7rn0JJWFSjxkzqPMrie99sJvcuFEv5YSka07TCr+S2MXlZ3Fmjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757032794; c=relaxed/simple;
	bh=SQ6rgBhZXwKcE54bn+IYPf7AsTUm624DlM3e/jTIrpk=;
	h=To:Subject:From:Message-Id:Date; b=uyiLUyK1MufqRIBPo+/YbvvOdX4O/uP+aRUDjDNH6NxPgv+ZQLbPAyxzMMlcx253crszaQTiOpjQYbIdmI8h3f515uY4IJiwQuIxNdlzXcWo1MB0EOwDsI17Ex0QlhXwMx0cCZpHVZhqf1bXKKgZAKwx7TeXvPAVbdB+Z1MYDj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DMa6KXtE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DMa6KXtE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A61EAC4CEF0
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757032793;
	bh=SQ6rgBhZXwKcE54bn+IYPf7AsTUm624DlM3e/jTIrpk=;
	h=To:Subject:From:Date:From;
	b=DMa6KXtE7RJfn9P4jYCNn0l9jPbE+lj5H6leUXjYPtGq+f0Zhhuu3Qt5VqjgEIHmN
	 ykcm2sRyfuus+ieciiDIjbkGVXNEAMh2XJAvrb/TlwINLB6ZAtn1CjcFt15pX6EEPu
	 SQSm/IcIOqDmqZB5YEmzi2dBq5ToyY13PYKl3nw6BThdZo8zlCKWmdAKFvL3vhD23y
	 8grV/eo4QK3x76lKO1mffUXnBTdnZmhI8hAZH7j1At5ZNXPj2qcxR2nJ6SW3wCWGHr
	 mu247QbACfqaxCNLCfA3LhiLwCqERlfivN2l1lTEjaD9qIVV2ftAFizSWClgf46J35
	 Dh3Ga34tU3YIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919B9CA1002
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175703279358.32751.12995367162561024932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 417c22cb51bf8255b7f885293681d1097f4bd4e05d75bcc51dbf3bc66ed6ec42
Date: Fri, 05 Sep 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757032793
