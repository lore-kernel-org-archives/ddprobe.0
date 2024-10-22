Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 187151E51D
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729562754; cv=none; b=u7bsBSZFYO9pdd9DSg1P9jWWBgQWBVpnzexHmTcFpGYr1m4CnmZyQfiS24BoxvBKdcuv4n23xoB2uQJdm1iufCOoqJHMjRT6wxrbI3pu+DEBJ3zk1Vsk4zpTcby9OwoUey0Qg+ET2aaIXb9iBnvS/jvuyio8nmfdwOLkYDttXwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729562754; c=relaxed/simple;
	bh=4s02JI7pEXcUrQ5tKoz1aMKsZLX6fLvArSPAfo9T7NI=;
	h=To:Subject:From:Message-Id:Date; b=qrYg4fen/Bl3CUAQREnjEC9DkygO9o/UvKVJdul8mn0vzZYLgBa1t1xYe5LJ8H4TbrGgYcMoqnL/AWF6pt5A60GsqpIDu1PtWr9wsJ/QG9mschmb0dg6KQAWw7e5u9k9HYxVecOaZpreo3ZDO2zEztnMTGhlawut922NlH8W9Ww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DbhZLsh9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DbhZLsh9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB5C0C4CEC3
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729562753;
	bh=4s02JI7pEXcUrQ5tKoz1aMKsZLX6fLvArSPAfo9T7NI=;
	h=To:Subject:From:Date:From;
	b=DbhZLsh9U+Z3fzMHnKOSQZ6g91GzU7iU+YHZhPbXJP8ZDltj6vOHlzYAmTZbxGxH5
	 qcj4dKJQsCeorExqDIKjx290iffYwuodViaBI62uZImprSQK62lK7PdJLWkYgxhMqp
	 4Ukc+OsK1mDGPjugMfN8cZUvxekFmJGgL/mKUdMEF7cah4hcBY3KtMO2PSshp6I7jg
	 cTDGlOA/VdBHMpkoula2hgUFmMU9BMo3wQkqQoYfeIvGUiLuhbzyHzoBNneUBXZoBB
	 Rjy+U128RXZix+3UaX6sfn3kr3Zt4Znbn44MKddyNiXzZ5nMH/uYsBxh0yQ6IDcJD7
	 4R6pzwpUIJTgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9261DD17159
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172956275358.6381.13743882826828738020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cc1fe8dfc64ea89aa75fc4f506c4e616b2c96b1854125dc6288813dc639c9d0
Date: Tue, 22 Oct 2024 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729562753
