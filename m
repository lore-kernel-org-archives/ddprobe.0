Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5162928E8
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742948994; cv=none; b=gY9oGFOM7vfqdXwAHi6gbyQ5M0caT1ve93McCGBCw5cb5oaFJqriEdFB0CZXbBUOq+d1znAc2V9TVzX5NMTkDHRs7w12lONYlBbBdbBIEzGFYF4zWw6bmBu372me2aApOWrwg2HHFqCrUx/FrIuHyJgjGBC8RfiEJb66ZIFFNXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742948994; c=relaxed/simple;
	bh=MWwRJYvyvWoqKj7lhNbCe7/OmYIfMEXvRs8+lBvqSII=;
	h=To:Subject:From:Message-Id:Date; b=KEuTXK1rQ8mqz8OqnBqHWXpVdrgSP4y7s6BzxaCLZqZKSe3UJCuX8CKhTaQ1+Wv+V6D8eY5gUcWRhPBTH7us5VG9jbLm3xzyQlLXQ2tLTPBQpsl4mdqdPkHih//LYrnE6V3QdSpkCd3bjfYR9RQAZ2wl6vbY1VqX2aCafcCh18c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qtkA45yf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qtkA45yf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5FC9C4CEED
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742948993;
	bh=MWwRJYvyvWoqKj7lhNbCe7/OmYIfMEXvRs8+lBvqSII=;
	h=To:Subject:From:Date:From;
	b=qtkA45yfp3SjiOxK+BzIZDjmyDHbH+7fHo1X8peNid3H8BHG03RhFNKZFf3HXHMej
	 08uEbOpSDMGTw0N1EURyDLlCPgIVr8Z4NM2vCzaZc3QF/bw0LzdqO/cV1wzPye7qVL
	 boO+sUfTepNkXYcJj56I9wZJEAkggB+Y+to95IYbSnBDI2r4PRnQYQ9Qai4v2hMUQ/
	 PvMNvONcF7nPNljKTwbMqBALQNJc3CzIuyAOnvgFdNeqUlw6C3DzSWIhYEQJq5uzFT
	 nflBXVTaWmbh6womXSFRm+WdrX+lqBIfkO8Sh4p6Wjm1zuBk7y1HF6PdGatMeKwMJJ
	 3MDMsr02tN9xA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A0C9C36005
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174294899362.32344.7614805191257618050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9fb30173b7973e6046e7f2a00e1f2af87036b0844a59513b40fb5e61d7cdd3e
Date: Wed, 26 Mar 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742948993
