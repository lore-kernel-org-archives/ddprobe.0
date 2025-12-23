Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0841527FD62
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 21:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766523834; cv=none; b=bWikPmliP1optxPtgLc9Kh8KJPWyU/4/xrz0WYeKYwvw3d8LRc+Op9c1U44E7Te/jzPlS9g0WtcJPbdRSZZY19JbtwZ10gdBt1qQqyCiQOlYSut5ur3tdR8s70rr2b0D8i8nAbZkVxkrc73/bnISbaxhuQufXu7AjbX05vTULzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766523834; c=relaxed/simple;
	bh=uTIRaNeAX44XCgJfMB135du09yDsyaMjeaUwVN7Yjns=;
	h=To:Subject:From:Message-Id:Date; b=Ws7pMEeWakNsKfMfVTZ++DCyIkXwESN3fXg0YSl0rLwNGK/oDdUiL96AKMGJRJ43HmcCQdFFKNJRo0uWSGE4xoHErhPn5n0o2iN8ITj4bBqtDEUL54P2hNaBwWeFY89XUYwR6MDPCG9YMAK8KqS3IvNvfvNDu7W8pyhT2jiheH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V5hgNp/p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V5hgNp/p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF8AC113D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 21:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766523833;
	bh=uTIRaNeAX44XCgJfMB135du09yDsyaMjeaUwVN7Yjns=;
	h=To:Subject:From:Date:From;
	b=V5hgNp/plrtX1UDimVfz9Tu8WBzVKSpsw2L6A+k3k65wdKh6884SVtFRKOWmsxzis
	 mZ+JOCdMI7mixqNo6sw4jYQvWpQ5Fqu8lSfVL1YSq5qZoqnHNyeVKC8RMk8NBhchQ2
	 PG5M3l5vL8kwXwyLkHWYpZLTC97HcKJAu/sapDYsja/FS1ccoMWBiavUS5Q+f65rE3
	 WfA5PL6Vqml1lqQhZy+L/96QZQqxH5JOi7UbXrMfQWRvqnBDqBwdzAi5b+UtISVB1N
	 qIT2ADzuk9Hmcnn+Oa/pu+DnzxrrX+eR3KbUPJuvkvfQ50G6jwKUd4R3QZzs6wB8Z1
	 /dHsxUCgL3AJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F648E6FE31
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 21:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176652383357.10130.14479518253819384519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80012ddde9fb509ead074bcb975df4e868cc97c65c33f9d9d40db138b6a6d7df
Date: Tue, 23 Dec 2025 21:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766523833
